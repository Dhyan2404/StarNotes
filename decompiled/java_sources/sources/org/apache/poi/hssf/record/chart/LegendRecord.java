package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.LegendRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class LegendRecord extends StandardRecord {
    public static final byte SPACING_CLOSE = 0;
    public static final byte SPACING_MEDIUM = 1;
    public static final byte SPACING_OPEN = 2;
    public static final byte TYPE_BOTTOM = 0;
    public static final byte TYPE_CORNER = 1;
    public static final byte TYPE_LEFT = 4;
    public static final byte TYPE_RIGHT = 3;
    public static final byte TYPE_TOP = 2;
    public static final byte TYPE_UNDOCKED = 7;
    public static final short sid = 4117;
    private int field_1_xAxisUpperLeft;
    private int field_2_yAxisUpperLeft;
    private int field_3_xSize;
    private int field_4_ySize;
    private byte field_5_type;
    private byte field_6_spacing;
    private short field_7_options;
    private static final BitField autoPosition = BitFieldFactory.getInstance(1);
    private static final BitField autoSeries = BitFieldFactory.getInstance(2);
    private static final BitField autoXPositioning = BitFieldFactory.getInstance(4);
    private static final BitField autoYPositioning = BitFieldFactory.getInstance(8);
    private static final BitField vertical = BitFieldFactory.getInstance(16);
    private static final BitField dataTable = BitFieldFactory.getInstance(32);

    public LegendRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 20;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("xAxisUpperLeft", new Supplier() { // from class: com.sunia.HTREnginev2.qxi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LegendRecord.this.getXAxisUpperLeft());
            }
        }, "yAxisUpperLeft", new Supplier() { // from class: com.sunia.HTREnginev2.rxi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LegendRecord.this.getYAxisUpperLeft());
            }
        }, "xSize", new Supplier() { // from class: com.sunia.HTREnginev2.sxi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LegendRecord.this.getXSize());
            }
        }, "ySize", new Supplier() { // from class: com.sunia.HTREnginev2.txi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LegendRecord.this.getYSize());
            }
        }, "type", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.uxi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(LegendRecord.this.getType());
            }
        }, new int[]{0, 1, 2, 3, 4, 7}, new String[]{"BOTTOM", "CORNER", "TOP", "RIGHT", "LEFT", "UNDOCKED"}), "spacing", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.vxi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(LegendRecord.this.getSpacing());
            }
        }, new int[]{0, 1, 2}, new String[]{"CLOSE", "MEDIUM", "OPEN"}), "options", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.wxi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LegendRecord.this.getOptions());
            }
        }, new BitField[]{autoPosition, autoSeries, autoXPositioning, autoYPositioning, vertical, dataTable}, new String[]{"AUTO_POSITION", "AUTO_SERIES", "AUTO_X_POSITIONING", "AUTO_Y_POSITIONING", "VERTICAL", "DATA_TABLE"}));
    }

    public short getOptions() {
        return this.field_7_options;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public byte getSpacing() {
        return this.field_6_spacing;
    }

    public byte getType() {
        return this.field_5_type;
    }

    public int getXAxisUpperLeft() {
        return this.field_1_xAxisUpperLeft;
    }

    public int getXSize() {
        return this.field_3_xSize;
    }

    public int getYAxisUpperLeft() {
        return this.field_2_yAxisUpperLeft;
    }

    public int getYSize() {
        return this.field_4_ySize;
    }

    public boolean isAutoPosition() {
        return autoPosition.isSet(this.field_7_options);
    }

    public boolean isAutoSeries() {
        return autoSeries.isSet(this.field_7_options);
    }

    public boolean isAutoXPositioning() {
        return autoXPositioning.isSet(this.field_7_options);
    }

    public boolean isAutoYPositioning() {
        return autoYPositioning.isSet(this.field_7_options);
    }

    public boolean isDataTable() {
        return dataTable.isSet(this.field_7_options);
    }

    public boolean isVertical() {
        return vertical.isSet(this.field_7_options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.field_1_xAxisUpperLeft);
        littleEndianOutput.writeInt(this.field_2_yAxisUpperLeft);
        littleEndianOutput.writeInt(this.field_3_xSize);
        littleEndianOutput.writeInt(this.field_4_ySize);
        littleEndianOutput.writeByte(this.field_5_type);
        littleEndianOutput.writeByte(this.field_6_spacing);
        littleEndianOutput.writeShort(this.field_7_options);
    }

    public void setAutoPosition(boolean z) {
        this.field_7_options = autoPosition.setShortBoolean(this.field_7_options, z);
    }

    public void setAutoSeries(boolean z) {
        this.field_7_options = autoSeries.setShortBoolean(this.field_7_options, z);
    }

    public void setAutoXPositioning(boolean z) {
        this.field_7_options = autoXPositioning.setShortBoolean(this.field_7_options, z);
    }

    public void setAutoYPositioning(boolean z) {
        this.field_7_options = autoYPositioning.setShortBoolean(this.field_7_options, z);
    }

    public void setDataTable(boolean z) {
        this.field_7_options = dataTable.setShortBoolean(this.field_7_options, z);
    }

    public void setOptions(short s) {
        this.field_7_options = s;
    }

    public void setSpacing(byte b) {
        this.field_6_spacing = b;
    }

    public void setType(byte b) {
        this.field_5_type = b;
    }

    public void setVertical(boolean z) {
        this.field_7_options = vertical.setShortBoolean(this.field_7_options, z);
    }

    public void setXAxisUpperLeft(int i) {
        this.field_1_xAxisUpperLeft = i;
    }

    public void setXSize(int i) {
        this.field_3_xSize = i;
    }

    public void setYAxisUpperLeft(int i) {
        this.field_2_yAxisUpperLeft = i;
    }

    public void setYSize(int i) {
        this.field_4_ySize = i;
    }

    public LegendRecord(LegendRecord legendRecord) {
        super(legendRecord);
        this.field_1_xAxisUpperLeft = legendRecord.field_1_xAxisUpperLeft;
        this.field_2_yAxisUpperLeft = legendRecord.field_2_yAxisUpperLeft;
        this.field_3_xSize = legendRecord.field_3_xSize;
        this.field_4_ySize = legendRecord.field_4_ySize;
        this.field_5_type = legendRecord.field_5_type;
        this.field_6_spacing = legendRecord.field_6_spacing;
        this.field_7_options = legendRecord.field_7_options;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.LEGEND;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public LegendRecord copy() {
        return new LegendRecord(this);
    }

    public LegendRecord(RecordInputStream recordInputStream) {
        this.field_1_xAxisUpperLeft = recordInputStream.readInt();
        this.field_2_yAxisUpperLeft = recordInputStream.readInt();
        this.field_3_xSize = recordInputStream.readInt();
        this.field_4_ySize = recordInputStream.readInt();
        this.field_5_type = recordInputStream.readByte();
        this.field_6_spacing = recordInputStream.readByte();
        this.field_7_options = recordInputStream.readShort();
    }
}
