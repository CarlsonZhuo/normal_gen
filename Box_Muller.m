
function val1 = Box_Muller()
    U1 = rand;
    U2 = rand;
    val1 = sqrt(-2 * log(U1)) .* sin(2 * pi * U2);
    val2 = sqrt(-2 * log(U1)) .* cos(2 * pi * U2);
end