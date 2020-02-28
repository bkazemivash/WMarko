function [res_bkv_BlockMaker] = Spliter(inputMatrix,m)
%SPLITER splits input matrix into smaller blocks with size of m by m
blockSize=[m, m];
wholeBlockRows = floor(size(inputMatrix,1)/ blockSize(1));
blockVectorR = [blockSize(1) * ones(1, wholeBlockRows), rem(size(inputMatrix,1), blockSize(1))];
wholeBlockCols = floor(size(inputMatrix,2)/ blockSize(2));
blockVectorC = [blockSize(2) * ones(1, wholeBlockCols), rem(size(inputMatrix,2), blockSize(2))];
matrixBlocks = mat2cell(inputMatrix, blockVectorR, blockVectorC, size(inputMatrix,3));
res_bkv_BlockMaker = matrixBlocks;
end
