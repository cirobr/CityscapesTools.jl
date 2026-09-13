@test classnumber2classname(6) == "traffic light"
@test classnumber2classname(15) == "bus"
@test classnumber2classname(30) == "void"  # 30 is not a valid class

@test classname2classnumber("traffic light") == 6
@test classname2classnumber("bus") == 15
@test classname2classnumber("unknown") == 255  # "unknown" is not a valid class

@test mapping_20[0] == 255
@test mapping_20[7] == 0
@test mapping_20[-1] == 0