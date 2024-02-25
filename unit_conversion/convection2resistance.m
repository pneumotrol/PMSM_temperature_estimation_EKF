% A: m^2
% k: W/(m^2*K)
function resistance = convection2resistance(A,k)
    resistance = 1/(k*A);
end
