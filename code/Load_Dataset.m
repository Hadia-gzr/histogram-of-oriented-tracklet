function [LabelPed,PedTest,PedTrain] = Load_Dataset( options )
switch options.datasetcategory
case 2
        switch options.tracklet_length
            case 5
                 load (fullfile(options.input,'Ped2_Tracklet_5'));
            case 11
                 load (fullfile(options.input,'Ped2_Tracklet_11'));
            case 21
                load (fullfile(options.input,'Ped2_Tracklet_21'))
        end
        LabelPed = load([options.input,'\LabelPed2.mat']);
case 1
        switch options.tracklet_length
            case 5
                 load (fullfile(options.input,'Ped1_Tracklet_5'));
            case 11
                load (fullfile(options.input,'Ped1_Tracklet_11'))
            case 21
                load (fullfile(options.input,'Ped1_Tracklet_21'))
        end
       LabelPed = load([options.input,'\LabelPed1.mat']);
end

