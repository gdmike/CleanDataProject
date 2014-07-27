---
title: "Codebook for Clean Data Project"

---

The full original data was collected as follows:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing corresponding measures.

###Filtering the Data
The original data set was filtered to only use the mean and standard deviations available.  These were then collapsed to get the mean and standard deviation for each of 30 subjects doing each of the 6 activities described in the data.  This is represented in the final tidy data set.


Here is a list of the new variable labels.  The following explains what each term represents.  Using this as a guide will indicate what each variable label represents.
- Mean and Sdev indicate mean and standard deviation respectively
- the X, Y, Z represent the corresponding axis
- Body or Gravity represent the corresponding acceleration signal
- The "F-" indicates a variable derived from the FFT as described above.
- Jerk indicates Jerk signal as described above
- Mag indicates a magnitude using Euclidean norm.


These are the time domain signals Body and Gravity information, with mean and standard deviation for X,Y, and Z axis
Mean Body Accel - X
Mean Body Accel - Y
Mean Body Accel - Z

Sdev Body Accel - X
Sdev Body Accel - Y
Sdev Body Accel - Z

Mean Gravity Accel - X
Mean Gravity Accel - Y
Mean Gravity Accel - Z

Sdev Gravity Accel - X
Sdev Gravity Accel - Y
Sdev Gravity Accel - Z

Mean Body Accel Jerk - X
Mean Body Accel Jerk - Y
Mean Body Accel Jerk - Z

Sdev Body Accel Jerk - X
Sdev Body Accel Jerk - Y
Sdev Body Accel Jerk - Z

Mean Body Gyro  - X
Mean Body Gyro  - Y
Mean Body Gyro  - Z

Sdev Body Gyro  - X
Sdev Body Gyro  - Y
Sdev Body Gyro  - Z

Mean Body Gyro  Jerk - X
Mean Body Gyro  Jerk - Y
Mean Body Gyro  Jerk - Z

Sdev Body Gyro  Jerk - X
Sdev Body Gyro  Jerk - Y
Sdev Body Gyro  Jerk - Z

Body accel Mag - Mean
Body accel Mag - Sdev

Gravity accel Mag - Mean
Gravity accel Mag - Sdev

Body accel Jerk Mag - Mean
Body accel Jerk Mag - Sdev

Body Gyro Mag - Mean
Body Gyro Mag - Sdev

Body Gyro Jerk Mag - Mean
Body Gyro Jerk Mag - Sdev

F-Mean Body Accel - X
F-Mean Body Accel - Y
F-Mean Body Accel - Z

F-Sdev Body Accel - X
F-Sdev Body Accel - Y
F-Sdev Body Accel - Z

F-Mean Body Accel Jerk - X
F-Mean Body Accel Jerk - Y
F-Mean Body Accel Jerk - Z

F-Sdev Body Accel Jerk - X
F-Sdev Body Accel Jerk - Y
F-Sdev Body Accel Jerk - Z

F-Mean Body Gyro  Jerk - X
F-Mean Body Gyro  Jerk - Y
F-Mean Body Gyro  Jerk - Z

F-Sdev Body Gyro  Jerk - X
F-Sdev Body Gyro  Jerk - Y
F-Sdev Body Gyro  Jerk - Z

F-Body accel Mag - Mean
F-Body accel Mag - Sdev

F-Body accel Jerk Mag - Mean
F-Body accel Jerk Mag - Sdev

F-Body Gyro Mag - Mean
F-Body Gyro Mag - Sdev

F-Body Gyro Jerk Mag - Mean
F-Body Gyro Jerk Mag - Sdev
