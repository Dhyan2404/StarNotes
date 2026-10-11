package java.awt.image;

import sun.java2d.StateTrackable;

/* loaded from: classes5.dex */
public final class DataBufferShort extends DataBuffer {
    short[][] bankdata;
    short[] data;

    public DataBufferShort(int i) {
        super(StateTrackable.State.STABLE, 2, i);
        short[] sArr = new short[i];
        this.data = sArr;
        this.bankdata = r0;
        short[][] sArr2 = {sArr};
    }

    public short[][] getBankData() {
        this.theTrackable.setUntrackable();
        return (short[][]) this.bankdata.clone();
    }

    public short[] getData() {
        this.theTrackable.setUntrackable();
        return this.data;
    }

    @Override // java.awt.image.DataBuffer
    public int getElem(int i) {
        return this.data[i + this.offset];
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2) {
        this.data[i + this.offset] = (short) i2;
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public int getElem(int i, int i2) {
        return this.bankdata[i][i2 + this.offsets[i]];
    }

    public short[] getData(int i) {
        this.theTrackable.setUntrackable();
        return this.bankdata[i];
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2, int i3) {
        this.bankdata[i][i2 + this.offsets[i]] = (short) i3;
        this.theTrackable.markDirty();
    }

    public DataBufferShort(int i, int i2) {
        super(StateTrackable.State.STABLE, 2, i, i2);
        this.bankdata = new short[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.bankdata[i3] = new short[i];
        }
        this.data = this.bankdata[0];
    }

    public DataBufferShort(short[] sArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 2, i);
        this.data = sArr;
        this.bankdata = r4;
        short[][] sArr2 = {sArr};
    }

    public DataBufferShort(short[] sArr, int i, int i2) {
        super(StateTrackable.State.UNTRACKABLE, 2, i, 1, i2);
        this.data = sArr;
        this.bankdata = r8;
        short[][] sArr2 = {sArr};
    }

    public DataBufferShort(short[][] sArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 2, i, sArr.length);
        short[][] sArr2 = (short[][]) sArr.clone();
        this.bankdata = sArr2;
        this.data = sArr2[0];
    }

    public DataBufferShort(short[][] sArr, int i, int[] iArr) {
        super(StateTrackable.State.UNTRACKABLE, 2, i, sArr.length, iArr);
        short[][] sArr2 = (short[][]) sArr.clone();
        this.bankdata = sArr2;
        this.data = sArr2[0];
    }
}
