# Recipes for building Iris in anaconda

You can use my binstar channel which should have linux64 binaries:

```
conda install -c nbren12 iris
```

Or clone this repo and build manually using `conda build`.

Afterwards, if `libudunits2.so` is not installed systemwide, you will need to tell it where to find its XML file. You can do this using an environmental variable `export UDUNITS2_XML_PATH=<PREFIX>/share/udunits/udunits2.xml`
