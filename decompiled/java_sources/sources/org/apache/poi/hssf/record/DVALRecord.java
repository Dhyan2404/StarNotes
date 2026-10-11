package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.DVALRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class DVALRecord extends StandardRecord {
    public static final short sid = 434;
    private short field_1_options;
    private int field_2_horiz_pos;
    private int field_3_vert_pos;
    private int field_5_dv_no;
    private int field_cbo_id;

    public DVALRecord() {
        this.field_cbo_id = -1;
        this.field_5_dv_no = 0;
    }

    public int getDVRecNo() {
        return this.field_5_dv_no;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 18;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("options", new Supplier() { // from class: com.sunia.HTREnginev2.ire
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DVALRecord.this.getOptions());
            }
        }, "horizPos", new Supplier() { // from class: com.sunia.HTREnginev2.jre
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DVALRecord.this.getHorizontalPos());
            }
        }, "vertPos", new Supplier() { // from class: com.sunia.HTREnginev2.kre
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DVALRecord.this.getVerticalPos());
            }
        }, "comboObjectID", new Supplier() { // from class: com.sunia.HTREnginev2.lre
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DVALRecord.this.getObjectID());
            }
        }, "dvRecordsNumber", new Supplier() { // from class: com.sunia.HTREnginev2.mre
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DVALRecord.this.getDVRecNo());
            }
        });
    }

    public int getHorizontalPos() {
        return this.field_2_horiz_pos;
    }

    public int getObjectID() {
        return this.field_cbo_id;
    }

    public short getOptions() {
        return this.field_1_options;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public int getVerticalPos() {
        return this.field_3_vert_pos;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getOptions());
        littleEndianOutput.writeInt(getHorizontalPos());
        littleEndianOutput.writeInt(getVerticalPos());
        littleEndianOutput.writeInt(getObjectID());
        littleEndianOutput.writeInt(getDVRecNo());
    }

    public void setDVRecNo(int i) {
        this.field_5_dv_no = i;
    }

    public void setHorizontalPos(int i) {
        this.field_2_horiz_pos = i;
    }

    public void setObjectID(int i) {
        this.field_cbo_id = i;
    }

    public void setOptions(short s) {
        this.field_1_options = s;
    }

    public void setVerticalPos(int i) {
        this.field_3_vert_pos = i;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DVAL;
    }

    public DVALRecord(DVALRecord dVALRecord) {
        super(dVALRecord);
        this.field_1_options = dVALRecord.field_1_options;
        this.field_2_horiz_pos = dVALRecord.field_2_horiz_pos;
        this.field_3_vert_pos = dVALRecord.field_3_vert_pos;
        this.field_cbo_id = dVALRecord.field_cbo_id;
        this.field_5_dv_no = dVALRecord.field_5_dv_no;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DVALRecord copy() {
        return new DVALRecord(this);
    }

    public DVALRecord(RecordInputStream recordInputStream) {
        this.field_1_options = recordInputStream.readShort();
        this.field_2_horiz_pos = recordInputStream.readInt();
        this.field_3_vert_pos = recordInputStream.readInt();
        this.field_cbo_id = recordInputStream.readInt();
        this.field_5_dv_no = recordInputStream.readInt();
    }
}
