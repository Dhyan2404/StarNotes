package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.FtCblsSubRecord;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class FtCblsSubRecord extends SubRecord {
    private static final int ENCODED_SIZE = 20;
    public static final short sid = 12;
    private final byte[] reserved;

    public FtCblsSubRecord() {
        this.reserved = new byte[20];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.reserved;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public int getDataSize() {
        return this.reserved.length;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("reserved", new Supplier() { // from class: com.sunia.HTREnginev2.gwg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FtCblsSubRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public short getSid() {
        return (short) 12;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(12);
        littleEndianOutput.writeShort(this.reserved.length);
        littleEndianOutput.write(this.reserved);
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.usermodel.GenericRecord
    public SubRecord.SubRecordTypes getGenericRecordType() {
        return SubRecord.SubRecordTypes.FT_CBLS;
    }

    public FtCblsSubRecord(FtCblsSubRecord ftCblsSubRecord) {
        super(ftCblsSubRecord);
        this.reserved = (byte[]) ftCblsSubRecord.reserved.clone();
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.Duplicatable
    public FtCblsSubRecord copy() {
        return new FtCblsSubRecord(this);
    }

    public FtCblsSubRecord(LittleEndianInput littleEndianInput, int i) {
        this(littleEndianInput, i, -1);
    }

    public FtCblsSubRecord(LittleEndianInput littleEndianInput, int i, int i2) {
        if (i == 20) {
            byte[] safelyAllocate = IOUtils.safelyAllocate(i, 20);
            littleEndianInput.readFully(safelyAllocate);
            this.reserved = safelyAllocate;
        } else {
            throw new RecordFormatException("Unexpected size (" + i + MotionUtils.f31762d);
        }
    }
}
