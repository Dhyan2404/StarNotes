package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.CRNRecord;
import org.apache.poi.ss.formula.constant.ConstantValueParser;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class CRNRecord extends StandardRecord {
    public static final short sid = 90;
    private int field_1_last_column_index;
    private int field_2_first_column_index;
    private int field_3_row_index;
    private Object[] field_4_constant_values;

    public CRNRecord(CRNRecord cRNRecord) {
        super(cRNRecord);
        this.field_1_last_column_index = cRNRecord.field_1_last_column_index;
        this.field_2_first_column_index = cRNRecord.field_2_first_column_index;
        this.field_3_row_index = cRNRecord.field_3_row_index;
        Object[] objArr = cRNRecord.field_4_constant_values;
        this.field_4_constant_values = objArr == null ? null : (Object[]) objArr.clone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.field_3_row_index);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.field_2_first_column_index);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this.field_1_last_column_index);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return this.field_4_constant_values;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return ConstantValueParser.getEncodedSize(this.field_4_constant_values) + 4;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.y20
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = CRNRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "firstColumn", new Supplier() { // from class: com.sunia.HTREnginev2.z20
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = CRNRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "lastColumn", new Supplier() { // from class: com.sunia.HTREnginev2.a30
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = CRNRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "constantValues", new Supplier() { // from class: com.sunia.HTREnginev2.b30
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = CRNRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        });
    }

    public int getNumberOfCRNs() {
        return this.field_1_last_column_index;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 90;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(this.field_1_last_column_index);
        littleEndianOutput.writeByte(this.field_2_first_column_index);
        littleEndianOutput.writeShort(this.field_3_row_index);
        ConstantValueParser.encode(littleEndianOutput, this.field_4_constant_values);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CRN;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public CRNRecord copy() {
        return new CRNRecord(this);
    }

    public CRNRecord(RecordInputStream recordInputStream) {
        this.field_1_last_column_index = recordInputStream.readUByte();
        this.field_2_first_column_index = recordInputStream.readUByte();
        this.field_3_row_index = recordInputStream.readShort();
        this.field_4_constant_values = ConstantValueParser.parse(recordInputStream, (this.field_1_last_column_index - this.field_2_first_column_index) + 1);
    }
}
