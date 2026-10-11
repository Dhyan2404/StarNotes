package net.lingala.zip4j.model;

/* loaded from: classes11.dex */
public class ArchiveExtraDataRecord extends ZipHeader {
    private String extraFieldData;
    private int extraFieldLength;

    public String getExtraFieldData() {
        return this.extraFieldData;
    }

    public int getExtraFieldLength() {
        return this.extraFieldLength;
    }

    public void setExtraFieldData(String str) {
        this.extraFieldData = str;
    }

    public void setExtraFieldLength(int i) {
        this.extraFieldLength = i;
    }
}
