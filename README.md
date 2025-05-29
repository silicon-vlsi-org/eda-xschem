# XSCHEM SCHEMATIC EDITOR 
### Current distribution version 3.4.8.0
Precompiled for **64b 24.04 Ubuntu and Ubuntu-based Linux**. It's tested on a Ubuntu 24.04 on AWS Lightsail. If you are interested in compiling from the source, instructions in [ADMIN.md:Compiling and Installing](ADMIN.md) should help.

[Xschem] is a schematic capture program, it allows creation of hierarchical representation of circuits with a top down approach . A VHDL or Verilog or Spice netlist can be generated from the drawn schematic, allowing the simulation of the circuit. Key feature of the program is its drawing engine written in C and using directly the Xlib drawing primitives; this gives very good speed performance, even on very big circuits. The user interface is built with the Tcl-Tk toolkit, tcl is also the extension language used. Allows launching [NGSpice] from the schematic editor. Easy to create new symbols with netlist property. 

## Downloading & Setting Up XSchem

- Change directory ```cd``` to install directory <INSTALL_DIR> e.g. ```/home/user/cad```
- To download from the ```git``` repository:
  - ```git clone https://github.com/silicon-vlsi-org/eda-xschem```
- Change directory to the installed directory eg. ```cd eda-xschem```
- Checkout the desired version: ```git checkout v3.4.8.0```
  - To make sure you are on the right version type ```git branch``` and your output should have a line like this :
  - ```* (HEAD detached at v3.4.8.0)```

- Add the following environment variables in your `~/.bashrc` (**NOTE**: The path below is an example, make sure it matches your particular path) 

```bash

export XSCHEM_HOME=$HOME/cad/eda-xschem/glnxa64
export XSCHEM_SHAREDIR=$XSCHEM_HOME/share/xschem
export PATH=$PATH:$XSCHEM_HOME/bin

```


## Quick Start Guide
- User Manual/Tutorials: [ [PDF](doc/XSCHEM_2.9.2_Manual_Tutorials.pdf) | [HTML](glnxa64/share/doc/xschem/index.html) | [MAN](glnxa64/share/man/man1/xschem.1)]
- [Analog simulation with xschem and the skywater 130nm Process Development Kit (PDK)](https://www.youtube.com/watch?v=bYbkz8FXnsQ): YouTube tutorial by Stephan
- Create a file `xschemrc` in the work directory (say `~/work/xschem`) with the following `tcl` initilizations:

```tcl
set PDK_ROOT "$env(HOME)/share/pdk/"  ;# Default open_pdks location
set PDK "sky130A"
append XSCHEM_LIBRARY_PATH ":${PDK_ROOT}/${PDK}/libs.tech/xschem"
source $PDK_ROOT/$PDK/libs.tech/xschem/xschemrc
```
**NOTE** The above content is in the file `xschemrc` in this repo 

- Start `xschem` from the work directory
- xschem should start with a SKY130 schematic with the lots of examples and working schematic.
- Choose a test circuit eg. `test_inv`
- Generate a netlist by clicking the `Netlist` button.
- The netlist is created in the default driectory `~/.xschem/simulations`
- If you are using the SKY130 PDK, create `~/.xschem/simulations/.spiceinit` with the following content to speed up the simulation:

```tcl
set ngbehavior=hsa
set ng_nomodcheck
```
**NOTE** The above content is in the file `spicinit` in this repo

## Release History

- **v3.4.8.0**
  - *xschem v3.4.8*  on 05/16/2025
  - Compiled for **Ubuntu 24.04**
  - This version is minimum requirement for SKY130 PDK integration
- **v2.9.9.0**
  - *xschem v2.9.9*  on 06/17/2021
  - Compiled for **Ubuntu 18.04**


* * *

[OpenRAM]:              https://openram.soe.ucsc.edu/
[OpenRAMgit]:           https://github.com/VLSIDA/OpenRAM 
[OpenRAMpaper]:         https://ieeexplore.ieee.org/document/7827670/
[SCMOS]:                https://www.mosis.com/files/scmos/scmos.pdf
[NGSpice]:              http://ngspice.sourceforge.net
[NGSpiceMan]:           http://ngspice.sourceforge.net/docs/ngspice-html-manual/manual.xhtml
[Magic]:                http://opencircuitdesign.com/magic/
[Netgen]:               http://opencircuitdesign.com/netgen/
[Xschem]:		http://repo.hu/projects/xschem/index.html
