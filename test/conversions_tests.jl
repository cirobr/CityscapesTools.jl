@test classnumber2classname(15) == "bus"
@test classnumber2classname(30) == "void"  # 30 is not a valid class

@test classname2classnumber("bus") == 15
@test classname2classnumber("unknown") == 255  # "unknown" is not a valid class
