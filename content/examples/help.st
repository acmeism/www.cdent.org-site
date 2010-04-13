^^ The `cdent --help` command

Here is the output from typing `cdent --help` at the command line:

.pre
> cdent --help
Usage: 

  'cdent' is the compiler for the C'Dent portable module programming language.

        command line usage:  cdent [options]

Options:
  -h, --help          show this help message and exit
  --compile           compile from input format to output format (required)
  --in=IN             input file -- default is stdin
  --out=OUT           output file -- default is stdout
  --from=FROM         input format -- autodetected from input file name
  --to=TO             output format -- autodetected from output file name
  --emit-info=0|1     emit info header & trailer -- defaults listed below
  --emit-header=0|1   emit info header -- default is on
  --emit-trailer=0|1  emit info trailer -- default is off
  --debug=0|1         print compilation debugging info -- default is off
  --version           print cdent version
> cdent --version

  The C'Dent portable module programming language.

  Copyright (c) 2010, Ingy dot Net
  
  Version 0.01

> 
.pre
