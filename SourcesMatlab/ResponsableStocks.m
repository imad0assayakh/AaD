function [X,Y,NN] = ResponsableStocks()
%Minimise le stock de produits
% Minimise le stock de produits pour toutes les valeurs possibles du
% b�n�fice

FetchData;

Stock = (ones(1,3) * Q) + ones(1,6);
steps = 200;

[X,Y,NN]=linprog_earnings(0,1,steps,Stock,InfEqConstraints,InfEqValues);

close;
hold on;
plot(X,Y,'Color',[1 0 0]);
xlabel('B�n�fice minimum impos� (exprim� par rapport au b�n�fice maximum)');
ylabel('Quantit� de produits & mati�res premi�res en stock optimale');
hold off;

end
