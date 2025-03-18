function [bw_value, bw_spacing] = get_bandwidth(SLLs, spacing, limit, SLL_limit)
    n = length(SLLs);
    max_length = 0;
    current_length = 0;
    max_start = 1;    
    for i = 2:n
        if SLLs(i) <= SLL_limit
            if abs(SLLs(i) - SLLs(i-1)) <= limit
                current_length = current_length + 1;
                if current_length > max_length
                    max_length = current_length;
                    max_start = i - current_length;
                end
            else
                current_length = 0;
            end
        else
            current_length = 0;
        end
    end
    bw_value = max_length + 1;
    bw_spacing = spacing(max_start+max_length) - spacing(max_start) + spacing(2) - spacing(1);
end
