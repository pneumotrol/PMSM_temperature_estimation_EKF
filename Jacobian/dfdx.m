function A = dfdx(in1,in2)
%DFDX
%    A = DFDX(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 23.2.
%    2024/03/29 16:09:40

u1 = in2(1,:);
u2 = in2(2,:);
u3 = in2(3,:);
mt1 = [u1.^2.*5.048173351335029e-7-1.0869845232386e-1];
mt2 = [2.500316732921214e-2,2.500316732921214e-2,1.984107103619443e-2];
mt3 = [2.500316732921214e-2];
mt4 = [u2.^2.*5.048173351335029e-7-1.0869845232386e-1];
mt5 = [2.500316732921214e-2,1.984107103619443e-2,2.500316732921214e-2];
mt6 = [2.500316732921214e-2];
mt7 = [u3.^2.*5.048173351335029e-7-1.0869845232386e-1];
mt8 = [1.984107103619443e-2,3.935103415550916e-2,3.935103415550916e-2];
mt9 = [3.935103415550916e-2,-5.952321310858328e-2];
A = reshape([mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9],4,4);
end
