function out = t_a_r(in, nFFT,offset)
    in_data = in(offset:end);
    in_trunc = in_data(1:(nFFT*floor((length(in_data))/nFFT)));
        out = reshape(in_trunc,nFFT,length(in_trunc)/nFFT);

end