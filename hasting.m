function y = hasting()
    u = rand;
    xn = 0;
    xnp1 = 1;
    while abs(xnp1 - xn) > 0.0000001
        xn = xnp1;
        xnp1 = xn - (cdf_hasting(xn) - u) / normpdf(xn, 0, 1);
    end
    y = xnp1;
end