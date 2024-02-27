function Qiron = iron_loss(f,Ia,ch,cJ,cex)
    V = abs(f).*abs(Ia);
    Qiron = ch.*V+cJ.*V.^2+cex.*V.^1.5;
end
