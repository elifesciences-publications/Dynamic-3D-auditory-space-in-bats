

%% ANALYSIS AND PLOT COMPARISON OF SPATIAL TUNING WIDTH FOR RANGE TUNING ACROSS SSG AND nonSSG SPIKES
   

    fh3 = figure;

    load('Elife_Fig5E_ssg_RT_sharpening.mat', 'batA_sig_ssg_var', 'batA_sig_nonssg_var', 'batA_nonsig_ssg_var', 'batA_nonsig_nonssg_var', ...
                            'batB_sig_ssg_var', 'batB_sig_nonssg_var', 'batB_nonsig_ssg_var', 'batB_nonsig_nonssg_var');


        ssg_var = batA_sig_ssg_var;
        nonssg_var = batA_sig_nonssg_var;
        
        plot(ssg_var, nonssg_var, '.', 'color', [0.4118    0.7412    0.2706], 'markersize', 20); hold on;

        ssg_var = batA_nonsig_ssg_var;
        nonssg_var = batA_nonsig_nonssg_var;
        
        plot(ssg_var, nonssg_var, 'o', 'color', [0.4118    0.7412    0.2706], 'markersize', 5); hold on;
        
        ssg_var = batB_sig_ssg_var;
        nonssg_var = batB_sig_nonssg_var;
        
        plot(ssg_var, nonssg_var, '.', 'color', [0.5451    0.2706    0.0745], 'markersize', 20); hold on;

        ssg_var = batB_nonsig_ssg_var;
        nonssg_var = batB_nonsig_nonssg_var;
        
        plot(ssg_var, nonssg_var, 'o', 'color', [0.5451    0.2706    0.0745], 'markersize', 5); hold on;

    xlim([0 1.2]); ylim([0 1.2]);
    h = line([0 2], [0, 2], 'color', 'k');
    h.LineStyle = '--';
    legend('Bat 1 (significant sharpening)', 'Bat 1 (not significant)', 'Bat 2 (significant sharpening)', 'Bat 2 (not significant)', 'location', 'southeast');
    xlabel('Spatial tuning width (s.d.) Sonar Sound Groups');
    ylabel('Spatial tuning width (s.d.) Non Sonar Sound Groups');

    box off
