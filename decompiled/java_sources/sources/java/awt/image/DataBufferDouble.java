package java.awt.image;

import sun.java2d.StateTrackable;

/* loaded from: classes5.dex */
public final class DataBufferDouble extends DataBuffer {
    double[][] bankdata;
    double[] data;

    public DataBufferDouble(int i) {
        super(StateTrackable.State.STABLE, 5, i);
        double[] dArr = new double[i];
        this.data = dArr;
        this.bankdata = r0;
        double[][] dArr2 = {dArr};
    }

    public double[][] getBankData() {
        this.theTrackable.setUntrackable();
        return (double[][]) this.bankdata.clone();
    }

    public double[] getData() {
        this.theTrackable.setUntrackable();
        return this.data;
    }

    @Override // java.awt.image.DataBuffer
    public int getElem(int i) {
        return (int) this.data[i + this.offset];
    }

    @Override // java.awt.image.DataBuffer
    public double getElemDouble(int i) {
        return this.data[i + this.offset];
    }

    @Override // java.awt.image.DataBuffer
    public float getElemFloat(int i) {
        return (float) this.data[i + this.offset];
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2) {
        this.data[i + this.offset] = i2;
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public void setElemDouble(int i, double d) {
        this.data[i + this.offset] = d;
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public void setElemFloat(int i, float f) {
        this.data[i + this.offset] = f;
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public int getElem(int i, int i2) {
        return (int) this.bankdata[i][i2 + this.offsets[i]];
    }

    @Override // java.awt.image.DataBuffer
    public double getElemDouble(int i, int i2) {
        return this.bankdata[i][i2 + this.offsets[i]];
    }

    @Override // java.awt.image.DataBuffer
    public float getElemFloat(int i, int i2) {
        return (float) this.bankdata[i][i2 + this.offsets[i]];
    }

    public double[] getData(int i) {
        this.theTrackable.setUntrackable();
        return this.bankdata[i];
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2, int i3) {
        this.bankdata[i][i2 + this.offsets[i]] = i3;
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public void setElemDouble(int i, int i2, double d) {
        this.bankdata[i][i2 + this.offsets[i]] = d;
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public void setElemFloat(int i, int i2, float f) {
        this.bankdata[i][i2 + this.offsets[i]] = f;
        this.theTrackable.markDirty();
    }

    public DataBufferDouble(int i, int i2) {
        super(StateTrackable.State.STABLE, 5, i, i2);
        this.bankdata = new double[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.bankdata[i3] = new double[i];
        }
        this.data = this.bankdata[0];
    }

    public DataBufferDouble(double[] dArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 5, i);
        this.data = dArr;
        this.bankdata = r4;
        double[][] dArr2 = {dArr};
    }

    public DataBufferDouble(double[] dArr, int i, int i2) {
        super(StateTrackable.State.UNTRACKABLE, 5, i, 1, i2);
        this.data = dArr;
        this.bankdata = r8;
        double[][] dArr2 = {dArr};
    }

    public DataBufferDouble(double[][] dArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 5, i, dArr.length);
        double[][] dArr2 = (double[][]) dArr.clone();
        this.bankdata = dArr2;
        this.data = dArr2[0];
    }

    public DataBufferDouble(double[][] dArr, int i, int[] iArr) {
        super(StateTrackable.State.UNTRACKABLE, 5, i, dArr.length, iArr);
        double[][] dArr2 = (double[][]) dArr.clone();
        this.bankdata = dArr2;
        this.data = dArr2[0];
    }
}
