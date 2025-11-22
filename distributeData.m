%Function to consider the exterior interferences
%Inputs:
%   - Y: data array
%   - X: time array
%   - corrected: boolean to know whether corrections are made
%   - dt: time interval between measurements
%   - T: total time of measurements
%   - Tcorrected: total time of measurements for corrected data
%   - k: array for interpolation
%   - kcorrected: array for interpolation
%   - title: Chart title
%
%Outputs:
%


function distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)
    C=ones(1,length(X)-1);
    for ii=2:length(Y)
        C(ii-1)=10*log10(10^(Y(ii)/10)-10^(Y(1)/10));
    end

    if corrected==false
        plofunc(X,Y,dt,T,k,title, corrected);
    elseif corrected==true
        plofunc(X(1:end-1),C,dt,Tcorrected,kcorrected,title, corrected);
    end

    if input("\n\nVols continuar? Y/N ")
        hold off;
    end
end