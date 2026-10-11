package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class TextBytesAtom extends RecordAtom {
    public static final long _type = RecordTypes.TextBytesAtom.typeID;
    private byte[] _header;
    private byte[] _text;

    public TextBytesAtom(byte[] bArr, int i, int i2) {
        i2 = i2 < 8 ? 8 : i2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._text = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("text", new Supplier() { // from class: com.sunia.HTREnginev2.acn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextBytesAtom.this.getText();
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public String getText() {
        byte[] bArr = this._text;
        return StringUtil.getFromCompressedUnicode(bArr, 0, bArr.length);
    }

    public void setText(byte[] bArr) {
        byte[] bArr2 = (byte[]) bArr.clone();
        this._text = bArr2;
        LittleEndian.putInt(this._header, 4, bArr2.length);
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._text);
    }

    public TextBytesAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 0);
        LittleEndian.putUShort(this._header, 2, (int) _type);
        LittleEndian.putInt(this._header, 4, 0);
        this._text = new byte[0];
    }
}
