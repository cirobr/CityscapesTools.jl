using CityscapesTools; cst=CityscapesTools
using Test

@testset "CityscapesTools.jl" begin
    @test cst.classnumber2classname(0) == "road"      # 0 is NOT background
    @test cst.classname2classnumber("road") == 0      # 0 is NOT background
    @test cst.classnumber2classname(255) == "void"
    @test cst.classname2classnumber("void") == 255
    @test cst.classnumber2classname(15) == "bus"
    @test cst.classname2classnumber("bus") == 15
    @test cst.classnumber2classname(6) == "traffic light"
    @test cst.classname2classnumber("traffic light") == 6

    @test cst.mapping_20[0] == 255
    @test cst.mapping_20[7] == 0
    @test cst.mapping_20[-1] == 0
end
