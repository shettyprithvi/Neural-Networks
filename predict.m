function p = predict(Theta1, Theta2, X)

m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);

a1=[ones(m,1) X];

predictions=a1*Theta1';

a2=[ones(m,1) sigmoid(predictions)];

predictions=a2*Theta2';

h=sigmoid(predictions);

[a,b]=max(h');

p= b';

end
