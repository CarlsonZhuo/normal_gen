function z = my_method()
    c = 1.4;
    keep_trying = 1;

    while keep_trying
        x = d_exp();

        % Evaluate g(x)
        if x > 0
            gx = 0.5 * exp(-x);
        else
            gx = 0.5 * exp(x);
        end

        % Evaluate f(x)
        fx = normpdf(x);

        if rand < fx / (c*gx)
            keep_trying = 0;
    end
    z = x;
end