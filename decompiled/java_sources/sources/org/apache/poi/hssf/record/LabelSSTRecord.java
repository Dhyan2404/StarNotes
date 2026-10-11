package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.LabelSSTRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class LabelSSTRecord extends CellRecord {
    public static final short sid = 253;
    private int field_4_sst_index;

    public LabelSSTRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.hssf.record.CellRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.yui
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = LabelSSTRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "sstIndex", new Supplier() { // from class: com.sunia.HTREnginev2.zui
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LabelSSTRecord.this.getSSTIndex());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public String getRecordName() {
        return "LABELSST";
    }

    public int getSSTIndex() {
        return this.field_4_sst_index;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public int getValueDataSize() {
        return 4;
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public void serializeValue(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(getSSTIndex());
    }

    public void setSSTIndex(int i) {
        this.field_4_sst_index = i;
    }

    public LabelSSTRecord(LabelSSTRecord labelSSTRecord) {
        super(labelSSTRecord);
        this.field_4_sst_index = labelSSTRecord.field_4_sst_index;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.LABEL_SST;
    }

    public LabelSSTRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
        this.field_4_sst_index = recordInputStream.readInt();
    }

    @Override // org.apache.poi.hssf.record.CellRecord, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public LabelSSTRecord copy() {
        return new LabelSSTRecord(this);
    }
}
