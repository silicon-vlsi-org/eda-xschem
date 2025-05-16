# ADMIN
This documentation is NOT for users, only if you are interested to compile, install and manage releases as done in this repo.

## Compiling and Installing 

**SETTING UP LINUX FOR COMPILE**

- Prepare for building netgen. 
- Base dev pkgs if not already installed ```sudo apt install build-essential linux-headers-‘uname -r‘```
- Some required packages if not already installed: ```tcl/tk8.6, tcl/tk8.6-dev, gawk/mawk, libx11-dev, libxpm-dev, bison, flex, libcairo2-dev.```

**USING SOURCE FROM GIT REPO**

- [Official install intructions](https://xschem.sourceforge.io/stefan/xschem_man/install_xschem.html)
- `git clone https://github.com/StefanSchippers/xschem.git xschem-src`
- Configure: To see all configure options `./configure --help`. To install in root with all default options just type `./configure`
- To install it in a user directory for eg. in `$HOME/eda-bins/xscheme`: 
```bash 
./configure --prefix=$HOME/eda-bins/xschem
```
- Make and install:
```bash
make
make install
```
- On successful compilation, the new compiled binaries/libs/should be in the target directory eg. ```$HOME/eda-bins/xshem```
  
- Set the PATH as shown in [README.md](README.md)


**CREATING A NEW RELEASE**

Check out this [doc](https://docs.github.com/en/github/administering-a-repository/releasing-projects-on-github/managing-releases-in-a-repository) in docs.github.com on how to create and manage releases.
  
- Check out the difference between the previous and current version: eg.
```bash
  diff -qr <CURRENT> <COMPILED>
```
- Copy only the differences to the git repo, `add`, `commit` and `push` to the `github`.
  - **IMPORTANT** Make sure you backup the previous binaries in case you need it.
- Navigate to the main repo page eg. github.com/silicon-vlsi-org/eda-xschem
- To the right of the list of files, click **Create a new release** under the **Release** section.
- Tag the release version eg. ```v3.4.8```
  - The major release ```v3.4.8.0``` reflects the version of xschem.
  - The minor release ```vx.x.0``` reflects any changes done locally eg. examples, docs, etc.
- Do not add any binaries and do not select pre-release.
- Publish the release. 
- Now users can checkout this version eg. ```git checkout v3.4.8.0```
  
## Tasks
- [ ] 


[OpenRAM]:              https://openram.soe.ucsc.edu/
[OpenRAMgit]:           https://github.com/VLSIDA/OpenRAM 
[OpenRAMpaper]:         https://ieeexplore.ieee.org/document/7827670/
[SCMOS]:                https://www.mosis.com/files/scmos/scmos.pdf
[NGSpice]:              http://ngspice.sourceforge.net
[NGSpiceMan]:           http://ngspice.sourceforge.net/docs/ngspice-html-manual/manual.xhtml
[Magic]:                http://opencircuitdesign.com/magic/
[Netgen]:               http://opencircuitdesign.com/netgen/


