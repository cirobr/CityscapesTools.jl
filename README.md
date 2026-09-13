![alt text](https://github.com/cirobr/TinyMachines.jl/blob/main/images/logo-name-tm.png?raw=true)

# CityscapesTools

[![Build Status](https://github.com/cirobr/CityscapesTools.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/cirobr/CityscapesTools.jl/actions/workflows/CI.yml?query=branch%3Amain)

Toolset for handling Cityscapes dataset

Home page: https://www.cityscapes-dataset.com/


### Usage

```
using CityscapesTools

classnumber2classname(15)      # should give "bus"
classname2classnumber("bus")   # should give "15"

mapping_20[7]                  # should give "0"

encode_labels(mask)            # maps the classes in mask to 0:18+255 classes; mask is an Int16 array
```
