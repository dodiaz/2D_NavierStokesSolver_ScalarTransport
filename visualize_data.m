clc
clear all
close all



u = load('step10000_quick_u_data.txt');
v = load('step10000_quick_v_data.txt');
phi = load('step10000_quick_phi_data.txt');
figure
quiver(u,v)
xlim([0, 500])
ylim([0,100])
figure
surf(phi)

%laplace_p = load('laplace_p.txt');

sum = 0;
for i = 1:size(v,1)
    sum = sum + u(i,500);
end

%% 

laplace_phi = load('step500_GS_lap_data.txt');
f = load('step500_GS_f_data.txt');

difference = laplace_phi - f;


%%

u_star = load('step11_method_u_star_data.txt');
v_star = load('step11_method_v_star_data.txt');






%%

du_ss = load('du_ss.txt');
dv_ss = load('dv_ss.txt');
du_s  = load('du_s.txt');
dv_s = load('dv_s.txt');

step1_mat_x = load('mat1_x.txt');
step1_mat_y = load('mat1_y.txt');


press = load('pressure.txt');

laplace_p = load('laplace_p.txt');

u = load('step40_centraldiff_u_data.txt');
v = load('step40_centraldiff_v_data.txt');

grad_us = load('gusodt.txt');

u_star = load('u_star.txt');
v_star = load('v_star.txt');

Hx_old = load('Hx_old.txt');
Hy_old = load('Hy_old.txt');

quiver(u,v)

%%
lp1 = load('step1_LP_data.txt');
lp2 = load('step2_LP_data.txt');
lp3 = load('step3_LP_data.txt');

%% 
du_ss1 = load('du_ss.txt');
dv_ss1 = load('dv_ss.txt');
du_s1  = load('du_s.txt');
dv_s1 = load('dv_s.txt');

step1_mat_x1 = load('mat1_x.txt');
step1_mat_y1 = load('mat1_y.txt');


press1 = load('pressure.txt');

laplace_p1 = load('laplace_p.txt');

u1 = load('step0_centraldiff_u_data.txt');
v1 = load('step0_centraldiff_v_data.txt');

grad_us1 = load('gusodt.txt');

v_star1 = load('v_star.txt');

quiver(u1,v1)

%% 
clear all
clc


u = load('step30_centraldiff_u_data.txt');
v = load('step30_centraldiff_v_data.txt');

U = load('step90_centraldiff_u_data.txt');
V = load('step90_centraldiff_v_data.txt');

quiver(u,v);
title('step 30');
figure
quiver(U,V);
title('step 90');

%% plot u and v for the first few steps of the method

u0 = load('step2275_centraldiff_u_data.txt');
v0 = load('step2275_centraldiff_v_data.txt');

u1 = load('step2300_centraldiff_u_data.txt');
v1 = load('step2300_centraldiff_v_data.txt');

u2 = load('step2325_centraldiff_u_data.txt');
v2 = load('step2325_centraldiff_v_data.txt');

u3 = load('step2350_centraldiff_u_data.txt');
v3 = load('step2350_centraldiff_v_data.txt');

xLeft = 190;
xRight = 230;
yBottom = 75;
yTop = 100;

subplot(2,2,1);
quiver(u0,v0)
title('step 0')
xlim([xLeft, xRight]);
ylim([yBottom, yTop]);

subplot(2,2,2); 
quiver(u1,v1)
title('step 1')
xlim([xLeft, xRight]);
ylim([yBottom, yTop]);


subplot(2,2,3); 
quiver(u2,v2)
title('step 2')
xlim([xLeft, xRight]);
ylim([yBottom, yTop]);


subplot(2,2,4); 
quiver(u3,v3)
title('step 3')
xlim([xLeft, xRight]);
ylim([yBottom, yTop]);






%%

u0 = load('step10_centraldiff_u_data.txt');
v0 = load('step10_centraldiff_v_data.txt');

u1 = load('step20_centraldiff_u_data.txt');
v1 = load('step20_centraldiff_v_data.txt');

u2 = load('step30_centraldiff_u_data.txt');
v2 = load('step30_centraldiff_v_data.txt');

u3 = load('step40_centraldiff_u_data.txt');
v3 = load('step40_centraldiff_v_data.txt');

u4 = load('step50_centraldiff_u_data.txt');
v4 = load('step50_centraldiff_v_data.txt');

u6 = load('step60_centraldiff_u_data.txt');
v6 = load('step60_centraldiff_v_data.txt');

figure
subplot(2,3,1);
quiver(u0,v0)
title('step 10')
xlim([90, 130]);
ylim([35, 65]);

subplot(2,3,2); 
quiver(u1,v1)
title('step 20')
xlim([90, 130]);
ylim([35, 65]);

subplot(2,3,3); 
quiver(u2,v2)
title('step 30')
xlim([90, 130]);
ylim([35, 65]);

subplot(2,3,4); 
quiver(u3,v3)
title('step 40')
xlim([90, 130]);
ylim([35, 65]);

subplot(2,3,5); 
quiver(u4,v4)
title('step 50')
xlim([90, 130]);
ylim([35, 65]);

subplot(2,3,6); 
quiver(u6,v6)
title('step 60')
xlim([90, 130]);
ylim([35, 65]);
