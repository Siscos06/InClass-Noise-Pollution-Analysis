%Since T=0 corresponds to background noise, some calculations can be made
%to remove the exterior interferences.


%Data
X=[0,30,60,90,120,150,180];

%Find h and time interval
dt=X(2)-X(1);
T=X(end)-X(1);
k=linspace(X(1), X(end), 2000);

Tcorrected=X(end-1)-X(1);
kcorrected=linspace(X(1), X(end-1), 2000);


%Case 1
Y=[40.33333333, 57.46666667, 54.33333333, 59.46666667, 54.58333333, 59.33333333, 56.69333333]; %Professor

title="teacher speaking";
corrected=false;
distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)

title="teacher speaking corrected";
corrected=true;
distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)




%Case 2
Y=[40.33333333, 54.6, 52.8, 56.4, 55, 55.3, 52.6]; %Section 2 - Furthest from the teacher
title="last row speaking";

corrected=false;
distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)

title="last row speaking - corrected";
corrected=true;
distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)



%Case 3
Y=[40.33333333, 71.65, 60.1, 68.1, 59.3, 64, 54]; %Section 1 - Closest to the teacher
title="first row speaking";

corrected=false;
distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)

title="first row speaking - corrected";
corrected=true;
distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)



%Case 4
Y=[40.33333333, 76.9, 72.5, 74.1, 65.1, 70.1, 71.8]; %All class
title="everyone speaking";

corrected=false;
distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)

title="everyone speaking - corrected";
corrected=true;
distributeData(Y,corrected,X,dt,Tcorrected,T,k,kcorrected,title)
