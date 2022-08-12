from distutils import extension
from bids import BIDSLayout
import sys
import os

mp2rage_correction_dir = sys.argv[1]
subject = sys.argv[2]

layout_sub = BIDSLayout(os.path.join(mp2rage_correction_dir, subject),validate=False)
t1w = layout_sub.get(suffix='T1w', extension='nii.gz',invalid_filters=True)[0].path

print(t1w)

# inv1 = layout_sub.get(inv=1,suffix ='MP2RAGE', extension='nii.gz',invalid_filters=True)[0].path
# inv2 = layout_sub.get(inv=1,suffix ='MP2RAGE', extension='nii.gz',invalid_filters=True)[0].path
# uni = layout_sub.get(acq = 'UNI',suffix ='MP2RAGE', extension='nii.gz',invalid_filters=True)[0].path

# if 'inv1' in input_type:
#     print(inv1)
# elif 'inv2' in input_type:
#     print(inv2)
# elif 'uni' in input_type:
#     print(uni)