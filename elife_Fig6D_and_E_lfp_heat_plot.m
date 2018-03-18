%% ABOUT CODE - elife_ssg_rt_lfp_power_anal.m

%% REFERENCE NOTES
% Refer to Kothari et al., Dynamic representation of 3D auditory space in the midbrain of the free-flying echolocating bat

%% CODE FIXES
%   Date                Author                  Description
% 03/11/2018        Ninad B. Kothari            Code created


%% CODE


% LOAD DATA
% cd 'D:\Dropbox\sc_flight_paper\eLife\reviews\elife_revision\eLife_revision_figures\Figure_6\data';
load('Elife_Fig6D_and_6F_heat_plot.mat', 'nonssg_ch_pow_mat_sm', 'ssg_ch_pow_mat_sm');

%% %%%%%%%%%%%%%%
%% PLOT DATA %%%%
%%%%%%%%%%%%%%%%%
    dt = -20:1/40:50;
    ch = 1:1:26;
    
    % plot imagesc
    clim = [0 1];
    figure; 
    subplot(121); colormap('jet');
    imagesc(dt,ch,flipud(nonssg_ch_pow_mat_sm), clim); hold on;
    axis square
    set(gca', 'YDir', 'normal');
    line([-20, 50], [14.5,14.5], 'color', [1 1 1], 'linewidth', 2);
    line([0, 0], [1,26], 'color', [1 1 1], 'linewidth', 2);
    title('nonSSG', 'Color', [0 0 1]);
    xlabel('Time from spike onset (ms)'); ylabel('Cell #');
    h1 = colorbar; 
    t1 = text(87, 25, 'Normalized \gamma power', 'rotation', -90);

    subplot(122); 
    imagesc(dt,ch,flipud(ssg_ch_pow_mat_sm), clim); hold on;
    axis square
    set(gca', 'YDir', 'normal');
    line([-20, 50], [14.5,14.5], 'color', [1 1 1], 'linewidth', 2);
    line([0, 0], [1,26], 'color', [1 1 1], 'linewidth', 2);
    title('SSG', 'Color', [1 0 0]);
    set(gca, 'position', [0.5703    0.1100    0.2156    0.8150])
    xlabel('Time from spike onset (ms)'); ylabel('Cell #');
    text(60, 23, 'Bat 2', 'rotation', -90);
    text(60, 10, 'Bat 1', 'rotation', -90);
