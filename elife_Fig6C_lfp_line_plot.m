
    load('Elife_Fig6C_lfp_line_plot.mat', 'nonssg_pgram_pow_arr', 'ssg_pgram_pow_arr');
    
    %% PLOT LINE CHANGE PLOT - yaxis gamma power, xaxis - columns nonSSG and SSG. 

        figure('units', 'normalized', 'outerposition', [1/3, 0, 1/3, 1]);
        
        for jjjj = 1:length(nonssg_pgram_pow_arr)
            line([zeros(length(nonssg_pgram_pow_arr(jjjj)), 1), ones(length(nonssg_pgram_pow_arr(jjjj)), 1)]', [nonssg_pgram_pow_arr(jjjj)', ssg_pgram_pow_arr(jjjj)']', 'color', 'r'); hold on;
            plot(zeros(length(nonssg_pgram_pow_arr(jjjj)), 1), nonssg_pgram_pow_arr(jjjj), 'b.', 'markersize', 20);
            plot(ones(length(ssg_pgram_pow_arr(jjjj)), 1), ssg_pgram_pow_arr(jjjj), 'r.', 'markersize', 20);
%             text(ones(length(ssg_pgram_pow_arr(jjjj)), 1), ssg_pgram_pow_arr(jjjj), ['U-', num2str(units_of_interest_arr(jjjj))]);
            
        end
        xlim([-0.25, 1.25]);
        set(gca, 'XTick', []);
        text(-0.1, -0.1, 'nonSSG', 'color', [0 0 1]);
        text(0.95, -0.1, 'SSG', 'color', [1 0 0]);
        
        ylabel('\gamma power (\mu V^{2})');
        
%         ylim([0 5e-5]);
    
    box 'off'

    % Perform Rank Sum Test - Comparing the SSG and nonSSG gamma power
    [P,H,STATS] = ranksum(ssg_pgram_pow_arr, nonssg_pgram_pow_arr)
    
