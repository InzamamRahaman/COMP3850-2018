memories = [
    1,1,1;
    -1,-1,-1
];

W = hopfieldWeights(memories);

correct = testHopfield(W, memories);

compute(W, memories(1,:))
compute(W, memories(2,:))