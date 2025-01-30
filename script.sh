#!/bin/bash

# Verifique se os argumentos foram fornecidos
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_port> <output_port>"
    exit 1
fi

# Atribua os argumentos às variáveis
INPUT_PORT=$1
OUTPUT_PORT=$2

# Execute a pipeline GStreamer
#gst-launch-1.0 srtserversrc keep-listening=true uri=srt://:$INPUT_PORT ! tee name=t ! queue ! srtsink uri=srt://:$OUTPUT_PORT t. ! fakesink
gst-launch-1.0 videotestsrc ! videoconvert ! x264enc ! mpegtsmux ! srtserversink uri=srt://:10000