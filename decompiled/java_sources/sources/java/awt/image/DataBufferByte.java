package java.awt.image;

import sun.java2d.StateTrackable;

/* loaded from: classes5.dex */
public final class DataBufferByte extends DataBuffer {
    byte[][] bankdata;
    byte[] data;

    public DataBufferByte(int i) {
        super(StateTrackable.State.STABLE, 0, i);
        byte[] bArr = new byte[i];
        this.data = bArr;
        this.bankdata = r0;
        byte[][] bArr2 = {bArr};
    }

    public byte[][] getBankData() {
        this.theTrackable.setUntrackable();
        return (byte[][]) this.bankdata.clone();
    }

    public byte[] getData() {
        this.theTrackable.setUntrackable();
        return this.data;
    }

    @Override // java.awt.image.DataBuffer
    public int getElem(int i) {
        return this.data[i + this.offset] & 255;
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2) {
        this.data[i + this.offset] = (byte) i2;
    }

    @Override // java.awt.image.DataBuffer
    public int getElem(int i, int i2) {
        return this.bankdata[i][i2 + this.offsets[i]] & 255;
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2, int i3) {
        this.bankdata[i][i2 + this.offsets[i]] = (byte) i3;
    }

    public byte[] getData(int i) {
        this.theTrackable.setUntrackable();
        return this.bankdata[i];
    }

    public DataBufferByte(int i, int i2) {
        super(StateTrackable.State.STABLE, 0, i, i2);
        this.bankdata = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.bankdata[i3] = new byte[i];
        }
        this.data = this.bankdata[0];
    }

    public DataBufferByte(byte[] bArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 0, i);
        this.data = bArr;
        this.bankdata = r4;
        byte[][] bArr2 = {bArr};
    }

    public DataBufferByte(byte[] bArr, int i, int i2) {
        super(StateTrackable.State.UNTRACKABLE, 0, i, 1, i2);
        this.data = bArr;
        this.bankdata = r8;
        byte[][] bArr2 = {bArr};
    }

    public DataBufferByte(byte[][] bArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 0, i, bArr.length);
        byte[][] bArr2 = (byte[][]) bArr.clone();
        this.bankdata = bArr2;
        this.data = bArr2[0];
    }

    public DataBufferByte(byte[][] bArr, int i, int[] iArr) {
        super(StateTrackable.State.UNTRACKABLE, 0, i, bArr.length, iArr);
        byte[][] bArr2 = (byte[][]) bArr.clone();
        this.bankdata = bArr2;
        this.data = bArr2[0];
    }
}
