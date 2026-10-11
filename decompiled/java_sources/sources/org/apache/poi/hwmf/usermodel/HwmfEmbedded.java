package org.apache.poi.hwmf.usermodel;

/* loaded from: classes12.dex */
public class HwmfEmbedded {
    private byte[] data;
    private HwmfEmbeddedType embeddedType;

    public HwmfEmbeddedType getEmbeddedType() {
        return this.embeddedType;
    }

    public byte[] getRawData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public void setEmbeddedType(HwmfEmbeddedType hwmfEmbeddedType) {
        this.embeddedType = hwmfEmbeddedType;
    }
}
