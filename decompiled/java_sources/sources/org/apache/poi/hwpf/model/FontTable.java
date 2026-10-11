package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hwpf.model.io.HWPFFileSystem;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class FontTable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) FontTable.class);
    private short _extraDataSz;
    private Ffn[] _fontNames;
    private short _stringCount;
    private int fcSttbfffn;
    private int lcbSttbfffn;

    public FontTable(byte[] bArr, int i, int i2) {
        this.lcbSttbfffn = i2;
        this.fcSttbfffn = i;
        this._stringCount = LittleEndian.getShort(bArr, i);
        int i3 = i + 2;
        this._extraDataSz = LittleEndian.getShort(bArr, i3);
        int i4 = i3 + 2;
        this._fontNames = new Ffn[this._stringCount];
        for (int i5 = 0; i5 < this._stringCount; i5++) {
            this._fontNames[i5] = new Ffn(bArr, i4);
            i4 += this._fontNames[i5].getSize();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FontTable)) {
            return false;
        }
        FontTable fontTable = (FontTable) obj;
        if (fontTable._stringCount != this._stringCount || fontTable._extraDataSz != this._extraDataSz || fontTable._fontNames.length != this._fontNames.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Ffn[] ffnArr = fontTable._fontNames;
            if (i >= ffnArr.length) {
                return true;
            }
            if (!ffnArr[i].equals(this._fontNames[i])) {
                return false;
            }
            i++;
        }
    }

    public String getAltFont(int i) {
        if (i < this._stringCount) {
            return this._fontNames[i].getAltFontName();
        }
        LOG.atInfo().log("Mismatch in chpFtc with stringCount");
        return null;
    }

    public short getExtraDataSz() {
        return this._extraDataSz;
    }

    public Ffn[] getFontNames() {
        return this._fontNames;
    }

    public String getMainFont(int i) {
        if (i < this._stringCount) {
            return this._fontNames[i].getMainFontName();
        }
        LOG.atInfo().log("Mismatch in chpFtc with stringCount");
        return null;
    }

    public int getSize() {
        return this.lcbSttbfffn;
    }

    public short getStringCount() {
        return this._stringCount;
    }

    public int hashCode() {
        return 42;
    }

    public void setStringCount(short s) {
        this._stringCount = s;
    }

    @Deprecated
    public void writeTo(HWPFFileSystem hWPFFileSystem) throws IOException {
        writeTo(hWPFFileSystem.getStream("1Table"));
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        byte[] bArr = new byte[2];
        LittleEndian.putShort(bArr, 0, this._stringCount);
        byteArrayOutputStream.write(bArr);
        LittleEndian.putShort(bArr, 0, this._extraDataSz);
        byteArrayOutputStream.write(bArr);
        for (Ffn ffn : this._fontNames) {
            byteArrayOutputStream.write(ffn.toByteArray());
        }
    }
}
