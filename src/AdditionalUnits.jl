module AdditionalUnits

# using pkgs
using Unitful

# pkg constants
const _UF = Unitful

# dimensions
@dimension          𝐂           "𝐂"         Currency

# units
## currency
@refunit            €           "€"         Euro        𝐂           true
## electricity
@unit               VA          "VA"        VoltAmpere  1.0u"W"     true
@unit               Wh          "Wh"        WattHour    3600.0u"J"  true
## mass     
@unit               ton         "ton"       Ton         1000.0u"kg" true

# init function to make this work at run-time
const localunits = _UF.basefactors
const localpromotion = _UF.promotion
function __init__()
    merge!(_UF.basefactors, localunits)
    merge!(_UF.promotion, localpromotion)
    _UF.register(AdditionalUnits)
end

end
