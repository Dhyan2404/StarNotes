package java.awt.image;

/* loaded from: classes5.dex */
public final class BandedSampleModel extends ComponentSampleModel {
    public BandedSampleModel(int i, int i2, int i3, int i4) {
        super(i, i2, i3, 1, i2, createIndicesArray(i4), createOffsetArray(i4));
    }

    private static int[] createIndicesArray(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    private static int[] createOffsetArray(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = 0;
        }
        return iArr;
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public SampleModel createCompatibleSampleModel(int i, int i2) {
        return new BandedSampleModel(this.dataType, i, i2, i, this.bankIndices, this.numBanks == 1 ? orderBands(this.bandOffsets, i * i2) : new int[this.bandOffsets.length]);
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public DataBuffer createDataBuffer() {
        int i = this.scanlineStride * this.height;
        int i2 = this.dataType;
        if (i2 == 0) {
            return new DataBufferByte(i, this.numBanks);
        }
        if (i2 == 1) {
            return new DataBufferUShort(i, this.numBanks);
        }
        if (i2 == 2) {
            return new DataBufferShort(i, this.numBanks);
        }
        if (i2 == 3) {
            return new DataBufferInt(i, this.numBanks);
        }
        if (i2 == 4) {
            return new DataBufferFloat(i, this.numBanks);
        }
        if (i2 == 5) {
            return new DataBufferDouble(i, this.numBanks);
        }
        throw new IllegalArgumentException("dataType is not one of the supported types.");
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
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
        return new BandedSampleModel(this.dataType, this.width, this.height, this.scanlineStride, iArr2, iArr3);
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
    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
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

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public int[] getPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[((ComponentSampleModel) this).numBands];
        }
        int i3 = (i2 * this.scanlineStride) + i;
        for (int i4 = 0; i4 < ((ComponentSampleModel) this).numBands; i4++) {
            iArr[i4] = dataBuffer.getElem(this.bankIndices[i4], this.bandOffsets[i4] + i3);
        }
        return iArr;
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public int[] getPixels(int i, int i2, int i3, int i4, int[] iArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[i3 * i4 * ((ComponentSampleModel) this).numBands];
        }
        for (int i9 = 0; i9 < ((ComponentSampleModel) this).numBands; i9++) {
            int i10 = (this.scanlineStride * i2) + i + this.bandOffsets[i9];
            int i11 = this.bankIndices[i9];
            int i12 = i9;
            for (int i13 = 0; i13 < i4; i13++) {
                int i14 = 0;
                int i15 = i10;
                while (i14 < i3) {
                    iArr[i12] = dataBuffer.getElem(i11, i15);
                    i12 += ((ComponentSampleModel) this).numBands;
                    i14++;
                    i15++;
                }
                i10 += this.scanlineStride;
            }
        }
        return iArr;
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public int getSample(int i, int i2, int i3, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        return dataBuffer.getElem(this.bankIndices[i3], (i2 * this.scanlineStride) + i + this.bandOffsets[i3]);
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public double getSampleDouble(int i, int i2, int i3, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        return dataBuffer.getElemDouble(this.bankIndices[i3], (i2 * this.scanlineStride) + i + this.bandOffsets[i3]);
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public float getSampleFloat(int i, int i2, int i3, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        return dataBuffer.getElemFloat(this.bankIndices[i3], (i2 * this.scanlineStride) + i + this.bandOffsets[i3]);
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public int[] getSamples(int i, int i2, int i3, int i4, int i5, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i + i3 > this.width || i2 + i4 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        if (iArr == null) {
            iArr = new int[i3 * i4];
        }
        int i6 = (i2 * this.scanlineStride) + i + this.bandOffsets[i5];
        int i7 = this.bankIndices[i5];
        int i8 = 0;
        for (int i9 = 0; i9 < i4; i9++) {
            int i10 = i6;
            int i11 = 0;
            while (i11 < i3) {
                iArr[i8] = dataBuffer.getElem(i7, i10);
                i11++;
                i8++;
                i10++;
            }
            i6 += this.scanlineStride;
        }
        return iArr;
    }

    @Override // java.awt.image.ComponentSampleModel
    public int hashCode() {
        return super.hashCode() ^ 2;
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public void setDataElements(int i, int i2, Object obj, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int transferType = getTransferType();
        int numDataElements = getNumDataElements();
        int i3 = (i2 * this.scanlineStride) + i;
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

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public void setPixel(int i, int i2, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i3 = (i2 * this.scanlineStride) + i;
        for (int i4 = 0; i4 < ((ComponentSampleModel) this).numBands; i4++) {
            dataBuffer.setElem(this.bankIndices[i4], this.bandOffsets[i4] + i3, iArr[i4]);
        }
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public void setPixels(int i, int i2, int i3, int i4, int[] iArr, DataBuffer dataBuffer) {
        int i5;
        int i6;
        int i7 = i + i3;
        int i8 = i2 + i4;
        if (i < 0 || i >= (i5 = this.width) || i3 > i5 || i7 < 0 || i7 > i5 || i2 < 0 || i2 >= (i6 = this.height) || i4 > i6 || i8 < 0 || i8 > i6) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        for (int i9 = 0; i9 < ((ComponentSampleModel) this).numBands; i9++) {
            int i10 = (this.scanlineStride * i2) + i + this.bandOffsets[i9];
            int i11 = this.bankIndices[i9];
            int i12 = i9;
            for (int i13 = 0; i13 < i4; i13++) {
                int i14 = 0;
                int i15 = i10;
                while (i14 < i3) {
                    dataBuffer.setElem(i11, i15, iArr[i12]);
                    i12 += ((ComponentSampleModel) this).numBands;
                    i14++;
                    i15++;
                }
                i10 += this.scanlineStride;
            }
        }
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public void setSample(int i, int i2, int i3, int i4, DataBuffer dataBuffer) {
        if (i >= 0 && i2 >= 0 && i < this.width && i2 < this.height) {
            dataBuffer.setElem(this.bankIndices[i3], (i2 * this.scanlineStride) + i + this.bandOffsets[i3], i4);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public void setSamples(int i, int i2, int i3, int i4, int i5, int[] iArr, DataBuffer dataBuffer) {
        if (i < 0 || i2 < 0 || i + i3 > this.width || i2 + i4 > this.height) {
            throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
        }
        int i6 = (i2 * this.scanlineStride) + i + this.bandOffsets[i5];
        int i7 = this.bankIndices[i5];
        int i8 = 0;
        for (int i9 = 0; i9 < i4; i9++) {
            int i10 = i6;
            int i11 = 0;
            while (i11 < i3) {
                dataBuffer.setElem(i7, i10, iArr[i8]);
                i11++;
                i10++;
                i8++;
            }
            i6 += this.scanlineStride;
        }
    }

    public BandedSampleModel(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        super(i, i2, i3, 1, i4, iArr, iArr2);
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public void setSample(int i, int i2, int i3, float f, DataBuffer dataBuffer) {
        if (i >= 0 && i2 >= 0 && i < this.width && i2 < this.height) {
            dataBuffer.setElemFloat(this.bankIndices[i3], (i2 * this.scanlineStride) + i + this.bandOffsets[i3], f);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public void setSample(int i, int i2, int i3, double d, DataBuffer dataBuffer) {
        if (i >= 0 && i2 >= 0 && i < this.width && i2 < this.height) {
            dataBuffer.setElemDouble(this.bankIndices[i3], (i2 * this.scanlineStride) + i + this.bandOffsets[i3], d);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Coordinate out of bounds!");
    }
}
