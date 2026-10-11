package org.apache.poi.hpbf.model.qcbits;

/* loaded from: classes12.dex */
public abstract class QCBit {
    private String bitType;
    private byte[] data;
    private int dataOffset;
    private int optA;
    private int optB;
    private int optC;
    private String thingType;

    public QCBit(String str, String str2, byte[] bArr) {
        this.thingType = str;
        this.bitType = str2;
        this.data = (byte[]) bArr.clone();
    }

    public String getBitType() {
        return this.bitType;
    }

    public final byte[] getData() {
        return this.data;
    }

    public int getDataOffset() {
        return this.dataOffset;
    }

    public int getLength() {
        return this.data.length;
    }

    public int getOptA() {
        return this.optA;
    }

    public int getOptB() {
        return this.optB;
    }

    public int getOptC() {
        return this.optC;
    }

    public String getThingType() {
        return this.thingType;
    }

    public final void setData(byte[] bArr) {
        this.data = (byte[]) bArr.clone();
    }

    public void setDataOffset(int i) {
        this.dataOffset = i;
    }

    public void setOptA(int i) {
        this.optA = i;
    }

    public void setOptB(int i) {
        this.optB = i;
    }

    public void setOptC(int i) {
        this.optC = i;
    }
}
