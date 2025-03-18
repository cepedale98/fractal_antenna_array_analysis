function AF = get_AF(Qn, In, dl, samples, phi0)
    if nargin < 5
        phi0 = pi/2; % Set phi0 to pi/2 if not provided
    end

    theta0 = deg2rad(0);
    theta = linspace(0, pi, samples);
    k = 2 * pi * dl;

    AF = zeros(1, samples);
    Qx = real(Qn);
    Qy = imag(Qn);

    cosThetaMinusTheta0 = cos(theta - theta0);
    phase = k * (Qx.' * (cosThetaMinusTheta0 * cos(phi0)) + ...
                 Qy.' * (cosThetaMinusTheta0 * sin(phi0)));

    AF = sum(In.' .* exp(1i * phase), 1);

    AF = abs(AF);
    AF = AF / max(AF);
end
