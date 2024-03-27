function Qiron = iron_loss(f,Ia,c)
    Qiron = f.*(c(1)+c(2)*Ia+c(3)*f+c(4)*f.*Ia.^2);
end
