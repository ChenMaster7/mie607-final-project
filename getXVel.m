%% MIE 607 - Function for importing the x direction velocities from the .mat files
% Place this in the folder with the .mat files
%
%% Import .mat files and organize them
function [U20_2,U20_7,U20_12,U40_2,U40_7,U40_12,U60_2,U60_7,U60_12,U80_2,U80_7,U80_12,U100_2,U100_7,U100_12] = getXVel
d = 20:20:100; %Distance in the Y direction
hz = [2,7,12]; %Velocity of flow in HZ
U20_2 = zeros(1000,1);
U20_7 = zeros(1000,1);
U20_12 = zeros(1000,1);
U40_2 = zeros(1000,1);
U40_7 = zeros(1000,1);
U40_12 = zeros(1000,1);
U60_2 = zeros(1000,1);
U60_7 = zeros(1000,1);
U60_12 = zeros(1000,1);
U80_2 = zeros(1000,1);
U80_7 = zeros(1000,1);
U80_12 = zeros(1000,1);
U100_2 = zeros(1000,1);
U100_7 = zeros(1000,1);
U100_12 = zeros(1000,1);

for i = 1:length(d)
    for j = 1:length(hz)
        if d(i) == 20
            if hz(j) == 2
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U20_2(1:1000,1) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 7
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U20_7(1:1000,1) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 12
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U20_12(1:1000,1) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            end
%% 
        elseif d(i) == 40
           if hz(j) == 2
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U40_2(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 7
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U40_7(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 12
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U40_12(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            end 
%%
        elseif d(i) == 60
           if hz(j) == 2
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U60_2(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 7
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U60_7(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 12
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U60_12(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
           end 
%%
        elseif d(i) == 80
           if hz(j) == 2
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U80_2(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 7
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U80_7(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 12
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U80_12(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            end 
%%
        elseif d(i) == 100
           if hz(j) == 2
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U100_2(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 7
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U100_7(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
            elseif hz(j) == 12
                fNameFor = "y" + d(i) + "_" + hz(j) + "hzFor.mat";
                fNameRet = "y" + d(i) + "_" + hz(j) + "hzRet.mat";
                forMat = cell2mat(struct2cell(load(fNameFor)));
                retMat = cell2mat(struct2cell(load(fNameRet)));
                U100_12(1:1000) = (forMat(1:1000,1) + retMat(1:1000,1))./2;
           end 
        end
    end
end
end

            