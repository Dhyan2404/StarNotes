package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.NoteStructureSubRecord;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class NoteStructureSubRecord extends SubRecord {
    private static final int ENCODED_SIZE = 22;
    public static final short sid = 13;
    private final byte[] reserved;

    public NoteStructureSubRecord() {
        this.reserved = new byte[22];
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
        return GenericRecordUtil.getGenericProperties("reserved", new Supplier() { // from class: com.sunia.HTREnginev2.d2k
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = NoteStructureSubRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public short getSid() {
        return (short) 13;
    }

    @Override // org.apache.poi.hssf.record.SubRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(13);
        littleEndianOutput.writeShort(this.reserved.length);
        littleEndianOutput.write(this.reserved);
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.usermodel.GenericRecord
    public SubRecord.SubRecordTypes getGenericRecordType() {
        return SubRecord.SubRecordTypes.NOTE_STRUCTURE;
    }

    public NoteStructureSubRecord(NoteStructureSubRecord noteStructureSubRecord) {
        super(noteStructureSubRecord);
        this.reserved = (byte[]) noteStructureSubRecord.reserved.clone();
    }

    @Override // org.apache.poi.hssf.record.SubRecord, org.apache.poi.common.Duplicatable
    public NoteStructureSubRecord copy() {
        return new NoteStructureSubRecord(this);
    }

    public NoteStructureSubRecord(LittleEndianInput littleEndianInput, int i) {
        this(littleEndianInput, i, -1);
    }

    public NoteStructureSubRecord(LittleEndianInput littleEndianInput, int i, int i2) {
        if (i == 22) {
            byte[] safelyAllocate = IOUtils.safelyAllocate(i, 22);
            littleEndianInput.readFully(safelyAllocate);
            this.reserved = safelyAllocate;
        } else {
            throw new RecordFormatException("Unexpected size (" + i + MotionUtils.f31762d);
        }
    }
}
