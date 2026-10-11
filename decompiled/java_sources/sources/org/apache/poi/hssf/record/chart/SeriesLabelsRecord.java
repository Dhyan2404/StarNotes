package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.SeriesLabelsRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class SeriesLabelsRecord extends StandardRecord {
    public static final short sid = 4108;
    private short field_1_formatFlags;
    private static final BitField showActual = BitFieldFactory.getInstance(1);
    private static final BitField showPercent = BitFieldFactory.getInstance(2);
    private static final BitField labelAsPercentage = BitFieldFactory.getInstance(4);
    private static final BitField smoothedLine = BitFieldFactory.getInstance(8);
    private static final BitField showLabel = BitFieldFactory.getInstance(16);
    private static final BitField showBubbleSizes = BitFieldFactory.getInstance(32);

    public SeriesLabelsRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    public short getFormatFlags() {
        return this.field_1_formatFlags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("formatFlags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.ihm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesLabelsRecord.this.getFormatFlags());
            }
        }, new BitField[]{showActual, showPercent, labelAsPercentage, smoothedLine, showLabel, showBubbleSizes}, new String[]{"SHOW_ACTUAL", "SHOW_PERCENT", "LABEL_AS_PERCENTAGE", "SMOOTHED_LINE", "SHOW_LABEL", "SHOW_BUBBLE_SIZES"}));
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isLabelAsPercentage() {
        return labelAsPercentage.isSet(this.field_1_formatFlags);
    }

    public boolean isShowActual() {
        return showActual.isSet(this.field_1_formatFlags);
    }

    public boolean isShowBubbleSizes() {
        return showBubbleSizes.isSet(this.field_1_formatFlags);
    }

    public boolean isShowLabel() {
        return showLabel.isSet(this.field_1_formatFlags);
    }

    public boolean isShowPercent() {
        return showPercent.isSet(this.field_1_formatFlags);
    }

    public boolean isSmoothedLine() {
        return smoothedLine.isSet(this.field_1_formatFlags);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_formatFlags);
    }

    public void setFormatFlags(short s) {
        this.field_1_formatFlags = s;
    }

    public void setLabelAsPercentage(boolean z) {
        this.field_1_formatFlags = labelAsPercentage.setShortBoolean(this.field_1_formatFlags, z);
    }

    public void setShowActual(boolean z) {
        this.field_1_formatFlags = showActual.setShortBoolean(this.field_1_formatFlags, z);
    }

    public void setShowBubbleSizes(boolean z) {
        this.field_1_formatFlags = showBubbleSizes.setShortBoolean(this.field_1_formatFlags, z);
    }

    public void setShowLabel(boolean z) {
        this.field_1_formatFlags = showLabel.setShortBoolean(this.field_1_formatFlags, z);
    }

    public void setShowPercent(boolean z) {
        this.field_1_formatFlags = showPercent.setShortBoolean(this.field_1_formatFlags, z);
    }

    public void setSmoothedLine(boolean z) {
        this.field_1_formatFlags = smoothedLine.setShortBoolean(this.field_1_formatFlags, z);
    }

    public SeriesLabelsRecord(SeriesLabelsRecord seriesLabelsRecord) {
        super(seriesLabelsRecord);
        this.field_1_formatFlags = seriesLabelsRecord.field_1_formatFlags;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SERIES_LABELS;
    }

    public SeriesLabelsRecord(RecordInputStream recordInputStream) {
        this.field_1_formatFlags = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SeriesLabelsRecord copy() {
        return new SeriesLabelsRecord(this);
    }
}
