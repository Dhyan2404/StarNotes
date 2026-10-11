package org.apache.poi.hslf.record;

import com.alibaba.fastjson2.JSONB;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.CString;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class CString extends RecordAtom {
    private byte[] _header;
    private byte[] _text;

    public CString(byte[] bArr, int i, int i2) {
        i2 = i2 < 8 ? 8 : i2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._text = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("text", new Supplier() { // from class: com.sunia.HTREnginev2.c30
            @Override // java.util.function.Supplier
            public final Object get() {
                return CString.this.getText();
            }
        });
    }

    public int getOptions() {
        return LittleEndian.getShort(this._header);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.CString.typeID;
    }

    public String getText() {
        return StringUtil.getFromUnicodeLE(this._text);
    }

    public void setOptions(int i) {
        LittleEndian.putShort(this._header, 0, (short) i);
    }

    public void setText(String str) {
        byte[] bArr = new byte[str.length() * 2];
        this._text = bArr;
        StringUtil.putUnicodeLE(str, bArr, 0);
        LittleEndian.putInt(this._header, 4, this._text.length);
    }

    public String toString() {
        return getText();
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._text);
    }

    public CString() {
        this._header = new byte[]{0, 0, JSONB.Constants.BC_BIGINT_LONG, 15, 0, 0, 0, 0};
        this._text = new byte[0];
    }
}
