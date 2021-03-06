function [recon_error]=train_recon(train_matrix,k_eig_vec, eigen_face,m)

%% Arguments %%
% train_matrix : training data matrix with dimension of N*d 
%               (N is the number of training images and d is the dimension of one images.)
% project_train_img : training matrix represented by k PCs
% k_eig_vec : k biggest eigen vectors.
% m: mean from training matrix.
 
%% Your code here %%
% write code to find reconstructed image 'recon_img' and reconstruction
% error.
recon_img=k_eig_vec;
recon_error=mean(norm(mean(train_matrix)-k_eig_vec));



% %% save reconstructed images in the folder 'train_reconstruction'
% face = zeros(64,64);
% mkdir('train_reconstruction')
% for i=1:size(recon_img,1)
%     fname = sprintf('train_reconstruction/%dres.jpg',i);
%     face(:) = recon_img(i,:);
%     imwrite(uint8(face), fname);
% end
% end

