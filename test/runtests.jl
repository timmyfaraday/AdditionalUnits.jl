using AdditionalUnits
using Test
using Unitful: Unitful, @u_str, J, W, hr

@testset "AdditionalUnits.jl" begin
    @testset "Power Related Unit" begin 
        @test 1u"Wh" == 1u"W*hr"
        @test 1u"varh" == 1u"var*hr"
    end 
end
