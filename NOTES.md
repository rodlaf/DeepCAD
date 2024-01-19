
python lgan.py --exp_name pretrained --ae_ckpt 1000 --ckpt 200000 --test --n_samples 10 -g 0

python test.py --exp_name pretrained --mode dec --ckpt 1000 --z_path proj_log/pretrained/lgan_1000/results/fake_z_ckpt200000_num10.h5 -g 0

python utils/export2step.py --src /home/rodney/DeepCAD/proj_log/pretrained/lgan_1000/results/fake_z_ckpt200000_num10_dec


## Additional packages that need to be installed

* `apt-get install libgl1`
* `cd ~/DeepCAD/cadlib && pip install .`

## TODOS

* sort out pyproject.toml (put all requirements.txt stuff in there)
* upload pretrained model weights somewhere I own