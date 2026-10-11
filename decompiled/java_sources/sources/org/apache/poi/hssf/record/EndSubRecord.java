package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class EndSubRecord extends SubRecord {
    private static final int ENCODED_SIZE = 0;
    public static final short sid = 0;

    public EndSubRecord() {
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public int getDataSize() {
        return 0;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    public short getSid() {
        return (short) 0;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public boolean isTerminating() {
        return true;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(0);
        littleEndianOutput.writeShort(0);
    }

    public EndSubRecord(LittleEndianInput littleEndianInput, int i) {
        this(littleEndianInput, i, -1);
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.usermodel.GenericRecord
    public SubRecord.SubRecordTypes getGenericRecordType() {
        return SubRecord.SubRecordTypes.END;
    }

    public EndSubRecord(LittleEndianInput littleEndianInput, int i, int i2) {
        if ((i & 255) == 0) {
            return;
        }
        throw new RecordFormatException("Unexpected size (" + i + MotionUtils.f31762d);
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.Duplicatable
    public EndSubRecord copy() {
        return new EndSubRecord();
    }
}
