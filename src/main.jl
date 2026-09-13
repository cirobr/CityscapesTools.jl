"""
Mapping of Cityscapes labels to 20 classes.

The mapping is based on the Cityscapes dataset's official label IDs, 
    where certain labels are ignored (mapped to 255) and others are mapped to a range of 0-18
    for the 19 classes plus an additional class for unlabelled/void.

The -1 key is used to map any negative values in the mask to 0, 
    which can be useful for handling invalid or missing data in the input mask.
"""
const mapping_20 = Dict(
    0 => 255,  # void
    1 => 255,
    2 => 255,
    3 => 255,
    4 => 255,
    5 => 255,
    6 => 255,
    7 => 0,    # road
    8 => 1,    # sidewalk
    9 => 255,
    10 => 255,
    11 => 2,   # building
    12 => 3,   # wall
    13 => 4,   # fence
    14 => 255,
    15 => 255,
    16 => 255,
    17 => 5,    # pole
    18 => 255,
    19 => 6,    # traffic light
    20 => 7,    # traffic sign
    21 => 8,    # vegetation
    22 => 9,    # terrain
    23 => 10,   # sky
    24 => 11,   # person
    25 => 12,   # rider
    26 => 13,   # car
    27 => 14,   # truck
    28 => 15,   # bus
    29 => 255,
    30 => 255,
    31 => 16,   # train
    32 => 17,   # motorcycle
    33 => 18,   # bicycle
    -1 => 0
)

"""
Function to encode the labels of a given mask using the mapping defined above.
"""
function encode_labels(mask::AbstractArray{Int16})
    label_mask = fill(0, size(mask))
    for (k, v) in mapping_20
        label_mask[mask .== k] .= v
    end
    return label_mask
end


class_numbers = vcat(0:18, 255)

class_names = [
    "road",            # 0
    "sidewalk",        # 1
    "building",        # 2
    "wall",            # 3
    "fence",           # 4
    "pole",            # 5
    "traffic light",   # 6
    "traffic sign",    # 7
    "vegetation",      # 8
    "terrain",         # 9
    "sky",             # 10
    "person",          # 11
    "rider",           # 12
    "car",             # 13
    "truck",           # 14
    "bus",             # 15
    "train",           # 16
    "motorcycle",      # 17
    "bicycle",         # 18
    "void",            # 255
]

dict_numbers = Dict(zip(class_numbers, class_names))
classnumbers = OrderedDict( sort(collect(dict_numbers)) )
function classnumber2classname(class::Int)
    return get(classnumbers, class, "void")
end

dict_names = Dict(zip(class_names, class_numbers))
classnames = OrderedDict( sort(collect(dict_names)) )
function classname2classnumber(name::String)
    return get(classnames, name, 255)   # 255 is void class
end
