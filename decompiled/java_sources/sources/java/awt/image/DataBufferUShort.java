package java.awt.image;

import sun.java2d.StateTrackable;

/* loaded from: classes5.dex */
public final class DataBufferUShort extends DataBuffer {
    short[][] bankdata;
    short[] data;

    public DataBufferUShort(int i) {
        super(StateTrackable.State.STABLE, 1, i);
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
        return this.data[i + this.offset] & 65535;
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2) {
        this.data[i + this.offset] = (short) (i2 & 65535);
        this.theTrackable.markDirty();
    }

    @Override // java.awt.image.DataBuffer
    public int getElem(int i, int i2) {
        return this.bankdata[i][i2 + this.offsets[i]] & 65535;
    }

    public short[] getData(int i) {
        this.theTrackable.setUntrackable();
        return this.bankdata[i];
    }

    @Override // java.awt.image.DataBuffer
    public void setElem(int i, int i2, int i3) {
        this.bankdata[i][i2 + this.offsets[i]] = (short) (65535 & i3);
        this.theTrackable.markDirty();
    }

    public DataBufferUShort(int i, int i2) {
        super(StateTrackable.State.STABLE, 1, i, i2);
        this.bankdata = new short[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.bankdata[i3] = new short[i];
        }
        this.data = this.bankdata[0];
    }

    public DataBufferUShort(short[] sArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 1, i);
        if (sArr != null) {
            this.data = sArr;
            this.bankdata = r4;
            short[][] sArr2 = {sArr};
            return;
        }
        throw new NullPointerException("dataArray is null");
    }

    public DataBufferUShort(short[] sArr, int i, int i2) {
        super(StateTrackable.State.UNTRACKABLE, 1, i, 1, i2);
        if (sArr != null) {
            if (i + i2 <= sArr.length) {
                this.data = sArr;
                this.bankdata = r8;
                short[][] sArr2 = {sArr};
                return;
            }
            throw new IllegalArgumentException("Length of dataArray is less  than size+offset.");
        }
        throw new NullPointerException("dataArray is null");
    }

    public DataBufferUShort(short[][] sArr, int i) {
        super(StateTrackable.State.UNTRACKABLE, 1, i, sArr.length);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            if (sArr[i2] == null) {
                throw new NullPointerException("dataArray[" + i2 + "] is null");
            }
        }
        short[][] sArr2 = (short[][]) sArr.clone();
        this.bankdata = sArr2;
        this.data = sArr2[0];
    }

    public DataBufferUShort(short[][] sArr, int i, int[] iArr) {
        super(StateTrackable.State.UNTRACKABLE, 1, i, sArr.length, iArr);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            short[] sArr2 = sArr[i2];
            if (sArr2 != null) {
                if (iArr[i2] + i > sArr2.length) {
                    throw new IllegalArgumentException("Length of dataArray[" + i2 + "] is less than size+offsets[" + i2 + "].");
                }
            } else {
                throw new NullPointerException("dataArray[" + i2 + "] is null");
            }
        }
        short[][] sArr3 = (short[][]) sArr.clone();
        this.bankdata = sArr3;
        this.data = sArr3[0];
    }
}
