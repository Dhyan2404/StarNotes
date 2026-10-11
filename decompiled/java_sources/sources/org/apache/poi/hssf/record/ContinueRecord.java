package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.ContinueRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ContinueRecord extends StandardRecord {
    public static final short sid = 60;
    private byte[] _data;

    public ContinueRecord(byte[] bArr) {
        this._data = (byte[]) bArr.clone();
    }

    public byte[] getData() {
        return this._data;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return this._data.length;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("data", new Supplier() { // from class: com.sunia.HTREnginev2.zbe
            @Override // java.util.function.Supplier
            public final Object get() {
                return ContinueRecord.this.getData();
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 60;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.write(this._data);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CONTINUE;
    }

    public ContinueRecord(ContinueRecord continueRecord) {
        super(continueRecord);
        byte[] bArr = continueRecord._data;
        this._data = bArr == null ? null : (byte[]) bArr.clone();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ContinueRecord copy() {
        return new ContinueRecord(this);
    }

    public ContinueRecord(RecordInputStream recordInputStream) {
        this._data = recordInputStream.readRemainder();
    }
}
