package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class TextCharsAtom extends RecordAtom {
    public static final long _type = RecordTypes.TextCharsAtom.typeID;
    private byte[] _header;
    private byte[] _text;

    public TextCharsAtom(byte[] bArr, int i, int i2) {
        i2 = i2 < 8 ? 8 : i2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._text = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("text", new Supplier() { // from class: com.sunia.HTREnginev2.bcn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextCharsAtom.this.getText();
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public String getText() {
        return StringUtil.getFromUnicodeLE(this._text);
    }

    public void setText(String str) {
        byte[] safelyAllocate = IOUtils.safelyAllocate(str.length() * 2, RecordAtom.getMaxRecordLength());
        this._text = safelyAllocate;
        StringUtil.putUnicodeLE(str, safelyAllocate, 0);
        LittleEndian.putInt(this._header, 4, this._text.length);
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._text);
    }

    public TextCharsAtom() {
        this._header = new byte[]{0, 0, -96, 15, 0, 0, 0, 0};
        this._text = new byte[0];
    }
}
