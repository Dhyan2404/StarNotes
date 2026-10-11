package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.model.textproperties.TextPFException9;
import org.apache.poi.hslf.record.StyleTextProp9Atom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class StyleTextProp9Atom extends RecordAtom {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static int MAX_RECORD_LENGTH = 100000;
    private final TextPFException9[] autoNumberSchemes;
    private byte[] data;
    private byte[] header;
    private int length;
    private short recordId;
    private short version;

    public StyleTextProp9Atom(byte[] bArr, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        int i3 = i + 8;
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i3);
        this.header = copyOfRange;
        this.version = LittleEndian.getShort(copyOfRange, 0);
        this.recordId = LittleEndian.getShort(this.header, 2);
        this.length = LittleEndian.getInt(this.header, 4);
        this.data = IOUtils.safelyClone(bArr, i3, i2 - 8, MAX_RECORD_LENGTH);
        int i4 = 0;
        while (i4 < this.data.length) {
            TextPFException9 textPFException9 = new TextPFException9(this.data, i4);
            linkedList.add(textPFException9);
            int recordLength = i4 + textPFException9.getRecordLength();
            int i5 = recordLength + 4;
            byte[] bArr2 = this.data;
            if (i5 < bArr2.length) {
                LittleEndian.getInt(bArr2, recordLength);
                i4 = i5 + 4;
                byte[] bArr3 = this.data;
                if (i4 >= bArr3.length) {
                    break;
                }
                i4 = (LittleEndian.getInt(bArr3, i5) & 64) != 0 ? i4 + 2 : i4;
                if (i4 + 4 >= this.data.length) {
                    break;
                }
            } else {
                break;
            }
        }
        this.autoNumberSchemes = (TextPFException9[]) linkedList.toArray(new TextPFException9[0]);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public TextPFException9[] getAutoNumberTypes() {
        return this.autoNumberSchemes;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("autoNumberSchemes", new Supplier() { // from class: com.sunia.HTREnginev2.i3n
            @Override // java.util.function.Supplier
            public final Object get() {
                return StyleTextProp9Atom.this.getAutoNumberTypes();
            }
        });
    }

    public int getLength() {
        return this.length;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return this.recordId;
    }

    public short getVersion() {
        return this.version;
    }

    public void reset(int i) {
        byte[] bArr = new byte[10];
        this.data = bArr;
        LittleEndian.putInt(bArr, 0, i);
        LittleEndian.putInt(this.data, 4, 1);
        LittleEndian.putShort(this.data, 8, (short) 0);
        LittleEndian.putInt(this.header, 4, this.data.length);
    }

    public void setTextSize(int i) {
        LittleEndian.putInt(this.data, 0, i);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this.header);
        outputStream.write(this.data);
    }
}
