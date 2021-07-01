# XSCHEM SCHEMATIC EDITOR 
### Current distribution version 2.9.9.0
Precompiled for **64b 18.04 Ubuntu and Ubuntu-based Linux**. It's also tested on a light-weight Ubuntu-variant LXLE distro. If you are interested in compiling from the source, instructions in [ADMIN.md:Compiling and Installing](ADMIN.md) should help.

[Xschem] is a schematic capture program, it allows creation of hierarchical representation of circuits with a top down approach . A VHDL or Verilog or Spice netlist can be generated from the drawn schematic, allowing the simulation of the circuit. Key feature of the program is its drawing engine written in C and using directly the Xlib drawing primitives; this gives very good speed performance, even on very big circuits. The user interface is built with the Tcl-Tk toolkit, tcl is also the extension language used. Allows launching [NGSpice] from the schematic editor. Easy to create new symbols with netlist property. 

## Table of Content
- [Downloading & Setting Up XSchem](#downloading-&-setting-up-xschem)
- [Quick Start Guide](#quick-start-guide)


## Downloading & Setting Up XSchem

- Change directory ```cd``` to install directory <INSTALL_DIR> e.g. ```/home/user/cad```
- To download from the ```git``` repository:
  - ```git clone https://github.com/silicon-vlsi-org/eda-xschem```
- Change directory to the installed directory eg. ```cd eda-xschem```
- Checkout the desired version: ```git checkout v2.9.9.0```
  - To make sure you are on the right version type ```git branch``` and your output should have a line like this :
  - ```* (HEAD detached at v2.9.9.0)```

- Add the following environment variables in your `~/.bashrc` (**NOTE**: The path below is an example, make sure it matches your particular path) 

```bash
export PATH=$PATH:<INSTALL_DIR>/eda-xschem/glnxa64/bin
```


## Quick Start Guide
- User Manual/Tutorials: [ [PDF](doc/XSCHEM_2.9.2_Manual_Tutorials.pdf) | [HTML](glnxa64/share/doc/xschem/index.html) | [MAN](glnxa64/share/man/man1/xschem.1) ]


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
