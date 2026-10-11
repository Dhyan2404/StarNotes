package org.apache.poi.hssf.record.chart;

import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.LineFormatRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class LineFormatRecord extends StandardRecord {
    public static final short LINE_PATTERN_DARK_GRAY_PATTERN = 6;
    public static final short LINE_PATTERN_DASH = 1;
    public static final short LINE_PATTERN_DASH_DOT = 3;
    public static final short LINE_PATTERN_DASH_DOT_DOT = 4;
    public static final short LINE_PATTERN_DOT = 2;
    public static final short LINE_PATTERN_LIGHT_GRAY_PATTERN = 8;
    public static final short LINE_PATTERN_MEDIUM_GRAY_PATTERN = 7;
    public static final short LINE_PATTERN_NONE = 5;
    public static final short LINE_PATTERN_SOLID = 0;
    public static final short WEIGHT_HAIRLINE = -1;
    public static final short WEIGHT_MEDIUM = 1;
    public static final short WEIGHT_NARROW = 0;
    public static final short WEIGHT_WIDE = 2;
    public static final short sid = 4103;
    private int field_1_lineColor;
    private short field_2_linePattern;
    private short field_3_weight;
    private short field_4_format;
    private short field_5_colourPaletteIndex;
    private static final BitField auto = BitFieldFactory.getInstance(1);
    private static final BitField drawTicks = BitFieldFactory.getInstance(4);
    private static final BitField unknown = BitFieldFactory.getInstance(4);

    public LineFormatRecord() {
    }

    public short getColourPaletteIndex() {
        return this.field_5_colourPaletteIndex;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 12;
    }

    public short getFormat() {
        return this.field_4_format;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("lineColor", new Supplier() { // from class: com.sunia.HTREnginev2.kyi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LineFormatRecord.this.getLineColor());
            }
        }, "linePattern", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.lyi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LineFormatRecord.this.getLinePattern());
            }
        }, new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8}, new String[]{"SOLID", "DASH", "DOT", "DASH_DOT", "DASH_DOT_DOT", "NONE", "DARK_GRAY_PATTERN", "MEDIUM_GRAY_PATTERN", "LIGHT_GRAY_PATTERN"}), "weight", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.myi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LineFormatRecord.this.getWeight());
            }
        }, new int[]{-1, 0, 1, 2}, new String[]{"HAIRLINE", "NARROW", "MEDIUM", "WIDE"}), Constants.ATTRNAME_FORMAT, GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.nyi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LineFormatRecord.this.getFormat());
            }
        }, new BitField[]{auto, drawTicks, unknown}, new String[]{"AUTO", "DRAWTICKS", HwrRecognizerConstant.RECOGNIZER_UNKNOWN}), "colourPaletteIndex", new Supplier() { // from class: com.sunia.HTREnginev2.oyi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LineFormatRecord.this.getColourPaletteIndex());
            }
        });
    }

    public int getLineColor() {
        return this.field_1_lineColor;
    }

    public short getLinePattern() {
        return this.field_2_linePattern;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public short getWeight() {
        return this.field_3_weight;
    }

    public boolean isAuto() {
        return auto.isSet(this.field_4_format);
    }

    public boolean isDrawTicks() {
        return drawTicks.isSet(this.field_4_format);
    }

    public boolean isUnknown() {
        return unknown.isSet(this.field_4_format);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.field_1_lineColor);
        littleEndianOutput.writeShort(this.field_2_linePattern);
        littleEndianOutput.writeShort(this.field_3_weight);
        littleEndianOutput.writeShort(this.field_4_format);
        littleEndianOutput.writeShort(this.field_5_colourPaletteIndex);
    }

    public void setAuto(boolean z) {
        this.field_4_format = auto.setShortBoolean(this.field_4_format, z);
    }

    public void setColourPaletteIndex(short s) {
        this.field_5_colourPaletteIndex = s;
    }

    public void setDrawTicks(boolean z) {
        this.field_4_format = drawTicks.setShortBoolean(this.field_4_format, z);
    }

    public void setFormat(short s) {
        this.field_4_format = s;
    }

    public void setLineColor(int i) {
        this.field_1_lineColor = i;
    }

    public void setLinePattern(short s) {
        this.field_2_linePattern = s;
    }

    public void setUnknown(boolean z) {
        this.field_4_format = unknown.setShortBoolean(this.field_4_format, z);
    }

    public void setWeight(short s) {
        this.field_3_weight = s;
    }

    public LineFormatRecord(LineFormatRecord lineFormatRecord) {
        super(lineFormatRecord);
        this.field_1_lineColor = lineFormatRecord.field_1_lineColor;
        this.field_2_linePattern = lineFormatRecord.field_2_linePattern;
        this.field_3_weight = lineFormatRecord.field_3_weight;
        this.field_4_format = lineFormatRecord.field_4_format;
        this.field_5_colourPaletteIndex = lineFormatRecord.field_5_colourPaletteIndex;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.LINE_FORMAT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public LineFormatRecord copy() {
        return new LineFormatRecord(this);
    }

    public LineFormatRecord(RecordInputStream recordInputStream) {
        this.field_1_lineColor = recordInputStream.readInt();
        this.field_2_linePattern = recordInputStream.readShort();
        this.field_3_weight = recordInputStream.readShort();
        this.field_4_format = recordInputStream.readShort();
        this.field_5_colourPaletteIndex = recordInputStream.readShort();
    }
}
