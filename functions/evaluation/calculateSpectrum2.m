function [SLLs,bandwidth] = calculateSpectrum2(Arraydata,range)
    samples = 720;

    for i = 1:length(range)
        spacing = range(i);
        [~, SLL, ~] = evaluate(Arraydata, samples, spacing);
        SLLs(i) = SLL;
    end
    SLLs = mag2db(SLLs);
    [~, bandwidth] = get_bandwidth(SLLs, range, 0.4, -10); 
end
