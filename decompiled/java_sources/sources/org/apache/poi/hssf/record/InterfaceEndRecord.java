package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class InterfaceEndRecord extends StandardRecord {
    public static final InterfaceEndRecord instance = new InterfaceEndRecord();
    public static final short sid = 226;

    private InterfaceEndRecord() {
    }

    public static Record create(RecordInputStream recordInputStream) {
        int remaining = recordInputStream.remaining();
        if (remaining == 0) {
            return instance;
        }
        if (remaining == 2) {
            return new InterfaceHdrRecord(recordInputStream);
        }
        throw new RecordFormatException("Invalid record data size: " + recordInputStream.remaining());
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 0;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 226;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.INTERFACE_END;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public InterfaceEndRecord copy() {
        return instance;
    }
}
