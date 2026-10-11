package org.apache.poi.hssf.record.chart;

import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.FrameRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class FrameRecord extends StandardRecord {
    public static final short BORDER_TYPE_REGULAR = 0;
    public static final short BORDER_TYPE_SHADOW = 1;
    public static final short sid = 4146;
    private short field_1_borderType;
    private short field_2_options;
    private static final BitField autoSize = BitFieldFactory.getInstance(1);
    private static final BitField autoPosition = BitFieldFactory.getInstance(2);

    public FrameRecord() {
    }

    public short getBorderType() {
        return this.field_1_borderType;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 4;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("borderType", new Supplier() { // from class: com.sunia.HTREnginev2.lvg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FrameRecord.this.getBorderType());
            }
        }, "options", new Supplier() { // from class: com.sunia.HTREnginev2.mvg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FrameRecord.this.getOptions());
            }
        }, AutoSizeDialog.AUTO_SIZE_VIEW_TAG, new Supplier() { // from class: com.sunia.HTREnginev2.nvg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FrameRecord.this.isAutoSize());
            }
        }, "autoPosition", new Supplier() { // from class: com.sunia.HTREnginev2.ovg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FrameRecord.this.isAutoPosition());
            }
        });
    }

    public short getOptions() {
        return this.field_2_options;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isAutoPosition() {
        return autoPosition.isSet(this.field_2_options);
    }

    public boolean isAutoSize() {
        return autoSize.isSet(this.field_2_options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_borderType);
        littleEndianOutput.writeShort(this.field_2_options);
    }

    public void setAutoPosition(boolean z) {
        this.field_2_options = autoPosition.setShortBoolean(this.field_2_options, z);
    }

    public void setAutoSize(boolean z) {
        this.field_2_options = autoSize.setShortBoolean(this.field_2_options, z);
    }

    public void setBorderType(short s) {
        this.field_1_borderType = s;
    }

    public void setOptions(short s) {
        this.field_2_options = s;
    }

    public FrameRecord(FrameRecord frameRecord) {
        super(frameRecord);
        this.field_1_borderType = frameRecord.field_1_borderType;
        this.field_2_options = frameRecord.field_2_options;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FRAME;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public FrameRecord copy() {
        return new FrameRecord(this);
    }

    public FrameRecord(RecordInputStream recordInputStream) {
        this.field_1_borderType = recordInputStream.readShort();
        this.field_2_options = recordInputStream.readShort();
    }
}
