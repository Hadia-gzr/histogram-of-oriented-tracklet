function   max_value = Make_Max_magnitude(options,PedTrain)

for seq = 1:size(PedTrain,2)
    data_noisy = PedTrain{seq};
    data = rm_noisy_trk1(options, data_noisy);
    [trk_magnitude,~] = trk2magori1(data,options);
    trk_magnitude1(seq)= max(trk_magnitude);
end
max_value = mean(trk_magnitude1)*2;