%Function to compute L_eq and plot the results
%   - Y: data array
%   - X: time array
%   - corrected: boolean to know whether corrections are made
%   - dt: time interval between measurements
%   - T: total time of measurements
%   - k: array for interpolation
%   - plotTitle: Chart title
%
%Outputs:
%


function plofunc(X,Y,dt,T,k,plotTitle, corrected)
    %Calculate L_eq
    SPL=10*log10((dt/T)*sum(10.^(Y./10)));
    Z=ones(1, length(X)).*SPL;
    
    %Interpolate data
    P=polyfit(X,Y,3); %Set to 3 to avoid Runge fenomenon
    T=polyval(P,k);
    
    %Plot data
    plot(X,Y, "m");
    hold on;
    
    %Plot L_eq
    plot(X, Z, "y");
    
    %Plot aproximate function
    plot(k,T, "r--");
    
    %Chart configs
    ylim([round(min(Y)-10),round(max(Y)+5)])
    legend("Measured Values", "L_{eq}", "Line of best fit")
    xlabel("Time (s)")
    ylabel("SPL (dBA) (±0.3%)")
    plotTitle="Sound Preasure Level vs. Time for "+plotTitle;
    title(plotTitle)
    hold off;
    
    %Print L_eq
    if corrected==false
        fprintf("\nThe L_eq value obtained is %.3f dBA", SPL)
    elseif corrected==true
        fprintf("\nThe corrected L_eq value obtained is %.3f dBA", SPL)
    end
end