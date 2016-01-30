% marsaglia-bray
function z1 = Marsaglia_Bray()
    x = 1.1;
    while ( x > 1 )
        u1 = 2 * rand - 1;
        u2 = 2 * rand - 1;
        x = u1 * u1 + u2 * u2;
    end
    y = sqrt(-2 * log(x) / x);    
    z1 = u1 * y;
    z2 = u2 * y;
end