% A: m^2
% D: m
% k: W/(m*K)
function resistance = conduction2resistance(A,D,k)
    resistance = D/(k*A);
end
