import torch


def main():
    print(torch.__version__)
    print(torch.cuda.get_device_name())
    print(torch.cuda.device_count())
