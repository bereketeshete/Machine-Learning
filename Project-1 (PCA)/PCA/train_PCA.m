function [project_train_img, k_eig_vec, m] = train_PCA(train_matrix,k)

%% Arguments %%
% train_matrix : training image matrix with dimension of N*d 
%               (N is the number of training images and d is the dimension of one images.)
% k: number of PCs

%% Your code here %%
% write code to find eigen vectors 'eigen_face'.

m = repmat(mean(train_matrix),size(train_matrix,1),1);
subtract_mean=train_matrix-m;
co=cov(subtract_mean);
[eigve, eigvl]=eig(co);
% Sort the eigen vectors according to the eigen values
eigvl = diag(eigvl);
[eigvl i] = sort(eigvl,'descend');
k_eig_vec=eigve(:,i);

project_train_img=mean((train_matrix*eigve').^2);
%(eigve')*(train_matrix)*(train_matrix')*(eigve);

%% display 3 biggest eigen vectors
for i = 1:3
    subplot(1,3,i)
    imagesc(reshape(k_eig_vec(:,i), 64, 64));
end

end
