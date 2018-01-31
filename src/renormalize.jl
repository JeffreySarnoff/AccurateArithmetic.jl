"""
    fast_two_sum(a, b)


a ⊕ b == ab ⊕ ε &nbsp; and &nbsp; ab + ε == ab
"""
function fast_two_sum(a::T, b::T) where T<:Real
     @confirm abs(a) > abs(b)
     
     ab = a + b
     ε  = (a - ab) + b
     return ab, ε 
end

function two_sum(a::T, b::T) where T<:Real
    ab =  a + b
    B  = ab - a
    ε  = (a - (ab - B)) + (b - B)
    return ab, ε
end

function two_prod(a::T, b::T) where T<:Real
    ab =  a * b
    ε  = fma(a, b, -ab)
    return ab, ε
end




function renorm_inorder(a::T, b::T) where T<:Real
     @confirm abs(a) > abs(b)
     
     ab = a + b
     ε  = (a - ab) + b
     return ab, ε 
end

function renorm(a::T, b::T) where T<:Real
    ab =  a + b
    B  = ab - a
    ε  = (a - (ab - B)) + (b - B)
    return ab, ε
end

function renorm_inorder(a::T, b::T, c::T) where T<:Real
    @confirm abs(a) > abs(b) > abs(c)
     
    ab =  a + b
    B  = ab - a
    ε  = (a - (ab - B)) + (b - B)
    return ab, ε
end
