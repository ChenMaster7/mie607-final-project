clear, clc; close all
%% import junk
% cd '.\data_files_mat'
% myFiles = dir('*.mat');
% myFolder = pwd;
% for j = 1:length(myFiles)
%     currentFile = myFiles(j).name;
% %     fullFileName = fullfile(myFolder, myFiles(j).name);
%     load(currentFile,currentFile);
% %     cell2mat(struct2cell(myData));
% %     myData = load(myFiles(j).name);
% end


%% Mean and RMS
% Each column represents the displacement: [20cm 40cm 60cm 80cm 100cm]
[U20_2,U20_7,U20_12,U40_2,U40_7,U40_12,U60_2,U60_7,U60_12,U80_2,U80_7,U80_12,U100_2,U100_7,U100_12] = getXVel;
Umean_12hz = [mean(U20_12) mean(U40_12) mean(U60_12) mean(U80_12) mean(U100_12)];
Umean_7hz = [mean(U20_7) mean(U40_7) mean(U60_7) mean(U80_7) mean(U100_7)];
Umean_2hz = [mean(U20_2) mean(U40_2) mean(U60_2) mean(U80_2) mean(U100_2)];
Urms_12hz = sqrt(Umean_12hz.^2);
Urms_7hz = sqrt(Umean_7hz.^2);
Urms_2hz = sqrt(Umean_2hz.^2);