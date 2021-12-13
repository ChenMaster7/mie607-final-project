%team003_y(020:100)_(2,7,12)hz__00001.csv or _return_00001.csv

k = 20:20:100;

hz = [2,7,12];
data_cell = {length(k),length(hz)};
for i = 1:length(k)
    for j = 1:length(hz)
        if k(i) <=80
            filename = "team003_y0" + k(i) + "_" + hz(j) + "hz__00001.csv";
            data_cell{i,j} = readmatrix(filename,'Range',"C160:M1211");
        else
            filename = "team003_y" + k(i) + "_" + hz(j) + "hz__00001.csv";
            data_cell{i,j} = readmatrix(filename,'Range',"C160:M1211");
        end
        
    end
end

