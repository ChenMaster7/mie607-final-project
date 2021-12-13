%% MIE 607 - File to pull data from .csv files 
close all
clear
clc
%% 
k = 20:20:100; %Distance in the Y direction

hz = [2,7,12]; %Velocity of flow in HZ
T3DataForward = {};
T3DataReturn = {};
for i = 1:length(k)
    for j = 1:length(hz)
        if k(i) <=80
            filename = "team003_y0" + k(i) + "_" + hz(j) + "hz__00001.csv";
            filenameRet = "team003_y0" + k(i) + "_" + hz(j) + "hz_return_00001.csv";
            T3DataForward{i,j} = readmatrix(filename,'Range',"C160:M1211");
            T3DataReturn{i,j} = readmatrix(filenameRet,'Range',"C160:M1211");
        else
            filename = "team003_y" + k(i) + "_" + hz(j) + "hz__00001.csv";
            filenameRet = "team003_y" + k(i) + "_" + hz(j) + "hz_return_00001.csv";
            T3DataForward{i,j} = readmatrix(filename,'Range',"C160:M1211");
            T3DataReturn{i,j} = readmatrix(filenameRet,'Range',"C160:M1211");
        end
        
    end
end


for i = 1:length(k)
    for j = 1:length(hz)
        
        filename = "y" + k(i) + "_" + hz(j) + "hzFor.mat";
        filenameRet = "y" + k(i) + "_" + hz(j) + "hzRet.mat";
        matFor = T3DataForward{i,j};
        matRet = T3DataReturn{i,j};
        save(filename,"matFor");
        save(filenameRet,"matRet");
    end
end

        
