# Interpretation of Intracardiac Electrograms Through Textual Representations

Anonymous code for CHIL 2024 submission.

## Set Up Environment

Note: We have only tested on Ubuntu 20.04.5 LTS. 

1. `conda create -n envname python=3.8`

2. `conda activate envname`

3. `git clone https://github.com/willxxy/ekg-af.git`

4. `cd ekg-af`

5. `pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113`

Note: Please ensure that the pip you are using is from the conda environment

6. Test if pytorch version is compatible with current, available gpus by executing `python gpu.py`. Currently, we have only tested on A5000 and A6000 NVIDIA GPUs.

7. `pip install -r requirements.txt`

## Set Up Data

1. Please create a `data` folder and place all EGM data under there as a .npy file. 

## Start Training

1. From the preprocess folder `cd ../` back to the main directory.

2. You can now directly use `train.sh` files to start training.

## Inference

1. Please execute `sh inference.sh` after training.

## Visualizations

All visualizations will be saved under their respective checkpoint folder.
Please `cd visualize` before visualizing. 
Under the `visualize` folder, please view the following scripts:


1. `stitch.sh` - Visualizes the reconstructed and forecasted signals. 

2. `viz_tokens.sh` - Visualizes the tokenized representation of the signal. 

3. `viz_attentions.sh` - Visualizes the attention map of the model. 

4. `viz_int_grad.sh` - Visualizes the attribution scores of the model.