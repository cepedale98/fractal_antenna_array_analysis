% Function to generate Eisenstein integer positions
function positions = get_eisenstein_positions(N, M, d)
    positions = zeros(N, M);
    for i = 1:N
        for j = 1:M
            % conversion to eisenstein complex plane
            x = (i - 1) * sqrt(3) * d;
            y = (j - 1) * sqrt(3) * d;
            if mod(i, 2) == 0
                y = y + sqrt(3) * d / 2;
            end
            positions(i, j) = x + 1i * y;
        end
    end
    positions = positions';
end