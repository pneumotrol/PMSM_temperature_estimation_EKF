function [dxdt,y] = state_equation_identify(t,x,u,C123,C4,R123,R456,R789,R_0,T_0,alpha,ratio_rotor,varargin)
    y = [
        x(1);
        x(2);
        x(3);
        x(4);
        ];

    dxdt = [
        -(R_0*(alpha*(T_0-x(1))-1)*u(1)^2+(u(5)*(ratio_rotor-1))/3-(u(4)-x(1))/R123+(x(1)-x(2))/R456+(x(1)-x(3))/R456+(x(1)-x(4))/R789)/C123;
        -(R_0*(alpha*(T_0-x(2))-1)*u(2)^2+(u(5)*(ratio_rotor-1))/3-(u(4)-x(2))/R123-(x(1)-x(2))/R456+(x(2)-x(3))/R456+(x(2)-x(4))/R789)/C123;
        -(R_0*(alpha*(T_0-x(3))-1)*u(3)^2+(u(5)*(ratio_rotor-1))/3-(u(4)-x(3))/R123-(x(2)-x(3))/R456-(x(1)-x(3))/R456+(x(3)-x(4))/R789)/C123;
        (ratio_rotor*u(5)+(x(1)-x(4))/R789+(x(2)-x(4))/R789+(x(3)-x(4))/R789)/C4;
        ];
end
