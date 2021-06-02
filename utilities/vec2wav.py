#!/usr/bin/env python3

from  argparse import ArgumentParser
from re import split
from struct import pack
from wave import open as wave_open

SAMPLING_RATE = 44100

def parse_output(spice_output):
    """
    parses ngspice output. 
    use `wrdata <filename> v(<pin>)` command to generate right output
    """

    times = []
    voltages = []

    with open(spice_output, 'r') as output:
        for line in output:
            if line:
                row= split('\s+', line.strip())
                times.append(float(row[0]))
                voltages.append(float(row[1]))

    return times, voltages


def lin_interp(x0, x1, y0, y1, x):

    x0= float(x0)
    x1= float(x1)
    y0= float(y0)
    y1= float(y1)
    x= float(x)

    return y0 + (x - x0) * (y1 - y0) / (x1 - x0)


def write_wav(times, voltages, filename, clipping):

    with wave_open(filename, 'w') as fh:

        fh.setparams((1, 2, SAMPLING_RATE, 0, 'NONE', 'not compressed'))
        max_voltage= max(max(voltages), -min(voltages))
        vrange= clipping if clipping else max_voltage

        values= bytes([])
        t= 0.0
        step= 1.0 / SAMPLING_RATE

        for i in range(len(voltages)-1):

            while times[i] <= t * step < times[i+1]:

                sample= lin_interp(
                    times[i],
                    times[i+1],
                    voltages[i],
                    voltages[i+1], t*step
                ) / vrange

                sample= 1 if sample >1 else sample
                sample= -1 if sample <-1 else sample
                value= pack('<h',int(32767 * sample))

                values += value
                t += 1

        fh.writeframes(values)


if __name__ == "__main__":

    parser= ArgumentParser()

    parser.add_argument(
        "spice_output",
        help="Specify file with spice output"
    )

    parser.add_argument(
        "wav_file",
        help="Specify filename for wav data"
    )

    parser.add_argument(
        "--clipping", 
        dest='clipping',
        default=0, type=float
    )

    args= parser.parse_args()

    times, voltages = parse_output(args.spice_output)

    write_wav(times, voltages, args.wav_file, args.clipping)
