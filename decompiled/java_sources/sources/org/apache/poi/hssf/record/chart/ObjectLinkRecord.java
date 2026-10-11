package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.ObjectLinkRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ObjectLinkRecord extends StandardRecord {
    public static final short ANCHOR_ID_CHART_TITLE = 1;
    public static final short ANCHOR_ID_SERIES_OR_POINT = 4;
    public static final short ANCHOR_ID_X_AXIS = 3;
    public static final short ANCHOR_ID_Y_AXIS = 2;
    public static final short ANCHOR_ID_Z_AXIS = 7;
    public static final short sid = 4135;
    private short field_1_anchorId;
    private short field_2_link1;
    private short field_3_link2;

    public ObjectLinkRecord() {
    }

    public short getAnchorId() {
        return this.field_1_anchorId;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 6;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("anchorId", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.c7k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ObjectLinkRecord.this.getAnchorId());
            }
        }, new int[]{1, 2, 3, 4, 7}, new String[]{"CHART_TITLE", "Y_AXIS", "X_AXIS", "SERIES_OR_POINT", "Z_AXIS"}), "link1", new Supplier() { // from class: com.sunia.HTREnginev2.d7k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ObjectLinkRecord.this.getLink1());
            }
        }, "link2", new Supplier() { // from class: com.sunia.HTREnginev2.e7k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ObjectLinkRecord.this.getLink2());
            }
        });
    }

    public short getLink1() {
        return this.field_2_link1;
    }

    public short getLink2() {
        return this.field_3_link2;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_anchorId);
        littleEndianOutput.writeShort(this.field_2_link1);
        littleEndianOutput.writeShort(this.field_3_link2);
    }

    public void setAnchorId(short s) {
        this.field_1_anchorId = s;
    }

    public void setLink1(short s) {
        this.field_2_link1 = s;
    }

    public void setLink2(short s) {
        this.field_3_link2 = s;
    }

    public ObjectLinkRecord(ObjectLinkRecord objectLinkRecord) {
        super(objectLinkRecord);
        this.field_1_anchorId = objectLinkRecord.field_1_anchorId;
        this.field_2_link1 = objectLinkRecord.field_2_link1;
        this.field_3_link2 = objectLinkRecord.field_3_link2;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.OBJECT_LINK;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ObjectLinkRecord copy() {
        return new ObjectLinkRecord(this);
    }

    public ObjectLinkRecord(RecordInputStream recordInputStream) {
        this.field_1_anchorId = recordInputStream.readShort();
        this.field_2_link1 = recordInputStream.readShort();
        this.field_3_link2 = recordInputStream.readShort();
    }
}
