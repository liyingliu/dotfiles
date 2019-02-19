# stdlib
import sys
import os
import shutil
import gzip

import time
from datetime import datetime

try:
    import numpy as np
    import cv2
    import scipy
    from cv2 import imread, imwrite, imshow
    import h5py
    import pickle
except BaseException:
    pass

# plot image locally
try:
    import matplotlib.pyplot as plt

    def show_img_2d(img):
        if img.shape[0] == 3 and len(img.shape) == 3 and img.shape[2] != 3:
            n = np.zeros((img.shape[1], img.shape[2], 3))
            for k in range(3):
                n[:, :, k] = img[k]
            img = n
        plt.imshow(img)
        plt.show()
except BaseException:
    pass
