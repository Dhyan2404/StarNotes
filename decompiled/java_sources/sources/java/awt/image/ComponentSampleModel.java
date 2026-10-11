package java.awt.image;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;

/* loaded from: classes5.dex */
public class ComponentSampleModel extends SampleModel {
    protected int[] bandOffsets;
    protected int[] bankIndices;
    protected int numBands;
    protected int numBanks;
    protected int pixelStride;
    protected int scanlineStride;

    static {
        ColorModel.loadLibraries();
        initIDs();
    }

    public ComponentSampleModel(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        super(i, i2, i3, iArr.length);
        this.numBands = 1;
        this.numBanks = 1;
        this.dataType = i;
        this.pixelStride = i4;
        this.scanlineStride = i5;
        int[] iArr2 = (int[]) iArr.clone();
        this.bandOffsets = iArr2;
        int length = iArr2.length;
        this.numBands = length;
        if (i4 < 0) {
            throw new IllegalArgumentException("Pixel stride must be >= 0");
        }
        if (i5 < 0) {
            throw new IllegalArgumentException("Scanline stride must be >= 0");
        }
        if (length < 1) {
            throw new IllegalArgumentException("Must have at least one band.");
        }
        if (i >= 0 && i <= 5) {
            this.bankIndices = new int[length];
            for (int i6 = 0; i6 < this.numBands; i6++) {
                this.bankIndices[i6] = 0;
            }
            verify();
            return;
        }
        throw new IllegalArgumentException("Unsupported dataType.");
    }

    private int getBufferSize() {
        int i = this.bandOffsets[0];
        int i2 = 1;
        while (true) {
            int[] iArr = this.bandOffsets;
            if (i2 >= iArr.length) {
                break;
            }
            i = Math.max(i, iArr[i2]);
            i2++;
        }
        if (i < 0 || i > 2147483646) {
            throw new IllegalArgumentException("Invalid band offset");
        }
        int i3 = this.pixelStride;
        if (i3 >= 0) {
            int i4 = this.width;
            if (i3 <= Integer.MAX_VALUE / i4) {
                int i5 = this.scanlineStride;
                if (i5 >= 0) {
                    int i6 = this.height;
                    if (i5 <= Integer.MAX_VALUE / i6) {
                        int i7 = i + 1;
                        int i8 = i3 * (i4 - 1);
                        if (i8 > Integer.MAX_VALUE - i7) {
                            throw new IllegalArgumentException("Invalid pixel stride");
                        }
                        int i9 = i7 + i8;
                        int i10 = i5 * (i6 - 1);
                        if (i10 <= Integer.MAX_VALUE - i9) {
                            return i9 + i10;
                        }
                        throw new IllegalArgumentException("Invalid scan stride");
                    }
                }
                throw new IllegalArgumentException("Invalid scanline stride");
            }
        }
        throw new IllegalArgumentException("Invalid pixel stride");
    }

    private static void initIDs() {
    }

    private void verify() {
        getBufferSize();
    }

    @Override // java.awt.image.SampleModel
    public SampleModel createCompatibleSampleModel(int i, int i2) {
        int[] iArr;
        int[] orderBands;
        int[] iArr2;
        int i3;
        int[] iArr3;
        int i4;
        int i5 = this.bandOffsets[0];
        int i6 = i5;
        int i7 = 1;
        while (true) {
            iArr = this.bandOffsets;
            if (i7 >= iArr.length) {
                break;
            }
            i6 = Math.min(i6, iArr[i7]);
            i5 = Math.max(i5, this.bandOffsets[i7]);
            i7++;
        }
        int length = iArr.length;
        int abs = Math.abs(this.pixelStride);
        int abs2 = Math.abs(this.scanlineStride);
        int abs3 = Math.abs(i5 - i6);
        if (abs > abs2) {
            if (abs <= abs3) {
                abs = abs2 * i2;
                orderBands = orderBands(this.bandOffsets, abs * i);
            } else if (abs2 > abs3) {
                iArr2 = new int[this.bandOffsets.length];
                for (int i8 = 0; i8 < length; i8++) {
                    iArr2[i8] = this.bandOffsets[i8] - i6;
                }
                abs2 = abs3 + 1;
                i3 = abs2 * i2;
                iArr3 = iArr2;
                abs = i3;
            } else {
                orderBands = orderBands(this.bandOffsets, abs2 * i2);
                abs = length * abs2 * i2;
            }
            iArr3 = orderBands;
        } else if (abs > abs3) {
            iArr2 = new int[this.bandOffsets.length];
            for (int i9 = 0; i9 < length; i9++) {
                iArr2[i9] = this.bandOffsets[i9] - i6;
            }
            i3 = abs3 + 1;
            abs2 = i3 * i;
            iArr3 = iArr2;
            abs = i3;
        } else {
            if (abs2 > abs3) {
                orderBands = orderBands(this.bandOffsets, abs * i);
                abs2 = length * abs * i;
            } else {
                abs2 = abs * i;
                orderBands = orderBands(this.bandOffsets, abs2 * i2);
            }
            iArr3 = orderBands;
        }
        if (this.scanlineStride < 0) {
            i4 = (abs2 * i2) + 0;
            abs2 *= -1;
        } else {
            i4 = 0;
        }
        if (this.pixelStride < 0) {
            i4 += abs * i;
            abs *= -1;
        }
        int i10 = abs;
        for (int i11 = 0; i11 < length; i11++) {
            iArr3[i11] = iArr3[i11] + i4;
        }
        return new ComponentSampleModel(this.dataType, i, i2, i10, abs2, this.bankIndices, iArr3);
    }

    @Override // java.awt.image.SampleModel
    public DataBuffer createDataBuffer() {
        DataBuffer dataBufferByte;
        int bufferSize = getBufferSize();
        int i = this.dataType;
        if (i == 0) {
            dataBufferByte = new DataBufferByte(bufferSize, this.numBanks);
        } else if (i == 1) {
            dataBufferByte = new DataBufferUShort(bufferSize, this.numBanks);
        } else if (i == 2) {
            dataBufferByte = new DataBufferShort(bufferSize, this.numBanks);
        } else if (i == 3) {
            dataBufferByte = new DataBufferInt(bufferSize, this.numBanks);
        } else if (i == 4) {
            dataBufferByte = new DataBufferFloat(bufferSize, this.numBanks);
        } else {
            if (i != 5) {
                return null;
            }
            dataBufferByte = new DataBufferDouble(bufferSize, this.numBanks);
        }
        return dataBufferByte;
    }

    @Override // java.awt.image.SampleModel
    public SampleModel createSubsetSampleModel(int[] iArr) {
        if (iArr.length > this.bankIndices.length) {
            throw new RasterFormatException("There are only " + this.bankIndices.length + " bands");
        }
        int[] iArr2 = new int[iArr.length];
        int[] iArr3 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = this.bankIndices[iArr[i]];
            iArr3[i] = this.bandOffsets[iArr[i]];
        }
        return new ComponentSampleModel(this.dataType, this.width, this.height, this.pixelStride, this.scanlineStride, iArr2, iArr3);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ComponentSampleModel)) {
            return false;
        }
        ComponentSampleModel componentSampleModel = (ComponentSampleModel) obj;
        return this.width == componentSampleModel.width && this.height == componentSampleModel.height && this.numBands == componentSampleModel.numBands && this.dataType == componentSampleModel.dataType && Arrays.equals(this.bandOffsets, componentSampleModel.bandOffsets) && Arrays.equals(this.bankIndices, componentSampleModel.bankIndices) && this.numBands == componentSampleModel.numBands && this.numBanks == componentSampleModel.numBanks && this.scanlineStride == componentSampleModel.scanlineStride && this.pixelStride == componentSampleModel.pixelStride;
    }

    public final int[] getBandOffsets() {
        return (int[]) this.bandOffsets.clone();
    }

    public final int[] getBankIndices() {
        return (int[]) this.bankIndices.clone();
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [java.lang.Object, byte[], short[]], vars: [r7v0 ??, r7v4 ??, r7v2 byte[], r7v25 ??, r7v26 ??, r7v6 short[], r7v23 ??, r7v24 ??, r7v9 ??, r7v21 ??, r7v22 ??, r7v12 ??, r7v19 ??, r7v20 ??, r7v15 ??, r7v17 ??, r7v18 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.rerun(InitCodeVariables.java:36)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryInsertAdditionalMove(FixTypesVisitor.java:553)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:91)
        */
    @Override // java.awt.image.SampleModel
    public java.lang.Object getDataElements(int r5, int r6, 
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r7v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:237)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:223)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:168)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:401)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [java.lang.Object, byte[], short[]], vars: [r7v0 ??, r7v4 ??, r7v2 byte[], r7v25 ??, r7v26 ??, r7v6 short[], r7v23 ??, r7v24 ??, r7v9 ??, r7v21 ??, r7v22 ??, r7v12 ??, r7v19 ??, r7v20 ??, r7v15 ??, r7v17 ??, r7v18 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.rerun(InitCodeVariables.java:36)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryInsertAdditionalMove(FixTypesVisitor.java:553)
        */

    @Override // java.awt.image.SampleModel
    public final int getNumDataElements() {
        return getNumBands();
    }

    public int getOffset(int i, int i2) {
        return (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[0];
    }

    @Override // java.awt.image.SampleModel
    public int[] getPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[this.numBands];
        }
        int i3 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        for (int i4 = 0; i4 < this.numBands; i4++) {
            iArr[i4] = dataBuffer.getElem(this.bankIndices[i4], this.bandOffsets[i4] + i3);
        }
        return iArr;
    }

    public final int getPixelStride() {
        return this.pixelStride;
    }

    @Override // java.awt.image.SampleModel
    public int[] getPixels(int i, int i2, int i3, int i4, int[] iArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i2 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[i3 * i4 * this.numBands];
        }
        int i9 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = i9;
            for (int i13 = 0; i13 < i3; i13++) {
                int i14 = 0;
                while (i14 < this.numBands) {
                    iArr[i10] = dataBuffer.getElem(this.bankIndices[i14], this.bandOffsets[i14] + i12);
                    i14++;
                    i10++;
                }
                i12 += this.pixelStride;
            }
            i9 += this.scanlineStride;
        }
        return iArr;
    }

    @Override // java.awt.image.SampleModel
    public int getSample(int i, int i2, int i3, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        return dataBuffer.getElem(this.bankIndices[i3], (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i3]);
    }

    @Override // java.awt.image.SampleModel
    public double getSampleDouble(int i, int i2, int i3, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        return dataBuffer.getElemDouble(this.bankIndices[i3], (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i3]);
    }

    @Override // java.awt.image.SampleModel
    public float getSampleFloat(int i, int i2, int i3, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        return dataBuffer.getElemFloat(this.bankIndices[i3], (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i3]);
    }

    @Override // java.awt.image.SampleModel
    public final int[] getSampleSize() {
        int[] iArr = new int[this.numBands];
        int sampleSize = getSampleSize(0);
        for (int i = 0; i < this.numBands; i++) {
            iArr[i] = sampleSize;
        }
        return iArr;
    }

    @Override // java.awt.image.SampleModel
    public int[] getSamples(int i, int i2, int i3, int i4, int i5, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i + i3 > this.width || i2 + i4 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[i3 * i4];
        }
        int i6 = (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i5];
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            int i10 = i6;
            while (i9 < i3) {
                iArr[i7] = dataBuffer.getElem(this.bankIndices[i5], i10);
                i10 += this.pixelStride;
                i9++;
                i7++;
            }
            i6 += this.scanlineStride;
        }
        return iArr;
    }

    public final int getScanlineStride() {
        return this.scanlineStride;
    }

    public int hashCode() {
        int i = ((((((this.width << 8) ^ this.height) << 8) ^ this.numBands) << 8) ^ this.dataType) << 8;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = this.bandOffsets;
            if (i3 >= iArr.length) {
                break;
            }
            i = (i ^ iArr[i3]) << 8;
            i3++;
        }
        while (true) {
            int[] iArr2 = this.bankIndices;
            if (i2 >= iArr2.length) {
                return this.pixelStride ^ ((((((i ^ this.numBands) << 8) ^ this.numBanks) << 8) ^ this.scanlineStride) << 8);
            }
            i = (i ^ iArr2[i2]) << 8;
            i2++;
        }
    }

    public int[] orderBands(int[] iArr, int i) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int length2 = iArr.length;
        int[] iArr3 = new int[length2];
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            iArr2[i3] = i3;
        }
        while (i2 < length2) {
            int i4 = i2 + 1;
            int i5 = i2;
            for (int i6 = i4; i6 < length2; i6++) {
                if (iArr[iArr2[i5]] > iArr[iArr2[i6]]) {
                    i5 = i6;
                }
            }
            iArr3[iArr2[i5]] = i2 * i;
            iArr2[i5] = iArr2[i2];
            i2 = i4;
        }
        return iArr3;
    }

    @Override // java.awt.image.SampleModel
    public void setDataElements(int i, int i2, Object obj, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int transferType = getTransferType();
        int numDataElements = getNumDataElements();
        int i3 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        int i4 = 0;
        if (transferType == 0) {
            byte[] bArr = (byte[]) obj;
            while (i4 < numDataElements) {
                dataBuffer.setElem(this.bankIndices[i4], this.bandOffsets[i4] + i3, bArr[i4] & 255);
                i4++;
            }
            return;
        }
        if (transferType == 1 || transferType == 2) {
            short[] sArr = (short[]) obj;
            while (i4 < numDataElements) {
                dataBuffer.setElem(this.bankIndices[i4], this.bandOffsets[i4] + i3, sArr[i4] & 65535);
                i4++;
            }
            return;
        }
        if (transferType == 3) {
            int[] iArr = (int[]) obj;
            while (i4 < numDataElements) {
                dataBuffer.setElem(this.bankIndices[i4], this.bandOffsets[i4] + i3, iArr[i4]);
                i4++;
            }
            return;
        }
        if (transferType == 4) {
            float[] fArr = (float[]) obj;
            while (i4 < numDataElements) {
                dataBuffer.setElemFloat(this.bankIndices[i4], this.bandOffsets[i4] + i3, fArr[i4]);
                i4++;
            }
            return;
        }
        if (transferType != 5) {
            return;
        }
        double[] dArr = (double[]) obj;
        while (i4 < numDataElements) {
            dataBuffer.setElemDouble(this.bankIndices[i4], this.bandOffsets[i4] + i3, dArr[i4]);
            i4++;
        }
    }

    @Override // java.awt.image.SampleModel
    public void setPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i3 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        for (int i4 = 0; i4 < this.numBands; i4++) {
            dataBuffer.setElem(this.bankIndices[i4], this.bandOffsets[i4] + i3, iArr[i4]);
        }
    }

    @Override // java.awt.image.SampleModel
    public void setPixels(int i, int i2, int i3, int i4, int[] iArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i9 = (i2 * this.scanlineStride) + (i * this.pixelStride);
        int i10 = 0;
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = i9;
            for (int i13 = 0; i13 < i3; i13++) {
                int i14 = 0;
                while (i14 < this.numBands) {
                    dataBuffer.setElem(this.bankIndices[i14], this.bandOffsets[i14] + i12, iArr[i10]);
                    i14++;
                    i10++;
                }
                i12 += this.pixelStride;
            }
            i9 += this.scanlineStride;
        }
    }

    @Override // java.awt.image.SampleModel
    public void setSample(int i, int i2, int i3, int i4, DataBuffer dataBuffer) {
        if (i >= 0 && i2 >= 0 && i < this.width && i2 < this.height) {
            dataBuffer.setElem(this.bankIndices[i3], (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i3], i4);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // java.awt.image.SampleModel
    public void setSamples(int i, int i2, int i3, int i4, int i5, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i + i3 > this.width || i2 + i4 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i6 = (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i5];
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            int i10 = i6;
            while (i9 < i3) {
                dataBuffer.setElem(this.bankIndices[i5], i10, iArr[i7]);
                i10 += this.pixelStride;
                i9++;
                i7++;
            }
            i6 += this.scanlineStride;
        }
    }

    public int getOffset(int i, int i2, int i3) {
        return (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i3];
    }

    @Override // java.awt.image.SampleModel
    public void setSample(int i, int i2, int i3, float f, DataBuffer dataBuffer) {
        if (i >= 0 && i2 >= 0 && i < this.width && i2 < this.height) {
            dataBuffer.setElemFloat(this.bankIndices[i3], (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i3], f);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // java.awt.image.SampleModel
    public final int getSampleSize(int i) {
        return DataBuffer.getDataTypeSize(this.dataType);
    }

    @Override // java.awt.image.SampleModel
    public void setSample(int i, int i2, int i3, double d, DataBuffer dataBuffer) {
        if (i >= 0 && i2 >= 0 && i < this.width && i2 < this.height) {
            dataBuffer.setElemDouble(this.bankIndices[i3], (i2 * this.scanlineStride) + (i * this.pixelStride) + this.bandOffsets[i3], d);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    public ComponentSampleModel(int i, int i2, int i3, int i4, int i5, int[] iArr, int[] iArr2) {
        super(i, i2, i3, iArr2.length);
        this.numBands = 1;
        this.numBanks = 1;
        this.dataType = i;
        this.pixelStride = i4;
        this.scanlineStride = i5;
        this.bandOffsets = (int[]) iArr2.clone();
        int[] iArr3 = (int[]) iArr.clone();
        this.bankIndices = iArr3;
        if (i4 < 0) {
            throw new IllegalArgumentException("Pixel stride must be >= 0");
        }
        if (i5 < 0) {
            throw new IllegalArgumentException("Scanline stride must be >= 0");
        }
        if (i >= 0 && i <= 5) {
            int i6 = iArr3[0];
            if (i6 < 0) {
                throw new IllegalArgumentException("Index of bank 0 is less than 0 (" + i6 + MotionUtils.f31762d);
            }
            int i7 = 1;
            while (true) {
                int[] iArr4 = this.bankIndices;
                if (i7 < iArr4.length) {
                    int i8 = iArr4[i7];
                    if (i8 > i6) {
                        i6 = i8;
                    } else if (i8 < 0) {
                        throw new IllegalArgumentException("Index of bank " + i7 + " is less than 0 (" + i6 + MotionUtils.f31762d);
                    }
                    i7++;
                } else {
                    this.numBanks = i6 + 1;
                    int[] iArr5 = this.bandOffsets;
                    this.numBands = iArr5.length;
                    if (iArr5.length == iArr4.length) {
                        verify();
                        return;
                    }
                    throw new IllegalArgumentException("Length of bandOffsets must equal length of bankIndices.");
                }
            }
        } else {
            throw new IllegalArgumentException("Unsupported dataType.");
        }
    }
}
