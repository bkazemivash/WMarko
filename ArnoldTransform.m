function [ out ] = ArnoldTransform( inp, itr )
    [m, n] = size(inp);
    if (m ~= n || ndims(inp) ~= 2)
        error('Input error, the input should be 2D, square matrix!');
    end
    out = zeros(m);
    n = n - 1;
    for j=1:itr
        for y=0:n
            for x=0:n
                p = [ 1 1 ; 1 2 ] * [ x ; y ];
                out(mod(p(2), m)+1, mod(p(1), m)+1) = inp(y+1, x+1);
            end
        end
        inp = out;
    end
end