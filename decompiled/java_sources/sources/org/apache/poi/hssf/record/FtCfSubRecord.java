package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.FtCfSubRecord;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class FtCfSubRecord extends SubRecord {
    public static final short BITMAP_BIT = 9;
    public static final short METAFILE_BIT = 2;
    public static final short UNSPECIFIED_BIT = -1;
    public static final short length = 2;
    public static final short sid = 7;
    private short flags;

    public FtCfSubRecord() {
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public int getDataSize() {
        return 2;
    }

    public short getFlags() {
        return this.flags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("flags", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.hwg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FtCfSubRecord.this.getFlags());
            }
        }, new int[]{2, 9, -1}, new String[]{"METAFILE", "BITMAP", "UNSPECIFIED"}));
    }

    public short getSid() {
        return (short) 7;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(7);
        littleEndianOutput.writeShort(2);
        littleEndianOutput.writeShort(this.flags);
    }

    public void setFlags(short s) {
        this.flags = s;
    }

    public FtCfSubRecord(FtCfSubRecord ftCfSubRecord) {
        super(ftCfSubRecord);
        this.flags = ftCfSubRecord.flags;
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.usermodel.GenericRecord
    public SubRecord.SubRecordTypes getGenericRecordType() {
        return SubRecord.SubRecordTypes.FT_CF;
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.Duplicatable
    public FtCfSubRecord copy() {
        return new FtCfSubRecord(this);
    }

    public FtCfSubRecord(LittleEndianInput littleEndianInput, int i) {
        this(littleEndianInput, i, -1);
    }

    public FtCfSubRecord(LittleEndianInput littleEndianInput, int i, int i2) {
        if (i == 2) {
            this.flags = littleEndianInput.readShort();
            return;
        }
        throw new RecordFormatException("Unexpected size (" + i + MotionUtils.f31762d);
    }
}
