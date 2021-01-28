using AdditionalUnits
using Test
using Unitful: Unitful, @u_str, J, W, hr

@testset "AdditionalUnits.jl" begin
    @testset "Power Related Unit" begin 
        @test 1u"Wh" == 1u"W*hr"
    end 
end
