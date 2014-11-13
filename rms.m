function val = rms(val,dim)
if(exist('dim'))
    val=sqrt(mean(abs(double(val)).^2,dim));
else
    val=sqrt(mean(abs(double(val)).^2));
end

disp('winning')