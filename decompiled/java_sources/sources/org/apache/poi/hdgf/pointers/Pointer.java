package org.apache.poi.hdgf.pointers;

/* loaded from: classes12.dex */
public abstract class Pointer {
    private int address;
    private short format;
    private int length;
    private int offset;
    private int type;

    public abstract boolean destinationCompressed();

    public abstract boolean destinationHasChunks();

    public abstract boolean destinationHasPointers();

    public abstract boolean destinationHasStrings();

    public int getAddress() {
        return this.address;
    }

    public short getFormat() {
        return this.format;
    }

    public int getLength() {
        return this.length;
    }

    public abstract int getNumPointers(int i, byte[] bArr);

    public abstract int getNumPointersOffset(byte[] bArr);

    public int getOffset() {
        return this.offset;
    }

    public abstract int getPostNumPointersSkip();

    public abstract int getSizeInBytes();

    public int getType() {
        return this.type;
    }

    public boolean isFormatBetween(int i, int i2) {
        short s = this.format;
        return i <= s && s < i2;
    }

    public void setAddress(int i) {
        this.address = i;
    }

    public void setFormat(short s) {
        this.format = s;
    }

    public void setLength(int i) {
        this.length = i;
    }

    public void setOffset(int i) {
        this.offset = i;
    }

    public void setType(int i) {
        this.type = i;
    }
}
