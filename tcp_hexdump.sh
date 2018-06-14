#!/bin/bash

# Stolen (with permission) from https://github.com/emilypi/entropy
# From their README:
#   "To make this more cryptograpically secure,
#    a CSPRNG such as Salsa or ChaCha should scramble 
#    the packet data prior to outputting the stream."
#
# On Mac OS X you will need sudo for this command.

tcpdump -KnOSx -vvv -i en0 | hexdump -x
