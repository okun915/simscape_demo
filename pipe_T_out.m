function [stack_T_out,pip_Q] = pipe_T_out(stack_T)
%********************这是仅采用能量守恒,给定换热系数，根据能量守恒，
% 已知进口水温及管壁温度，计算管道出口水温的*******************

% 定义管道几何参数
pipe_length = 1;       % 管道长度（单位：米）
pipe_D = 0.1;     % 管道内径（单位：米）
t = 0.01;    % 管道壁厚（单位：米）

% 定义初始条件
T_in = 25;   % 管道进口水流温度（单位：摄氏度）
% T_wall = 100;   % 管壁温度（单位：摄氏度）
h = 100;   % 换热系数（单位：瓦特/（平方米·摄氏度））
m = 0.1;     % 水流质量流率（单位：千克/秒）
c_p = 4186;  % 水的比热容（单位：焦耳/（千克·摄氏度））

% 计算传递给水流的热量
pip_Q = (stack_T - T_in) * (pi * pipe_D * pipe_length) * h;

% 计算管道出口温度
stack_T_out = T_in + pip_Q / (m * c_p);

% % 输出结果
% disp(['管道进口温度：', num2str(T_in), ' °C']);
% disp(['管道出口温度：', num2str(T_out), ' °C']);
end


