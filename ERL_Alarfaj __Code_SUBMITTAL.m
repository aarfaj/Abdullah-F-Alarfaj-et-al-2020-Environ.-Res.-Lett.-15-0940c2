%% Source code for ERL Papaer titled
% "Decarbonizing U.S. Passenger Vehicle Transport Under Electrification and Automation Uncertainty
% Has A Travel Budget" 
% by Abdullah Alarfaj , W. Michael Griffin , Constantine Samaras
% The folowing source code generates the figures from the paper manuscript and
% SI  in the order and reference numbers presented.
%% Figure 1: Levels of EV miles share and electricity net generation carbon 
% intensity required for a given 2050 total LDV CO2 target and 3.3 trillion 
% miles of LDV travel.

%Base case total LDV VMT (billion miles)
VMT = 3302.4;

%EV and ICEV fleets average fuel economy values 

EV_FE = 6 ; %mile/kWh 

ICEV_FE= 36.4; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;


% X is a vector of the total LDV CO2 levels in (million metric tons)
X=linspace(0,350,100);
%variables to be fed in the for loop
str=[];
i=1;
k=65;
Z=zeros(100,9);
% a is a vector of EV miles share levels (%)
a=[1 0.95 0.9 0.85 0.8 0.75 0.7 0.65 0.6];
% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

for i=1:length(a)
    
   % calculate the slope and y-intercept
    m=(EV_FE./((1+L).*a(i).*VMT));
    b=(((a(i)-1).*EV_FE.*ICEV_CI)./(a(i).*(1+L).*ICEV_FE));  
    %calculate and plot the line
    Y=m.*X+b;
    Z(:,i)=Y;
    plot1=plot(X,Z(:,i).*1000,'black','LineWidth',2)%'FaceColor',colors(i,:))
    text(k,(m.*k+b)*1000,strcat(num2str(a(i)*100),'%'),'FontWeight','bold','FontSize',12,'FontName','Arial')
    

    k=k+29.5;
    hold on
end

%plot the 80% target vertical line at 250 million metric ton
plot(diag(ones(100)).*250,linspace(0,200,100),'LineWidth',2.5,'LineStyle','--','Color',[0.9100 0.4100 0.1700]);

%plot the 90% tvertical line at 120 million metric ton
plot(diag(ones(100)).*120,linspace(0,200,100),'LineWidth',2.5,'LineStyle','--','Color',[0.9100 0.4100 0.1700]);

% Create ylabel
ylabel('Electricity Carbon Intensity (g CO_2 /kWh)','FontName','Arial');

% Create xlabel
xlabel('Total LDV CO_2 (million metric tons)','FontName','Arial');

% Set the figure properties 
I=legend('EV miles share levels')
I.FontName='Arial'
I.FontSize=12
I.Location='NorthWest'
ylim([0 200])
xlim([0 320])

% Set the remaining axes properties
set(axes1,'BoxStyle','full','FontName','Arial','FontSize',12,'Layer','top');
%% Figure S1: Levels of EV miles share and electricity net generation carbon 
% intensity required for a given 2050 total LDV CO2 target and 3.3 trillion 
% miles of LDV travel. 
% S1 shows how the map in Figure 1 would change if the EV fleet average FE 
%is reduced by 50% to 3 miles/kWh

%Base case total LDV VMT (billion miles)
VMT = 3302.4;

%EV and ICEV fleets average fuel economy values 

EV_FE = 3 ; %mile/kWh 

ICEV_FE= 36.4; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;


% X is a vector of the total LDV CO2 levels in (million metric tons)
X=linspace(0,350,100);
%variables to be fed in the for loop
str=[];
i=1;
k=130;
Z=zeros(100,9);
% a is a vector of EV miles share levels (%)
a=[1 0.95 0.9 0.85 0.8 0.75 0.7 0.65 0.6];
% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

for i=1:length(a)
    
   % calculate the slope and y-intercept
    m=(EV_FE./((1+L).*a(i).*VMT));
    b=(((a(i)-1).*EV_FE.*ICEV_CI)./(a(i).*(1+L).*ICEV_FE));  
    %calculate and plot the line
    Y=m.*X+b;
    Z(:,i)=Y;
    plot1=plot(X,Z(:,i).*1000,'black','LineWidth',2)%'FaceColor',colors(i,:))
    text(k,(m.*k+b)*1000,strcat(num2str(a(i)*100),'%'),'FontWeight','bold','FontSize',12,'FontName','Arial')
    

    k=k+22;
    hold on
end

%plot the 80% target vertical line at 250 million metric ton
plot(diag(ones(100)).*250,linspace(0,200,100),'LineWidth',2.5,'LineStyle','--','Color',[0.9100 0.4100 0.1700]);

%plot the 90% tvertical line at 120 million metric ton
plot(diag(ones(100)).*120,linspace(0,200,100),'LineWidth',2.5,'LineStyle','--','Color',[0.9100 0.4100 0.1700]);

% Create ylabel
ylabel('Electricity Carbon Intensity (g CO_2 /kWh)','FontName','Arial');

% Create xlabel
xlabel('Total LDV CO_2 (million metric tons)','FontName','Arial');

% Set the figure properties 
I=legend('EV miles share levels')
I.FontName='Arial'
I.FontSize=12
I.Location='NorthWest'
ylim([0 200])
xlim([0 320])

% Set the remaining axes properties
set(axes1,'BoxStyle','full','FontName','Arial','FontSize',12,'Layer','top');


%% Figure 2: The combinations of the travel demand, electricity generation
%CO2 intensity, and EV miles share to meet a 2050 LDV CO2 target of 250 
%million metric tons (an 80% reduction from 2005 level).
%The dashed 2.2 trillion miles line represents reduced total LDV travel
%through 100% reduction of the urban miles from the states of the 10 most
%densely populated metropolitan areas.  


%Vector of the range of EV miles share (%)
EV_share = linspace(0.4,1,100);

%Vector of the range of electricity carbon intensity (kg CO2/kWh)
Elec_CI=linspace(0,0.2,100);

%EV and ICEV fleets average fuel economy values 
EV_FE = 6 ; %mile/kWh 
ICEV_FE= 36.4; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;

%Create a mesh grid of EV miles share and electricity carbon intensity
[X,Y] = meshgrid(EV_share,Elec_CI);

%Set the 2050 LDV CO2 80% reduction target of 250 MMT
LDV_CO2= 250;

%Calculate the total VMT (miles budget)
VMT=LDV_CO2./((X.*(1+L).*Y./EV_FE)+(1-X).*ICEV_CI./ICEV_FE);
Z=VMT;

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

% Create the VMT contour lines
[c1,h1] = contour(X.*100,Y.*1000,Z,[0:1000:8000],'LineWidth',2,'LevelStep',1000);
clabel(c1,h1);
w = h1.LineColor;
h1.LineColor=[0 0 0];

zindex = [2900 3300];

% create the contour line of 2200 billion miles 
hold on
[c2,h2] = contour(X.*100,Y.*1000,Z,[0:2200:2200],'--','LineWidth',2,'LevelStep',2500);
clabel(c2,h2);
w = h2.LineColor;
h2.LineColor=[0 0 1];

% Create ylabel
ylabel('Electricity Carbon Intensity (g CO_2 /kWh)','FontName','Arial');

% Create xlabel
xlabel('EV Miles Share (%)','FontName','Arial');

% Set the remaining axes and figure properties
box(axes1,'on');
axis(axes1,'tight');
set(axes1,'BoxStyle','full','FontName','Arial','FontSize',12,'Layer','top');
xlim([30 100])
str = {'Lines are LDV 2050','total VMT (billion miles)','that enable 80% target in 2050'};
annotation('textbox','String',str,'FitBoxToText','on');
%% Figure S2: Map of the combinations of the travel demand, 
%electricity generation CI, and EV miles share to meet a 2050 LDV CO2
%target of 120 million metric tons (90% reduction from 2005 level). 
%The dashed 2.2 trillion miles line represents reduced total LDV travel
%through 100% reduction of the urban miles from the states of the 10 most
%densely populated metropolitan areas.  


%Vector of the range of EV miles share (%)
EV_share = linspace(0.4,1,100);

%Vector of the range of electricity carbon intensity (kg CO2/kWh)
Elec_CI=linspace(0,0.2,100);

%EV and ICEV fleets average fuel economy values 
EV_FE = 6 ; %mile/kWh 
ICEV_FE= 36.4; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;

%Create a mesh grid of EV miles share and electricity carbon intensity
[X,Y] = meshgrid(EV_share,Elec_CI);

%Set the 2050 LDV CO2 90% reduction target of 120 MMT
LDV_CO2= 120;

%Calculate the total VMT (miles budget)
VMT=LDV_CO2./((X.*(1+L).*Y./EV_FE)+(1-X).*ICEV_CI./ICEV_FE);
Z=VMT;

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

% Create the VMT contour lines
[c1,h1] = contour(X.*100,Y.*1000,Z,[0:1000:8000],'LineWidth',2,'LevelStep',1000);
clabel(c1,h1);
w = h1.LineColor;
h1.LineColor=[0 0 0];

zindex = [2900 3300];

% create the contour line of 2200 billion miles 
hold on
[c2,h2] = contour(X.*100,Y.*1000,Z,[0:2200:2200],'--','LineWidth',2,'LevelStep',2500);
clabel(c2,h2);
w = h2.LineColor;
h2.LineColor=[0 0 1];

% Create ylabel
ylabel('Electricity Carbon Intensity (g CO_2 /kWh)','FontName','Arial');

% Create xlabel
xlabel('EV Miles Share (%)','FontName','Arial');

% Set the remaining axes and figure properties
box(axes1,'on');
axis(axes1,'tight');
set(axes1,'BoxStyle','full','FontName','Arial','FontSize',12,'Layer','top');
xlim([40 100])
str = {'Lines are LDV 2050','total VMT (billion miles)','that enable 90% target in 2050'};
annotation('textbox','String',str,'FitBoxToText','on');
%% Figure S3: Map of the combinations of the travel demand, 
%electricity generation CI, and EV miles share to meet a 2050 LDV CO2 
%target of 250 million metric tons (80% reduction from 2005 level) 
%for an ICEV fleet average fuel economy 50 mpg. 
%The dashed 2.2 trillion miles line represents reduced total LDV travel
%through 100% reduction of the urban miles from the states of the 10 most
%densely populated metropolitan areas.  


%Vector of the range of EV miles share (%)
EV_share = linspace(0.4,1,100);

%Vector of the range of electricity carbon intensity (kg CO2/kWh)
Elec_CI=linspace(0,0.2,100);

%EV and ICEV fleets average fuel economy values 
EV_FE = 6 ; %mile/kWh 
ICEV_FE= 50; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;

%Create a mesh grid of EV miles share and electricity carbon intensity
[X,Y] = meshgrid(EV_share,Elec_CI);

%Set the 2050 LDV CO2 80% reduction target of 250 MMT
LDV_CO2= 250;

%Calculate the total VMT (miles budget)
VMT=LDV_CO2./((X.*(1+L).*Y./EV_FE)+(1-X).*ICEV_CI./ICEV_FE);
Z=VMT;

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

% Create the VMT contour lines
[c1,h1] = contour(X.*100,Y.*1000,Z,[0:1000:8000],'LineWidth',2,'LevelStep',1000);
clabel(c1,h1);
w = h1.LineColor;
h1.LineColor=[0 0 0];

zindex = [2900 3300];

% create the contour line of 2180 billion miles 
hold on
[c2,h2] = contour(X.*100,Y.*1000,Z,[0:2200:2200],'--','LineWidth',2,'LevelStep',2500);
clabel(c2,h2);
w = h2.LineColor;
h2.LineColor=[0 0 1];

% Create ylabel
ylabel('Electricity Carbon Intensity (g CO_2 /kWh)','FontName','Arial');

% Create xlabel
xlabel('EV Miles Share (%)','FontName','Arial');

% Set the remaining axes and figure properties
box(axes1,'on');
axis(axes1,'tight');
set(axes1,'BoxStyle','full','FontName','Arial','FontSize',12,'Layer','top');
xlim([40 100])
str = {'Lines are LDV 2050','total VMT (billion miles)','that enable 80% target in 2050'};
annotation('textbox','String',str,'FitBoxToText','on');
%% Figure S4: Map of the combinations of the travel demand, 
%electricity generation CI, and EV miles share to meet a 2050 LDV CO2
%target of 120 million metric tons (90% reduction from 2005 level). 
%for an ICEV fleet average fuel economy 50 mpg. 
%The dashed 2.2 trillion miles line represents reduced total LDV travel
%through 100% reduction of the urban miles from the states of the 10 most
%densely populated metropolitan areas.  


%Vector of the range of EV miles share (%)
EV_share = linspace(0.4,1,100);

%Vector of the range of electricity carbon intensity (kg CO2/kWh)
Elec_CI=linspace(0,0.2,100);

%EV and ICEV fleets average fuel economy values 
EV_FE = 6 ; %mile/kWh 
ICEV_FE= 50; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;

%Create a mesh grid of EV miles share and electricity carbon intensity
[X,Y] = meshgrid(EV_share,Elec_CI);

%Set the 2050 LDV CO2 90% reduction target of 120 MMT
LDV_CO2= 120;

%Calculate the total VMT (miles budget)
VMT=LDV_CO2./((X.*(1+L).*Y./EV_FE)+(1-X).*ICEV_CI./ICEV_FE);
Z=VMT;

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

% Create the VMT contour lines
[c1,h1] = contour(X.*100,Y.*1000,Z,[0:1000:8000],'LineWidth',2,'LevelStep',1000);
clabel(c1,h1);
w = h1.LineColor;
h1.LineColor=[0 0 0];

zindex = [2900 3300];

% create the contour line of 2180 billion miles 
hold on
[c2,h2] = contour(X.*100,Y.*1000,Z,[0:2200:2200],'--','LineWidth',2,'LevelStep',2500);
clabel(c2,h2);
w = h2.LineColor;
h2.LineColor=[0 0 1];

% Create ylabel
ylabel('Electricity Carbon Intensity (g CO_2 /kWh)','FontName','Arial');

% Create xlabel
xlabel('EV Miles Share (%)','FontName','Arial');

% Set the remaining axes and figure properties
box(axes1,'on');
axis(axes1,'tight');
set(axes1,'BoxStyle','full','FontName','Arial','FontSize',12,'Layer','top');
xlim([40 100])
str = {'Lines are LDV 2050','total VMT (billion miles)','that enable 90% target in 2050'};
annotation('textbox','String',str,'FitBoxToText','on');
%% Figure S5 The combinations of the travel demand,
% electricity generation CO2 intensity, and EV miles share to meet a
% 2050 LDV CO2 target of 250 million metric tons
%(an 80% reduction from 2005 level). 
% The impact from the reduced travel due to mobility and modal shifts is 
% illustrated. The reduced total VMT levels due to shifting
% 25%, 50%, 75%, and 100% of the urban miles within the states of 
% the top ten densely populated metropolitan areas are shown. 


%Vector of the range of EV miles share (%)
EV_share = linspace(0.4,1,100);

%Vector of the range of electricity carbon intensity (kg CO2/kWh)
Elec_CI=linspace(0,0.2,100);

%EV and ICEV fleets average fuel economy values 
EV_FE = 6 ; %mile/kWh 
ICEV_FE= 36.4; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;

%Create a mesh grid of EV miles share and electricity carbon intensity
[X,Y] = meshgrid(EV_share,Elec_CI);

%Set the 2050 LDV CO2 80% reduction target of 250 MMT
LDV_CO2= 250;

%Calculate the total VMT (miles budget)
VMT=LDV_CO2./((X.*(1+L).*Y./EV_FE)+(1-X).*ICEV_CI./ICEV_FE);
Z=VMT;

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');


zindex = [2900 3300];

% create the contour lines of the reduced LDV VMT due to modal shift 
% The reduced total VMT levels due to shifting 25%, 50%, 75%, and 100% of 
% the urban miles within the states of the top ten densely populated metropolitan areas 
r=[2200 2500 2700 3000 3300];
for n=1:length(r)
    [c2,h2] = contour(X.*100,Y.*1000,Z,[0:r(n):r(n)],'LineWidth',2,'LevelStep',2500);
    clabel(c2,h2);
    w = h2.LineColor;
    h2.LineColor=[0 0 0];
    hold on
end


% Create ylabel
ylabel('Electricity Carbon Intensity (g CO_2 /kWh)','FontName','Arial');

% Create xlabel
xlabel('EV Miles Share (%)','FontName','Arial');

% Set the remaining axes and figure properties
box(axes1,'on');
axis(axes1,'tight');
set(axes1,'BoxStyle','full','FontName','Arial','FontSize',12,'Layer','top');
xlim([40 100])
str = {'Lines are LDV 2050','total VMT (billion miles)','that enable 80% target in 2050'};
annotation('textbox','String',str,'FitBoxToText','on');
%% Figure 3: The 2050 U.S. LDV total CO2 emissions as a function of 
% the load factor for different levels of travel electrification and 
% electricity generation carbon intensity (75% EV and 0 g CO2/kWh,
% 75% EV and 50 g CO2/kWh, 100% EV and 50 g CO2/kWh). 
% The vertical line crossing the EIA 2050 projected conditions indicates 
% the current load factor of 1.60. The two horizontal dashed lines 
% indicate the 80% and 90% midcentury decarbonization targets.

%Vector of th range of load factor values
LF =[1:0.01:2.5];

%Total passenger miles traveled (billion miles) defined
% as current load factor multiplied by the 2050 VMT
PMT =1.60*3302;

%EV and ICEV fleets average fuel economy values 
EV_FE = 6 ; %mile/kWh 
ICEV_FE= 36.4; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;

%Create a matrix to store the results 
Z=[];
Z(:,1)=LF;

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

hold on
% Vector of EV miles share levels
x=[0.75,0.75,1];
% Vector of electricity CI levels
y=[0,0.050,0.050];

% Set the lines colors
COLOR=[[0 0.45 0.74];[0.85 0.33 0.1];[0.16 0.38 0.27]];
% Claculate and plot the LF vs CO2 line foreach case
for n = 1:length(x)
    LDV_CO2=(x(n).*PMT.*y(n)./EV_FE+(1-x(n)).*PMT.*ICEV_CI./ICEV_FE)./LF;
    Z(:,n+1)=LDV_CO2;
    plot(LF,LDV_CO2,'LineWidth',4,'Color',COLOR(n,:))
    hold on
end


% Create vertical line for the current LF of 1.60
y=linspace(0,2500,2500);
plot(diag(ones(2500)).*1.60,y,'LineWidth',2.5,'LineStyle','--','Color',[0 0 0]);

% Plot the 80% target line of 250 million metric tons
plot(LF,diag(ones(length(LF)).*250),'--','LineWidth',2.5,'color',[0.2    0.3    0.49])

% plot 90% reduction target line of 120 million meric tons 
plot(LF,diag(ones(length(LF)).*120),'--','LineWidth',2.5,'color',[0.3    0.75    0.93])

% Create ylabel
ylabel('Total LDV CO_2 (million metric tons)','FontName','Arial','FontSize',14);

% Create xlabel
xlabel('Load Factor','FontName','Arial','FontSize',14);

% Set the remaining axes and figure properties
ylim(axes1,[0 350]);
box(axes1,'on');
set(axes1,'FontName','Arial','FontSize',12);
legend1 = legend(axes1,'show');
set(legend1,'FontSize',10);
legend('75%EV, 0 gCO_2/kWh','75%EV, 50 gCO_2/kWh','100%EV, 50 gCO_2/kWh')
%% Figure S6: The 2050 U.S. LDV total CO2 emissions as a function of the 
% load factor for different levels of travel electrification and electricity
% generation carbon intensity (50% EV- 100 g CO2/kWh, 75% EV- 100 g CO2/kWh,
% 100% EV- 100 g CO2/kWh). The vertical line crossing the EIA 2050 projected
% conditions indicates the current load factor of 1.6. The two horizontal
% dashed lines indicate the 80% and 90% midcentury decarbonization targets.

%Vector of th range of load factor values
LF =[1:0.01:2.5];

%Total passenger miles traveled (billion miles) defined
% as current load factor multiplied by the 2050 VMT
PMT =1.60*3302;

%EV and ICEV fleets average fuel economy values 
EV_FE = 6 ; %mile/kWh 
ICEV_FE= 36.4; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;

%Create a matrix to store the results 
Z=[];
Z(:,1)=LF;

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

hold on
% Vector of EV miles share levels
x=[0.5,0.75,1];
% Vector of electricity CI levels
y=[0.1,0.1,0.1];

% Set the lines colors
COLOR=[[0 0.45 0.74];[0.85 0.33 0.1];[0.16 0.38 0.27]];
% Claculate and plot the LF vs CO2 line foreach case
for n = 1:length(x)
    LDV_CO2=(x(n).*PMT.*y(n)./EV_FE+(1-x(n)).*PMT.*ICEV_CI./ICEV_FE)./LF;
    Z(:,n+1)=LDV_CO2;
    plot(LF,LDV_CO2,'LineWidth',4,'Color',COLOR(n,:))
    hold on
end


% Create vertical line for the current LF of 1.60
y=linspace(0,2500,2500);
plot(diag(ones(2500)).*1.60,y,'LineWidth',2.5,'LineStyle','--','Color',[0 0 0]);

% Plot the 80% target line of 250 million metric tons
plot(LF,diag(ones(length(LF)).*250),'--','LineWidth',2.5,'color',[0.2    0.3    0.49])

% plot 90% reduction target line of 120 million meric tons 
plot(LF,diag(ones(length(LF)).*120),'--','LineWidth',2.5,'color',[0.3    0.75    0.93])

% Create ylabel
ylabel('Total LDV CO_2 (million metric tons)','FontName','Arial','FontSize',14);

% Create xlabel
xlabel('Load Factor','FontName','Arial','FontSize',14);

% Set the remaining axes and figure properties
ylim(axes1,[0 350]);
box(axes1,'on');
set(axes1,'FontName','Arial','FontSize',12);
legend1 = legend(axes1,'show');
set(legend1,'FontSize',10);
legend('50%EV, 100 gCO_2/kWh','75%EV, 100 gCO_2/kWh','100%EV, 100 gCO_2/kWh')
%% Figure S7: The 2050 U.S. LDV total CO2 emissions as a function of the 
% load factor for different levels of travel electrification and electricity
% generation carbon intensity (50% EV- 150 g CO2/kWh,
% 75% EV- 150 g CO2/kWh, 100% EV- 150 g CO2/kWh). The vertical line crossing the EIA 2050 projected
% conditions indicates the current load factor of 1.6. The two horizontal
% dashed lines indicate the 80% and 90% midcentury decarbonization targets.

%Vector of th range of load factor values
LF =[1:0.01:2.5];

%Total passenger miles traveled (billion miles) defined
% as current load factor multiplied by the 2050 VMT
PMT =1.60*3302;

%EV and ICEV fleets average fuel economy values 
EV_FE = 6 ; %mile/kWh 
ICEV_FE= 36.4; %mpg

%ICEV average fleet fuel carbon intensity (kg CO2/gallon)
ICEV_CI=8.21;

%Charging and T&D Loss Factor (L)
L=0.12+0.0458;

%Create a matrix to store the results 
Z=[];
Z(:,1)=LF;

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

hold on
% Vector of EV miles share levels
x=[0.5,0.75,1];
% Vector of electricity CI levels
y=[0.15,0.15,0.15];

% Set the lines colors
COLOR=[[0 0.45 0.74];[0.85 0.33 0.1];[0.16 0.38 0.27]];
% Claculate and plot the LF vs CO2 line foreach case
for n = 1:length(x)
    LDV_CO2=(x(n).*PMT.*y(n)./EV_FE+(1-x(n)).*PMT.*ICEV_CI./ICEV_FE)./LF;
    Z(:,n+1)=LDV_CO2;
    plot(LF,LDV_CO2,'LineWidth',4,'Color',COLOR(n,:))
    hold on
end


% Create vertical line for the current LF of 1.60
y=linspace(0,2500,2500);
plot(diag(ones(2500)).*1.60,y,'LineWidth',2.5,'LineStyle','--','Color',[0 0 0]);

% Plot the 80% target line of 250 million metric tons
plot(LF,diag(ones(length(LF)).*250),'--','LineWidth',2.5,'color',[0.2    0.3    0.49])

% plot 90% reduction target line of 120 million meric tons 
plot(LF,diag(ones(length(LF)).*120),'--','LineWidth',2.5,'color',[0.3    0.75    0.93])

% Create ylabel
ylabel('Total LDV CO_2 (million metric tons)','FontName','Arial','FontSize',14);

% Create xlabel
xlabel('Load Factor','FontName','Arial','FontSize',14);

% Set the remaining axes and figure properties
ylim(axes1,[0 350]);
box(axes1,'on');
set(axes1,'FontName','Arial','FontSize',12);
legend1 = legend(axes1,'show');
set(legend1,'FontSize',10);
legend('50%EV, 150 gCO_2/kWh','75%EV, 150 gCO_2/kWh','100%EV, 150 gCO_2/kWh')
%% Figure 4: Projections of EV fleet share up to 2050 under different
% forecasts for the U.S. and global LDV fleets. The lines represent the main
% cases considered in this analysis that are 100%, 80%, 63%, and the case
% matching the BNEF 2019 forecast of 42% EVs in U.S. LDV by 2040.
% Points with U.S. and global projections by others are shown for comparison.

% Rnage of the years
year = 2019:2051;

% Read the EV fleet share values for each case from the Excel file

% 100% EV by 2050 case
EV_100=xlsread('Figure_4_Data','EV fleet share results','B2:B34').*100;

% 80% EV by 2050 case
EV_80=xlsread('Figure_4_Data','EV fleet share results','C2:C34').*100;

% 67% EV by 2050 (Lower bound) case
LB=xlsread('Figure_4_Data','EV fleet share results','D2:D34').*100;

% BNEF 2019 (42% EV by 2040)
BNEF=xlsread('Figure_4_Data','EV fleet share results','E2:E34').*100;

% Create x and y axis values 
X=year;
Y=[EV_100,EV_80,LB,BNEF];

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(X,Y,'LineWidth',3.5);
set(plot1(1),'DisplayName','100% EV by 2050');
set(plot1(2),'DisplayName','80% EV by 2050');
set(plot1(3),'DisplayName','Lower bound (67% EV)');
set(plot1(4),'DisplayName','BNEF 2019 (42% EV by 2040)');

% Plot the forecasts projectited values
hold on
% Total2019: expects EVs to account for 32% of the total fleet by 2040
plot(2040,32,'d','markersize',12)
hold on 
% BP2019: by 2040 around 350 million EVs (0.35/1.67=20%)
plot(2040,20,'r>','markersize',12)
hold on 
% OPEC2018: more than 300 million EVs in 2040, representing around 15% of the passenger fleet
plot(2040,15,'b>','markersize',12)
hold on
% Exxon2018: over 150 EVs by 2040 (0.165/1.67 =10%)
plot(2040,10,'+','markersize',12)
hold on

% BNEF2109: 30% EVs in 2040 (global)
plot(2040,30,'bo','markersize',12)

% BNEF2109: 42% EVs in 2040 (US)
plot(2040,42,'ro','markersize',12)
box(axes1,'on');
% Create ylabel
ylabel('Percentage of EVs in LDV Fleet (%)','FontName','Arial','FontSize',14);

% Create xlabel
xlabel('Year','FontName','Arial','FontSize',14);
% Create legends
legend('100% EV by 2050','80% EV by 2050','Lower bound (67% EV)'...
   , 'BNEF 2019 (42% EV by 2040)')
xlim([2019 2051])
%% Figure S9: Vehicle utilization impact on EV stock share showing
% how a certain EV miles share target (x-axis) can be met with different
% levels of physical stock share through changing the average annual
% utilization of the EVs from the annual average, with typical
% New York City (NYC) taxi travel shown.

% Base case 2050 total VMT
total_VMT=3302e9;

% Vector of the range of EV miles share (%)
percentage_EV_miles= 0:0.001:1;
X1=[percentage_EV_miles.*100];

% Base case 2050 total LDV stock (fleet)
total_fleet=284e6;

% Vector of the EV stock (fleet) share levels (%)
percentage_EV_fleet= [0.1 0.25 0.5 0.75 1];

% Create a zero matrix to stor the EV miles and fleet share input values
YMatrix1=zeros(length(percentage_EV_miles),length(percentage_EV_fleet)+1);

% Calculate the annual VMT per EV for each combination of EV miles share
% and EV fleet share
for n=1:length(percentage_EV_fleet)
    annual_VMT_EV=(percentage_EV_miles.*total_VMT./(percentage_EV_fleet(n).*total_fleet))./1000;
    YMatrix1(:,n)=annual_VMT_EV;
end

% Create the vector for the 2050 projected VMT per vehicle
YMatrix1(:,end)=diag(ones(length(percentage_EV_miles))).*total_VMT./(total_fleet.*1000);

% Create figure
figure1 = figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

% Create the multiple annual VMT per EV lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'LineWidth',2.5);
set(plot1(1),'DisplayName','EV fleet share = 10%');
set(plot1(2),'DisplayName','EV fleet share = 25%');
set(plot1(3),'DisplayName','EV fleet share = 50%');
set(plot1(4),'DisplayName','EV fleet share = 75%');
set(plot1(5),'DisplayName','EV fleet share = 100%');
set(plot1(6),'DisplayName','2050 projected VMT per vehicel','LineWidth',1.5,...
    'LineStyle','--',...
    'Color',[0 0 0]);

% Create text
text('FontSize',12,'FontName','Arial','String','11,600 miles',...
    'Position',[0.0268138801261912 15 0]);

% Create ylabel
ylabel('Annual VMT per EV (thousand miles)');

% Create xlabel
xlabel('Percentage of U.S. LDV miles driven by EVs');


box(axes1,'on');
% Set the remaining axes properties
set(axes1,'XTick',...
    [0 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100],...
    'XTickLabel',...
    {'0','','10','','20','','30','','40','','50','','60','','70','','80','','90','','100'});
ylim(axes1,[0 140]);

% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Location','northwest');

% Create the typical NYC taxi annual travel of 70,000 miles line
annotation(figure1,'line',[0.13080684596577 0.903422982885086],...
    [0.59 0.59],...
    'Color',[0.635294139385223 0.0784313753247261 0.184313729405403],...
    'LineWidth',1.5,...
    'LineStyle','-.');




