![alt text](https://github.com/cirobr/TinyMachines.jl/blob/main/images/logo-name-tm.png?raw=true)

# CityscapesTools

[![Build Status](https://github.com/cirobr/CityscapesTools.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/cirobr/CityscapesTools.jl/actions/workflows/CI.yml?query=branch%3Amain)

Toolset for handling Cityscapes dataset

Home page: https://www.cityscapes-dataset.com/


### Usage

```
using CityscapesTools; cst=CityscapesTools

cst.classnumber2classname(15)      # should give "bus"
cst.classname2classnumber("bus")   # should give "15"

cst.mapping_20[7]                  # should give "0"
cst.mapping_20[8]                  # should give "1"
cst.mapping_20[1]                  # should give "255"

cst.encode_labels(mask)            # maps the classes in "mask" to 0:18+255 classes; "mask" is an Int16 array
```
