

%% ANALYSIS AND PLOT COMPARISON OF MEAN SPATIAL TUNING FOR RANGE TUNING ACROSS SSG AND nonSSG SPIKES
   

    fh3 = figure;

    load('Elife_Fig5F_ssg_RT_shifting.mat', 'batA_sig_ssg_mean', 'batA_sig_nonssg_mean', 'batA_nonsig_ssg_mean', 'batA_nonsig_nonssg_mean', ...
                            'batB_sig_ssg_mean', 'batB_sig_nonssg_mean', 'batB_nonsig_ssg_mean', 'batB_nonsig_nonssg_mean');

        ssg_mean = batA_sig_ssg_mean;
        nonssg_mean = batA_sig_nonssg_mean;
        
        plot(ssg_mean, nonssg_mean, '.', 'color', [0.4118    0.7412    0.2706], 'markersize', 20); hold on;

        ssg_mean = batA_nonsig_ssg_mean;
        nonssg_mean = batA_nonsig_nonssg_mean;
        
        plot(ssg_mean, nonssg_mean, 'o', 'color', [0.4118    0.7412    0.2706], 'markersize', 5); hold on;

        ssg_mean = batB_sig_ssg_mean;
        nonssg_mean = batB_sig_nonssg_mean;
        
        plot(ssg_mean, nonssg_mean, '.', 'color', [0.5451    0.2706    0.0745], 'markersize', 20); hold on;

        ssg_mean = batB_nonsig_ssg_mean;
        nonssg_mean = batB_nonsig_nonssg_mean;
        
        plot(ssg_mean, nonssg_mean, 'o', 'color', [0.5451    0.2706    0.0745], 'markersize', 5); hold on;

    xlim([0 2.7]); ylim([0 2.7]);
    h = line([0 2.7], [0, 2.7], 'color', 'k');
    h.LineStyle = '--';
    legend('Bat 1 (significant shifting)', 'Bat 1 (not significant)', 'Bat 2 (significant shifting)', 'Bat 2 (not significant)', 'location', 'southeast');
    xlabel('Peak distance tuning (m) Sonar sound groups');
    ylabel('Peak distance tuning (m) Non sonar sound groups');
    box off
