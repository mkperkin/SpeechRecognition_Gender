
fftfinal = vertcat(sub1,sub2,sub3,sub4,sub5,sub6);

female = vertcat(sub1, sub2, sub3);
male = vertcat(sub4, sub5, sub6);

%calculate mean sound of all the sounds
meanSound = mean(fftfinal, 2);

%create zero matrix
Z = fftfinal - repmat(meanSound, [1, size(fftfinal,2)]);

%calculate the covariance matrix
C = Z*Z'/size(fftfinal,2);

%calculate eigenvector and values
[V, D] = eig(C);

%sort the eigenvectors based on the magnitude of their corresponding
%eigenvalues
[sv, si] = sort(diag(D), 'descend');
Vs = (V(:,si));

reSound = Vs(1,1:60)*Vs(1,1:60)'*Z(:,1) + meanSound;
reconstruction = real(ifft(reSound'));
figure;

plot(reconstruction);
sound(reconstruction);

Vs = real(Vs);
Ytrain = [1;1;1;1;1;1;1;1;1;1;
          1;1;1;1;1;1;1;1;1;1;
          1;1;1;1;1;1;1;1;1;1;
          0;0;0;0;0;0;0;0;0;0;
          0;0;0;0;0;0;0;0;0;0;
          0;0;0;0;0;0;0;0;0;0];
      
      



 