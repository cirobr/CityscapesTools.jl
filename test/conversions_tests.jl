@test cst.classnumber2classname(6) == "traffic light"
@test cst.classnumber2classname(15) == "bus"
@test cst.classnumber2classname(30) == "void"  # 30 is not a valid class

@test cst.classname2classnumber("traffic light") == 6
@test cst.classname2classnumber("bus") == 15
@test cst.classname2classnumber("unknown") == 255  # "unknown" is not a valid class

@test cst.mapping_20[0] == 255
@test cst.mapping_20[7] == 0
@test cst.mapping_20[-1] == 0