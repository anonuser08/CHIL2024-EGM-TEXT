# python train.py --device=cuda:0 --batch=8 --patience=5 --model=vit --mask=0.75 --LF
# python train.py --device=cuda:0 --batch=8 --patience=5 --model=vit --mask=0.75 --TS
# python train.py --device=cuda:0 --batch=8 --patience=5 --model=vit --mask=0.75 --TA
python train_ecg.py --device=cuda:0 --batch=48 --patience=5 --model=bert --mask=0.75 --use_ce --mit
python train_ecg.py --device=cuda:0 --batch=48 --patience=5 --model=bert --mask=0.75 --mit