package java.awt.image;

import sun.awt.image.SunWritableRaster;
import sun.java2d.StateTrackable;
import sun.java2d.StateTrackableDelegate;

/* loaded from: classes5.dex */
public abstract class DataBuffer {
    public static final int TYPE_BYTE = 0;
    public static final int TYPE_DOUBLE = 5;
    public static final int TYPE_FLOAT = 4;
    public static final int TYPE_INT = 3;
    public static final int TYPE_SHORT = 2;
    public static final int TYPE_UNDEFINED = 32;
    public static final int TYPE_USHORT = 1;
    private static final int[] dataTypeSize = {8, 16, 16, 32, 32, 64};
    protected int banks;
    protected int dataType;
    protected int offset;
    protected int[] offsets;
    protected int size;
    StateTrackableDelegate theTrackable;

    static {
        SunWritableRaster.setDataStealer(new SunWritableRaster.DataStealer() { // from class: java.awt.image.DataBuffer.1
            @Override // sun.awt.image.SunWritableRaster.DataStealer
            public byte[] getData(DataBufferByte dataBufferByte, int i) {
                return dataBufferByte.bankdata[i];
            }

            @Override // sun.awt.image.SunWritableRaster.DataStealer
            public StateTrackableDelegate getTrackable(DataBuffer dataBuffer) {
                return dataBuffer.theTrackable;
            }

            @Override // sun.awt.image.SunWritableRaster.DataStealer
            public void setTrackable(DataBuffer dataBuffer, StateTrackableDelegate stateTrackableDelegate) {
                dataBuffer.theTrackable = stateTrackableDelegate;
            }

            @Override // sun.awt.image.SunWritableRaster.DataStealer
            public short[] getData(DataBufferUShort dataBufferUShort, int i) {
                return dataBufferUShort.bankdata[i];
            }

            @Override // sun.awt.image.SunWritableRaster.DataStealer
            public int[] getData(DataBufferInt dataBufferInt, int i) {
                return dataBufferInt.bankdata[i];
            }
        });
    }

    public DataBuffer(int i, int i2) {
        this(StateTrackable.State.UNTRACKABLE, i, i2);
    }

    public static int getDataTypeSize(int i) {
        if (i >= 0 && i <= 5) {
            return dataTypeSize[i];
        }
        throw new IllegalArgumentException("Unknown data type " + i);
    }

    public static int[] toIntArray(Object obj) {
        if (obj instanceof int[]) {
            return (int[]) obj;
        }
        int[] iArr = null;
        if (obj == null) {
            return null;
        }
        int i = 0;
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int[] iArr2 = new int[sArr.length];
            while (i < sArr.length) {
                iArr2[i] = sArr[i] & 65535;
                i++;
            }
            return iArr2;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            iArr = new int[bArr.length];
            while (i < bArr.length) {
                iArr[i] = bArr[i] & 255;
                i++;
            }
        }
        return iArr;
    }

    public int getDataType() {
        return this.dataType;
    }

    public int getElem(int i) {
        return getElem(0, i);
    }

    public abstract int getElem(int i, int i2);

    public double getElemDouble(int i) {
        return getElem(i);
    }

    public float getElemFloat(int i) {
        return getElem(i);
    }

    public int getNumBanks() {
        return this.banks;
    }

    public int getOffset() {
        return this.offset;
    }

    public int[] getOffsets() {
        return (int[]) this.offsets.clone();
    }

    public int getSize() {
        return this.size;
    }

    public void setElem(int i, int i2) {
        setElem(0, i, i2);
    }

    public abstract void setElem(int i, int i2, int i3);

    public void setElemDouble(int i, double d) {
        setElem(i, (int) d);
    }

    public void setElemFloat(int i, float f) {
        setElem(i, (int) f);
    }

    public DataBuffer(StateTrackable.State state, int i, int i2) {
        this.theTrackable = StateTrackableDelegate.createInstance(state);
        this.dataType = i;
        this.banks = 1;
        this.size = i2;
        this.offset = 0;
        this.offsets = new int[1];
    }

    public double getElemDouble(int i, int i2) {
        return getElem(i, i2);
    }

    public float getElemFloat(int i, int i2) {
        return getElem(i, i2);
    }

    public void setElemDouble(int i, int i2, double d) {
        setElem(i, i2, (int) d);
    }

    public void setElemFloat(int i, int i2, float f) {
        setElem(i, i2, (int) f);
    }

    public DataBuffer(int i, int i2, int i3) {
        this(StateTrackable.State.UNTRACKABLE, i, i2, i3);
    }

    public DataBuffer(StateTrackable.State state, int i, int i2, int i3) {
        this.theTrackable = StateTrackableDelegate.createInstance(state);
        this.dataType = i;
        this.banks = i3;
        this.size = i2;
        this.offset = 0;
        this.offsets = new int[i3];
    }

    public DataBuffer(int i, int i2, int i3, int i4) {
        this(StateTrackable.State.UNTRACKABLE, i, i2, i3, i4);
    }

    public DataBuffer(StateTrackable.State state, int i, int i2, int i3, int i4) {
        this.theTrackable = StateTrackableDelegate.createInstance(state);
        this.dataType = i;
        this.banks = i3;
        this.size = i2;
        this.offset = i4;
        this.offsets = new int[i3];
        for (int i5 = 0; i5 < i3; i5++) {
            this.offsets[i5] = i4;
        }
    }

    public DataBuffer(int i, int i2, int i3, int[] iArr) {
        this(StateTrackable.State.UNTRACKABLE, i, i2, i3, iArr);
    }

    public DataBuffer(StateTrackable.State state, int i, int i2, int i3, int[] iArr) {
        if (i3 == iArr.length) {
            this.theTrackable = StateTrackableDelegate.createInstance(state);
            this.dataType = i;
            this.banks = i3;
            this.size = i2;
            this.offset = iArr[0];
            this.offsets = (int[]) iArr.clone();
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Number of banks does not match number of bank offsets");
    }
}
