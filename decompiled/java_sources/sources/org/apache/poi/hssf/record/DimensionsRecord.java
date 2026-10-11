package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hssf.record.DimensionsRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class DimensionsRecord extends StandardRecord {
    private static final Logger LOG = LogManager.getLogger((Class<?>) DimensionsRecord.class);
    public static final short sid = 512;
    private int field_1_first_row;
    private int field_2_last_row;
    private short field_3_first_col;
    private short field_4_last_col;
    private short field_5_zero;

    public DimensionsRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Short.valueOf(this.field_5_zero);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 14;
    }

    public short getFirstCol() {
        return this.field_3_first_col;
    }

    public int getFirstRow() {
        return this.field_1_first_row;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("firstRow", new Supplier() { // from class: com.sunia.HTREnginev2.a5f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DimensionsRecord.this.getFirstRow());
            }
        }, "lastRow", new Supplier() { // from class: com.sunia.HTREnginev2.b5f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DimensionsRecord.this.getLastRow());
            }
        }, "firstColumn", new Supplier() { // from class: com.sunia.HTREnginev2.c5f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DimensionsRecord.this.getFirstCol());
            }
        }, "lastColumn", new Supplier() { // from class: com.sunia.HTREnginev2.d5f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DimensionsRecord.this.getLastCol());
            }
        }, "zero", new Supplier() { // from class: com.sunia.HTREnginev2.e5f
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = DimensionsRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public short getLastCol() {
        return this.field_4_last_col;
    }

    public int getLastRow() {
        return this.field_2_last_row;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 512;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(getFirstRow());
        littleEndianOutput.writeInt(getLastRow());
        littleEndianOutput.writeShort(getFirstCol());
        littleEndianOutput.writeShort(getLastCol());
        littleEndianOutput.writeShort(0);
    }

    public void setFirstCol(short s) {
        this.field_3_first_col = s;
    }

    public void setFirstRow(int i) {
        this.field_1_first_row = i;
    }

    public void setLastCol(short s) {
        this.field_4_last_col = s;
    }

    public void setLastRow(int i) {
        this.field_2_last_row = i;
    }

    public DimensionsRecord(DimensionsRecord dimensionsRecord) {
        super(dimensionsRecord);
        this.field_1_first_row = dimensionsRecord.field_1_first_row;
        this.field_2_last_row = dimensionsRecord.field_2_last_row;
        this.field_3_first_col = dimensionsRecord.field_3_first_col;
        this.field_4_last_col = dimensionsRecord.field_4_last_col;
        this.field_5_zero = dimensionsRecord.field_5_zero;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DIMENSIONS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DimensionsRecord copy() {
        return new DimensionsRecord(this);
    }

    public DimensionsRecord(RecordInputStream recordInputStream) {
        this.field_1_first_row = recordInputStream.readInt();
        this.field_2_last_row = recordInputStream.readInt();
        this.field_3_first_col = recordInputStream.readShort();
        this.field_4_last_col = recordInputStream.readShort();
        this.field_5_zero = recordInputStream.readShort();
        if (recordInputStream.available() == 2) {
            LOG.atInfo().log("DimensionsRecord has extra 2 bytes.");
            recordInputStream.readShort();
        }
    }
}
