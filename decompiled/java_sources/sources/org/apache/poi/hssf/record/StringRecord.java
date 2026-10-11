package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.StringRecord;
import org.apache.poi.hssf.record.cont.ContinuableRecord;
import org.apache.poi.hssf.record.cont.ContinuableRecordOutput;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class StringRecord extends ContinuableRecord {
    public static final short sid = 519;
    private boolean _is16bitUnicode;
    private String _text;

    public StringRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Boolean.valueOf(this._is16bitUnicode);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("is16bitUnicode", new Supplier() { // from class: com.sunia.HTREnginev2.i1n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = StringRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "text", new Supplier() { // from class: com.sunia.HTREnginev2.j1n
            @Override // java.util.function.Supplier
            public final Object get() {
                return StringRecord.this.getString();
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 519;
    }

    public String getString() {
        return this._text;
    }

    @Override // org.apache.poi.hssf.record.cont.ContinuableRecord
    public void serialize(ContinuableRecordOutput continuableRecordOutput) {
        continuableRecordOutput.writeShort(this._text.length());
        continuableRecordOutput.writeStringData(this._text);
    }

    public void setString(String str) {
        this._text = str;
        this._is16bitUnicode = StringUtil.hasMultibyte(str);
    }

    public StringRecord(StringRecord stringRecord) {
        this._is16bitUnicode = stringRecord._is16bitUnicode;
        this._text = stringRecord._text;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.STRING;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public StringRecord copy() {
        return new StringRecord(this);
    }

    public StringRecord(RecordInputStream recordInputStream) {
        int readUShort = recordInputStream.readUShort();
        boolean z = recordInputStream.readByte() != 0;
        this._is16bitUnicode = z;
        if (z) {
            this._text = recordInputStream.readUnicodeLEString(readUShort);
        } else {
            this._text = recordInputStream.readCompressedUnicode(readUShort);
        }
    }
}
