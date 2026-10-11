package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.fonts.FontFacet;
import org.apache.poi.common.usermodel.fonts.FontHeader;
import org.apache.poi.hslf.record.FontEmbeddedData;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class FontEmbeddedData extends RecordAtom implements FontFacet {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 5000000;
    private static int MAX_RECORD_LENGTH = 5000000;
    private byte[] _data;
    private byte[] _header;
    private FontHeader fontHeader;

    public FontEmbeddedData() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[4];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontFacet
    public Object getFontData() {
        return this;
    }

    public FontHeader getFontHeader() {
        if (this.fontHeader == null) {
            FontHeader fontHeader = new FontHeader();
            byte[] bArr = this._data;
            fontHeader.init(bArr, 0, bArr.length);
            this.fontHeader = fontHeader;
        }
        return this.fontHeader;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("fontHeader", new Supplier() { // from class: com.sunia.HTREnginev2.hpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontEmbeddedData.this.getFontHeader();
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.FontEmbeddedData.typeID;
    }

    public String getTypeface() {
        return getFontHeader().getFamilyName();
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontFacet
    public int getWeight() {
        return getFontHeader().getWeight();
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontFacet
    public boolean isItalic() {
        return getFontHeader().isItalic();
    }

    public void setFontData(byte[] bArr) {
        this.fontHeader = null;
        byte[] bArr2 = (byte[]) bArr.clone();
        this._data = bArr2;
        LittleEndian.putInt(this._header, 4, bArr2.length);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public FontEmbeddedData(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        byte[] safelyClone = IOUtils.safelyClone(bArr, i3, i2 - 8, MAX_RECORD_LENGTH);
        this._data = safelyClone;
        if (safelyClone.length >= 4) {
            return;
        }
        throw new IllegalArgumentException("The length of the data for a ExObjListAtom must be at least 4 bytes, but was only " + this._data.length);
    }
}
