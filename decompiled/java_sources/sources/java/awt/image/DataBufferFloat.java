package java.awt.image;

import sun.java2d.StateTrackable;

/* loaded from: classes5.dex */
public final class DataBufferFloat extends DataBuffer {
    float[][] bankdata;
    float[] data;

    public DataBufferFloat(int i) {
        super(StateTrackable.State.STABLE, 4, i);
        float[] fArr = new float[i];
        this.data = fArr;
        this.bankdata = r0;
        float[][] fArr2 = {fArr};
    }

    public float[][] getBankData() {
        this.theTrackable.setUntrackable();
        return (float[][]) this.bankdata.clone();
    }

    public float[] getData() {
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
        return this.data[i + this.offset];
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2) {
        this.data[i + this.offset] = i2;
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public void setElemDouble(int i, double d) {
        this.data[i + this.offset] = (float) d;
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
        return this.bankdata[i][i2 + this.offsets[i]];
    }

    public float[] getData(int i) {
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
        this.bankdata[i][i2 + this.offsets[i]] = (float) d;
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public void setElemFloat(int i, int i2, float f) {
        this.bankdata[i][i2 + this.offsets[i]] = f;
        this.theTrackable.markDirty();
    }

    public DataBufferFloat(int i, int i2) {
        super(StateTrackable.State.STABLE, 4, i, i2);
        this.bankdata = new float[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.bankdata[i3] = new float[i];
        }
        this.data = this.bankdata[0];
    }

    public DataBufferFloat(float[] fArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 4, i);
        this.data = fArr;
        this.bankdata = r4;
        float[][] fArr2 = {fArr};
    }

    public DataBufferFloat(float[] fArr, int i, int i2) {
        super(StateTrackable.State.UNTRACKABLE, 4, i, 1, i2);
        this.data = fArr;
        this.bankdata = r8;
        float[][] fArr2 = {fArr};
    }

    public DataBufferFloat(float[][] fArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 4, i, fArr.length);
        float[][] fArr2 = (float[][]) fArr.clone();
        this.bankdata = fArr2;
        this.data = fArr2[0];
    }

    public DataBufferFloat(float[][] fArr, int i, int[] iArr) {
        super(StateTrackable.State.UNTRACKABLE, 4, i, fArr.length, iArr);
        float[][] fArr2 = (float[][]) fArr.clone();
        this.bankdata = fArr2;
        this.data = fArr2[0];
    }
}
