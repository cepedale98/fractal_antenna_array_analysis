function positions = get_positions(N, M, d)
    % Initialize the positions array
    positions = zeros(N, M);
    % Generate positions
    for i = 1:N
        for j = 1:M
            % conversion to gaussian complex plane
            positions(i, j) = (i-1) * d + 1i * (j-1) * d;
        end
    end
    positions = positions';
end
