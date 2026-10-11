package java.awt.image;

/* loaded from: classes5.dex */
public abstract class SampleModel {
    protected int dataType;
    protected int height;
    protected int numBands;
    protected int width;

    static {
        ColorModel.loadLibraries();
        initIDs();
    }

    public SampleModel(int i, int i2, int i3, int i4) {
        long j = i2 * i3;
        if (i2 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Width (" + i2 + ") and height (" + i3 + ") must be > 0");
        }
        if (j >= 2147483647L) {
            throw new IllegalArgumentException("Dimensions (width=" + i2 + " height=" + i3 + ") are too large");
        }
        if (i < 0 || (i > 5 && i != 32)) {
            throw new IllegalArgumentException("Unsupported dataType: " + i);
        }
        if (i4 <= 0) {
            throw new IllegalArgumentException("Number of bands must be > 0");
        }
        this.dataType = i;
        this.width = i2;
        this.height = i3;
        this.numBands = i4;
    }

    private static void initIDs() {
    }

    public abstract SampleModel createCompatibleSampleModel(int i, int i2);

    public abstract DataBuffer createDataBuffer();

    public abstract SampleModel createSubsetSampleModel(int[] iArr);

    public Object getDataElements(int i, int i2, int i3, int i4, Object obj, DataBuffer dataBuffer) {
        int i5;
        int i6;
        byte[] bArr;
        short[] sArr;
        int[] iArr;
        float[] fArr;
        double[] dArr;
        int i7 = i2;
        int transferType = getTransferType();
        int numDataElements = getNumDataElements();
        int i8 = i + i3;
        int i9 = i7 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i8 < 0 || i8 > i5 || i7 < 0 || i7 >= (i6 = this.height) || i4 > i6 || i9 < 0 || i9 > i6) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        Object obj2 = null;
        if (transferType == 0) {
            if (obj == null) {
                bArr = new byte[i3 * numDataElements * i4];
            } else {
                bArr = (byte[]) obj;
            }
            int i10 = 0;
            while (i7 < i9) {
                for (int i11 = i; i11 < i8; i11++) {
                    obj2 = getDataElements(i11, i7, obj2, dataBuffer);
                    byte[] bArr2 = (byte[]) obj2;
                    int i12 = 0;
                    while (i12 < numDataElements) {
                        bArr[i10] = bArr2[i12];
                        i12++;
                        i10++;
                    }
                }
                i7++;
            }
            return bArr;
        }
        if (transferType == 1 || transferType == 2) {
            if (obj == null) {
                sArr = new short[i3 * numDataElements * i4];
            } else {
                sArr = (short[]) obj;
            }
            int i13 = 0;
            while (i7 < i9) {
                for (int i14 = i; i14 < i8; i14++) {
                    obj2 = getDataElements(i14, i7, obj2, dataBuffer);
                    short[] sArr2 = (short[]) obj2;
                    int i15 = 0;
                    while (i15 < numDataElements) {
                        sArr[i13] = sArr2[i15];
                        i15++;
                        i13++;
                    }
                }
                i7++;
            }
            return sArr;
        }
        if (transferType == 3) {
            if (obj == null) {
                iArr = new int[i3 * numDataElements * i4];
            } else {
                iArr = (int[]) obj;
            }
            int i16 = 0;
            while (i7 < i9) {
                for (int i17 = i; i17 < i8; i17++) {
                    obj2 = getDataElements(i17, i7, obj2, dataBuffer);
                    int[] iArr2 = (int[]) obj2;
                    int i18 = 0;
                    while (i18 < numDataElements) {
                        iArr[i16] = iArr2[i18];
                        i18++;
                        i16++;
                    }
                }
                i7++;
            }
            return iArr;
        }
        if (transferType == 4) {
            if (obj == null) {
                fArr = new float[i3 * numDataElements * i4];
            } else {
                fArr = (float[]) obj;
            }
            int i19 = 0;
            while (i7 < i9) {
                for (int i20 = i; i20 < i8; i20++) {
                    obj2 = getDataElements(i20, i7, obj2, dataBuffer);
                    float[] fArr2 = (float[]) obj2;
                    int i21 = 0;
                    while (i21 < numDataElements) {
                        fArr[i19] = fArr2[i21];
                        i21++;
                        i19++;
                    }
                }
                i7++;
            }
            return fArr;
        }
        if (transferType != 5) {
            return obj;
        }
        if (obj == null) {
            dArr = new double[i3 * numDataElements * i4];
        } else {
            dArr = (double[]) obj;
        }
        int i22 = 0;
        while (i7 < i9) {
            for (int i23 = i; i23 < i8; i23++) {
                obj2 = getDataElements(i23, i7, obj2, dataBuffer);
                double[] dArr2 = (double[]) obj2;
                int i24 = 0;
                while (i24 < numDataElements) {
                    dArr[i22] = dArr2[i24];
                    i24++;
                    i22++;
                }
            }
            i7++;
        }
        return dArr;
    }

    public abstract Object getDataElements(int i, int i2, Object obj, DataBuffer dataBuffer);

    public final int getDataType() {
        return this.dataType;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getNumBands() {
        return this.numBands;
    }

    public abstract int getNumDataElements();

    public int[] getPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (iArr == null) {
            iArr = new int[this.numBands];
        }
        for (int i3 = 0; i3 < this.numBands; i3++) {
            iArr[i3] = getSample(i, i2, i3, dataBuffer);
        }
        return iArr;
    }

    public int[] getPixels(int i, int i2, int i3, int i4, int[] iArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        if (iArr == null) {
            iArr = new int[this.numBands * i3 * i4];
        }
        int i9 = 0;
        while (i2 < i8) {
            for (int i10 = i; i10 < i7; i10++) {
                int i11 = 0;
                while (i11 < this.numBands) {
                    iArr[i9] = getSample(i10, i2, i11, dataBuffer);
                    i11++;
                    i9++;
                }
            }
            i2++;
        }
        return iArr;
    }

    public abstract int getSample(int i, int i2, int i3, DataBuffer dataBuffer);

    public double getSampleDouble(int i, int i2, int i3, DataBuffer dataBuffer) {
        return getSample(i, i2, i3, dataBuffer);
    }

    public float getSampleFloat(int i, int i2, int i3, DataBuffer dataBuffer) {
        return getSample(i, i2, i3, dataBuffer);
    }

    public abstract int getSampleSize(int i);

    public abstract int[] getSampleSize();

    public int[] getSamples(int i, int i2, int i3, int i4, int i5, int[] iArr, DataBuffer dataBuffer) {
        int i6 = i + i3;
        int i7 = i2 + i4;
        if (i < 0 || i6 < i || i6 > this.width || i2 < 0 || i7 < i2 || i7 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        if (iArr == null) {
            iArr = new int[i3 * i4];
        }
        int i8 = 0;
        while (i2 < i7) {
            int i9 = i;
            while (i9 < i6) {
                iArr[i8] = getSample(i9, i2, i5, dataBuffer);
                i9++;
                i8++;
            }
            i2++;
        }
        return iArr;
    }

    public int getTransferType() {
        return this.dataType;
    }

    public final int getWidth() {
        return this.width;
    }

    public void setDataElements(int i, int i2, int i3, int i4, Object obj, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int transferType = getTransferType();
        int numDataElements = getNumDataElements();
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        if (transferType == 0) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[numDataElements];
            int i9 = 0;
            while (i2 < i8) {
                for (int i10 = i; i10 < i7; i10++) {
                    int i11 = 0;
                    while (i11 < numDataElements) {
                        bArr2[i11] = bArr[i9];
                        i11++;
                        i9++;
                    }
                    setDataElements(i10, i2, bArr2, dataBuffer);
                }
                i2++;
            }
            return;
        }
        if (transferType == 1 || transferType == 2) {
            short[] sArr = (short[]) obj;
            short[] sArr2 = new short[numDataElements];
            int i12 = 0;
            while (i2 < i8) {
                for (int i13 = i; i13 < i7; i13++) {
                    int i14 = 0;
                    while (i14 < numDataElements) {
                        sArr2[i14] = sArr[i12];
                        i14++;
                        i12++;
                    }
                    setDataElements(i13, i2, sArr2, dataBuffer);
                }
                i2++;
            }
            return;
        }
        if (transferType == 3) {
            int[] iArr = (int[]) obj;
            int[] iArr2 = new int[numDataElements];
            int i15 = 0;
            while (i2 < i8) {
                for (int i16 = i; i16 < i7; i16++) {
                    int i17 = 0;
                    while (i17 < numDataElements) {
                        iArr2[i17] = iArr[i15];
                        i17++;
                        i15++;
                    }
                    setDataElements(i16, i2, iArr2, dataBuffer);
                }
                i2++;
            }
            return;
        }
        if (transferType == 4) {
            float[] fArr = (float[]) obj;
            float[] fArr2 = new float[numDataElements];
            int i18 = 0;
            while (i2 < i8) {
                for (int i19 = i; i19 < i7; i19++) {
                    int i20 = 0;
                    while (i20 < numDataElements) {
                        fArr2[i20] = fArr[i18];
                        i20++;
                        i18++;
                    }
                    setDataElements(i19, i2, fArr2, dataBuffer);
                }
                i2++;
            }
            return;
        }
        if (transferType != 5) {
            return;
        }
        double[] dArr = (double[]) obj;
        double[] dArr2 = new double[numDataElements];
        int i21 = 0;
        while (i2 < i8) {
            for (int i22 = i; i22 < i7; i22++) {
                int i23 = 0;
                while (i23 < numDataElements) {
                    dArr2[i23] = dArr[i21];
                    i23++;
                    i21++;
                }
                setDataElements(i22, i2, dArr2, dataBuffer);
            }
            i2++;
        }
    }

    public abstract void setDataElements(int i, int i2, Object obj, DataBuffer dataBuffer);

    public void setPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        for (int i3 = 0; i3 < this.numBands; i3++) {
            setSample(i, i2, i3, iArr[i3], dataBuffer);
        }
    }

    public void setPixels(int i, int i2, int i3, int i4, int[] iArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        int i9 = 0;
        for (int i10 = i2; i10 < i8; i10++) {
            for (int i11 = i; i11 < i7; i11++) {
                int i12 = 0;
                while (i12 < this.numBands) {
                    setSample(i11, i10, i12, iArr[i9], dataBuffer);
                    i12++;
                    i9++;
                }
            }
        }
    }

    public void setSample(int i, int i2, int i3, float f, DataBuffer dataBuffer) {
        setSample(i, i2, i3, (int) f, dataBuffer);
    }

    public abstract void setSample(int i, int i2, int i3, int i4, DataBuffer dataBuffer);

    public void setSamples(int i, int i2, int i3, int i4, int i5, int[] iArr, DataBuffer dataBuffer) {
        int i6;
        int i7;
        int i8 = i + i3;
        int i9 = i2 + i4;
        if (i < 0 || i >= (i6 = this.width) || i3 > i6 || i8 < 0 || i8 > i6 || i2 < 0 || i2 >= (i7 = this.height) || i4 > i7 || i9 < 0 || i9 > i7) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        int i10 = 0;
        for (int i11 = i2; i11 < i9; i11++) {
            int i12 = i;
            while (i12 < i8) {
                setSample(i12, i11, i5, iArr[i10], dataBuffer);
                i12++;
                i10++;
            }
        }
    }

    public void setSample(int i, int i2, int i3, double d, DataBuffer dataBuffer) {
        setSample(i, i2, i3, (int) d, dataBuffer);
    }

    public void setPixel(int i, int i2, float[] fArr, DataBuffer dataBuffer) {
        for (int i3 = 0; i3 < this.numBands; i3++) {
            setSample(i, i2, i3, fArr[i3], dataBuffer);
        }
    }

    public float[] getPixel(int i, int i2, float[] fArr, DataBuffer dataBuffer) {
        if (fArr == null) {
            fArr = new float[this.numBands];
        }
        for (int i3 = 0; i3 < this.numBands; i3++) {
            fArr[i3] = getSampleFloat(i, i2, i3, dataBuffer);
        }
        return fArr;
    }

    public void setSamples(int i, int i2, int i3, int i4, int i5, float[] fArr, DataBuffer dataBuffer) {
        int i6;
        int i7;
        int i8 = i + i3;
        int i9 = i2 + i4;
        if (i < 0 || i >= (i6 = this.width) || i3 > i6 || i8 < 0 || i8 > i6 || i2 < 0 || i2 >= (i7 = this.height) || i4 > i7 || i9 < 0 || i9 > i7) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        int i10 = 0;
        for (int i11 = i2; i11 < i9; i11++) {
            int i12 = i;
            while (i12 < i8) {
                setSample(i12, i11, i5, fArr[i10], dataBuffer);
                i12++;
                i10++;
            }
        }
    }

    public float[] getSamples(int i, int i2, int i3, int i4, int i5, float[] fArr, DataBuffer dataBuffer) {
        int i6 = i + i3;
        int i7 = i2 + i4;
        if (i < 0 || i6 < i || i6 > this.width || i2 < 0 || i7 < i2 || i7 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates");
        }
        if (fArr == null) {
            fArr = new float[i3 * i4];
        }
        int i8 = 0;
        while (i2 < i7) {
            int i9 = i;
            while (i9 < i6) {
                fArr[i8] = getSampleFloat(i9, i2, i5, dataBuffer);
                i9++;
                i8++;
            }
            i2++;
        }
        return fArr;
    }

    public void setPixel(int i, int i2, double[] dArr, DataBuffer dataBuffer) {
        for (int i3 = 0; i3 < this.numBands; i3++) {
            setSample(i, i2, i3, dArr[i3], dataBuffer);
        }
    }

    public void setPixels(int i, int i2, int i3, int i4, float[] fArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        int i9 = 0;
        for (int i10 = i2; i10 < i8; i10++) {
            for (int i11 = i; i11 < i7; i11++) {
                int i12 = 0;
                while (i12 < this.numBands) {
                    setSample(i11, i10, i12, fArr[i9], dataBuffer);
                    i12++;
                    i9++;
                }
            }
        }
    }

    public float[] getPixels(int i, int i2, int i3, int i4, float[] fArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        if (fArr == null) {
            fArr = new float[this.numBands * i3 * i4];
        }
        int i9 = 0;
        while (i2 < i8) {
            for (int i10 = i; i10 < i7; i10++) {
                int i11 = 0;
                while (i11 < this.numBands) {
                    fArr[i9] = getSampleFloat(i10, i2, i11, dataBuffer);
                    i11++;
                    i9++;
                }
            }
            i2++;
        }
        return fArr;
    }

    public double[] getPixel(int i, int i2, double[] dArr, DataBuffer dataBuffer) {
        if (dArr == null) {
            dArr = new double[this.numBands];
        }
        for (int i3 = 0; i3 < this.numBands; i3++) {
            dArr[i3] = getSampleDouble(i, i2, i3, dataBuffer);
        }
        return dArr;
    }

    public void setSamples(int i, int i2, int i3, int i4, int i5, double[] dArr, DataBuffer dataBuffer) {
        int i6;
        int i7;
        int i8 = i + i3;
        int i9 = i2 + i4;
        if (i < 0 || i >= (i6 = this.width) || i3 > i6 || i8 < 0 || i8 > i6 || i2 < 0 || i2 >= (i7 = this.height) || i4 > i7 || i9 < 0 || i9 > i7) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        int i10 = 0;
        for (int i11 = i2; i11 < i9; i11++) {
            int i12 = i;
            while (i12 < i8) {
                setSample(i12, i11, i5, dArr[i10], dataBuffer);
                i12++;
                i10++;
            }
        }
    }

    public double[] getSamples(int i, int i2, int i3, int i4, int i5, double[] dArr, DataBuffer dataBuffer) {
        int i6 = i + i3;
        int i7 = i2 + i4;
        if (i < 0 || i6 < i || i6 > this.width || i2 < 0 || i7 < i2 || i7 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates");
        }
        if (dArr == null) {
            dArr = new double[i3 * i4];
        }
        int i8 = 0;
        while (i2 < i7) {
            int i9 = i;
            while (i9 < i6) {
                dArr[i8] = getSampleDouble(i9, i2, i5, dataBuffer);
                i9++;
                i8++;
            }
            i2++;
        }
        return dArr;
    }

    public void setPixels(int i, int i2, int i3, int i4, double[] dArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        int i9 = 0;
        for (int i10 = i2; i10 < i8; i10++) {
            for (int i11 = i; i11 < i7; i11++) {
                int i12 = 0;
                while (i12 < this.numBands) {
                    setSample(i11, i10, i12, dArr[i9], dataBuffer);
                    i12++;
                    i9++;
                }
            }
        }
    }

    public double[] getPixels(int i, int i2, int i3, int i4, double[] dArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Invalid coordinates.");
        }
        if (dArr == null) {
            dArr = new double[this.numBands * i3 * i4];
        }
        int i9 = 0;
        while (i2 < i8) {
            for (int i10 = i; i10 < i7; i10++) {
                int i11 = 0;
                while (i11 < this.numBands) {
                    dArr[i9] = getSampleDouble(i10, i2, i11, dataBuffer);
                    i11++;
                    i9++;
                }
            }
            i2++;
        }
        return dArr;
    }
}
