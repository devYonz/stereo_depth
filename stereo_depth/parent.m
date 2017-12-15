% create figures for mrf executions


axis image;
colormap('jet');
colorbar;
% 
% jade_bp = imread('/Users/Innov8/x/learn/cv/psych221/project/stereo_depth/middlebury_mrf/mrfstereo/result/jade_disparity_mrf_belief_propagaion.png');
% figure(1)
% imagesc(jade_bp);
% axis image;
% colormap('jet');
% colorbar;
% title('Global optimization - BP');
% 
% jade_gc = imread('/Users/Innov8/x/learn/cv/psych221/project/stereo_depth/middlebury_mrf/mrfstereo/result/jade_disparity_mrf_graph_cut_abs.png');
% figure(2)
% imagesc(jade_gc);
% axis image;
% colormap('jet');
% colorbar;
% title('Global optimization - GC');
% 
% jade_ic = imread('/Users/Innov8/x/learn/cv/psych221/project/stereo_depth/middlebury_mrf/mrfstereo/result/jade_disparity_mrf_icm.png');
% figure(3)
% imagesc(jade_ic);
% axis image;
% colormap('jet');
% colorbar;
% title('Global optimization - ICM');
% 
% 
% tsukuba_ic = imread('/Users/Innov8/x/learn/cv/psych221/project/stereo_depth/middlebury_mrf/mrfstereo/tsukuba/tsukuba_d.jpg');
% figure(4)
% imagesc(tsukuba_ic);
% axis image;
% colormap('jet');
% colorbar;
% title('Tsekuba ground truth');
% 
% 
% tsukuba_ssd = imread('/Users/Innov8/x/learn/cv/psych221/project/stereo_depth/middlebury_mrf/mrfstereo/result/disparity_gc_ssd.png');
% figure(4)
% imagesc(tsukuba_ssd);
% axis image;
% colormap('jet');
% colorbar;
% title('Tsekuba Global Optimization gc SSD');
% 
% 
% 
% tsukuba_sad = imread('/Users/Innov8/x/learn/cv/psych221/project/stereo_depth/middlebury_mrf/mrfstereo/result/disparity_global_expansion.png');
% figure(5)
% imagesc(tsukuba_sad);
% axis image;
% colormap('jet');
% colorbar;
% title('Tsekuba Global Optimization gc SAD');


jade_gc = imread('/Users/Innov8/x/learn/cv/psych221/project/stereo_depth/middlebury_mrf/mrfstereo/jade/jade_gc_disp.png');
figure(6)
imagesc(jade_gc);
axis image;
colormap('jet');
colorbar;
title('Jade Global Optimization gc SAD');