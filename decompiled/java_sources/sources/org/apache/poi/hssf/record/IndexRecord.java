package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.IndexRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IntList;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class IndexRecord extends StandardRecord {
    public static final short sid = 523;
    private int field_2_first_row;
    private int field_3_last_row_add1;
    private int field_4_zero;
    private IntList field_5_dbcells;

    public IndexRecord() {
    }

    public static int getRecordSizeForBlockCount(int i) {
        return (i * 4) + 20;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$getGenericProperties$0() {
        return null;
    }

    public void addDbcell(int i) {
        if (this.field_5_dbcells == null) {
            this.field_5_dbcells = new IntList();
        }
        this.field_5_dbcells.add(i);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (getNumDbcells() * 4) + 16;
    }

    public int getDbcellAt(int i) {
        return this.field_5_dbcells.get(i);
    }

    public int getFirstRow() {
        return this.field_2_first_row;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        Supplier supplier;
        Supplier supplier2 = new Supplier() { // from class: com.sunia.HTREnginev2.rji
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(IndexRecord.this.getFirstRow());
            }
        };
        Supplier supplier3 = new Supplier() { // from class: com.sunia.HTREnginev2.sji
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(IndexRecord.this.getLastRowAdd1());
            }
        };
        final IntList intList = this.field_5_dbcells;
        if (intList == null) {
            supplier = new Supplier() { // from class: com.sunia.HTREnginev2.tji
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = IndexRecord.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            };
        } else {
            intList.getClass();
            supplier = new Supplier() { // from class: com.sunia.HTREnginev2.uji
                @Override // java.util.function.Supplier
                public final Object get() {
                    return IntList.this.toArray();
                }
            };
        }
        return GenericRecordUtil.getGenericProperties("firstRow", supplier2, "lastRowAdd1", supplier3, "dbcell_", supplier);
    }

    public int getLastRowAdd1() {
        return this.field_3_last_row_add1;
    }

    public int getNumDbcells() {
        IntList intList = this.field_5_dbcells;
        if (intList == null) {
            return 0;
        }
        return intList.size();
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(0);
        littleEndianOutput.writeInt(getFirstRow());
        littleEndianOutput.writeInt(getLastRowAdd1());
        littleEndianOutput.writeInt(this.field_4_zero);
        for (int i = 0; i < getNumDbcells(); i++) {
            littleEndianOutput.writeInt(getDbcellAt(i));
        }
    }

    public void setDbcell(int i, int i2) {
        this.field_5_dbcells.set(i, i2);
    }

    public void setFirstRow(int i) {
        this.field_2_first_row = i;
    }

    public void setLastRowAdd1(int i) {
        this.field_3_last_row_add1 = i;
    }

    public IndexRecord(IndexRecord indexRecord) {
        super(indexRecord);
        this.field_2_first_row = indexRecord.field_2_first_row;
        this.field_3_last_row_add1 = indexRecord.field_3_last_row_add1;
        this.field_4_zero = indexRecord.field_4_zero;
        IntList intList = indexRecord.field_5_dbcells;
        this.field_5_dbcells = intList == null ? null : new IntList(intList);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.INDEX;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public IndexRecord copy() {
        return new IndexRecord(this);
    }

    public IndexRecord(RecordInputStream recordInputStream) {
        int readInt = recordInputStream.readInt();
        if (readInt == 0) {
            this.field_2_first_row = recordInputStream.readInt();
            this.field_3_last_row_add1 = recordInputStream.readInt();
            this.field_4_zero = recordInputStream.readInt();
            int remaining = recordInputStream.remaining() / 4;
            this.field_5_dbcells = new IntList(remaining);
            for (int i = 0; i < remaining; i++) {
                this.field_5_dbcells.add(recordInputStream.readInt());
            }
            return;
        }
        throw new RecordFormatException("Expected zero for field 1 but got " + readInt);
    }
}
