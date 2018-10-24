using WAV, DSP.Windows, PyPlot

const TEST_DIR = "resources/test_set/"

samples, fs = wavread(TEST_DIR * "amazing_grace.wav")

triangle = DSP.Windows.hanning(length(samples))

trans = conv(vec(samples), triangle)

plot(0:1/fs:(length(trans)-1)/fs, trans)
xlabel("Time [s]")

