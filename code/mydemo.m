options_Hot;

for datanum = 1:1
    %%%%%%%%%%% tracklet length
    for trkcount= 1:size(options.tracklet_length_cell,2)%%% nember of frame(tracklet length)
        trkcount
        options.tracklet_length = options.tracklet_length_cell(trkcount);
        options.trkcount =trkcount;
        %%Option--------------
        options.datasetcategory = (datanum);
         
%         [LabelPed,PedTest,PedTrain] = Load_Dataset( options );  %% load dataset and label
        %---- this function obtain max magnitude of Train
        options.max_magnitude_all = Make_Max_magnitude(options,PedTrain);%
        %----
        for sizecell = 1: size(options.Xinput_all,2)%%patch size
            options.Xinput=options.Xinput_all(sizecell);
            options.Yinput=options.Yinput_all(sizecell);
            for bincount = 1:size(options.numbin_cell,2)-2%%%%%%size of the bin(into cell memory)
                options.numbin = options.numbin_cell(bincount);
                options  = Makecellsize(options );%%% S [2x3,4x6,... ]
                
                %Train----------------
                Train = [];
                Train_Add = [];
                for seq = 1 : size(PedTrain,2)
                    
                    data = PedTrain{seq};
                    options.nFrame =    data_noisy(end,end)+1-(options.tracklet_length)+1;
                    [trk_magnitude,trk_orientation] = trk2magori1(data,options);
                    [Tracklets_matrix] = Tracklet2matrix(data);
                    %% Method
                    linear_index = seq2bin1(options,trk_magnitude,trk_orientation);
                    [hot_descriptor,P] = hot_cell(options,Tracklets_matrix,linear_index);
                    %%reshape train matrix
                    train1 = reshape(Hot_feature_train',[],(size(P,1)/( options.Xinput.* options.Yinput)));%(options.Xinput.*options.Yinput).*[1:options.numbin.*options.number_of_orientation]);
                    Train = [Train;train1'];
                    train2 = Cell_feature(P,hot_descriptor,options);
                    Train_Add = [Train_Add;train2];
                    
                end
                Train_Label=zeros(size(Train,1),1);
             
            end
        end
    end
end






