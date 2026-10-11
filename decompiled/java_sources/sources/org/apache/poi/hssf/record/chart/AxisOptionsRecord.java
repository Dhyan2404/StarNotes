package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.AxisOptionsRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class AxisOptionsRecord extends StandardRecord {
    public static final short sid = 4194;
    private short field_1_minimumCategory;
    private short field_2_maximumCategory;
    private short field_3_majorUnitValue;
    private short field_4_majorUnit;
    private short field_5_minorUnitValue;
    private short field_6_minorUnit;
    private short field_7_baseUnit;
    private short field_8_crossingPoint;
    private short field_9_options;
    private static final BitField defaultMinimum = BitFieldFactory.getInstance(1);
    private static final BitField defaultMaximum = BitFieldFactory.getInstance(2);
    private static final BitField defaultMajor = BitFieldFactory.getInstance(4);
    private static final BitField defaultMinorUnit = BitFieldFactory.getInstance(8);
    private static final BitField isDate = BitFieldFactory.getInstance(16);
    private static final BitField defaultBase = BitFieldFactory.getInstance(32);
    private static final BitField defaultCross = BitFieldFactory.getInstance(64);
    private static final BitField defaultDateSettings = BitFieldFactory.getInstance(128);
    private static final int[] FLAG_MASKS = {1, 2, 4, 8, 16, 32, 64, 128};
    private static final String[] FLAG_NAMES = {"DEFAULT_MINIMUM", "DEFAULT_MAXIMUM", "DEFAULT_MAJOR", "DEFAULT_MINOR_UNIT", "IS_DATE", "DEFAULT_BASE", "DEFAULT_CROSS", "DEFAULT_DATE_SETTINGS"};

    public AxisOptionsRecord() {
    }

    public short getBaseUnit() {
        return this.field_7_baseUnit;
    }

    public short getCrossingPoint() {
        return this.field_8_crossingPoint;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 18;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("minimumCategory", new Supplier() { // from class: com.sunia.HTREnginev2.sk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getMinimumCategory());
            }
        }, "maximumCategory", new Supplier() { // from class: com.sunia.HTREnginev2.tk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getMaximumCategory());
            }
        }, "majorUnitValue", new Supplier() { // from class: com.sunia.HTREnginev2.uk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getMajorUnitValue());
            }
        }, "majorUnit", new Supplier() { // from class: com.sunia.HTREnginev2.vk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getMajorUnit());
            }
        }, "minorUnitValue", new Supplier() { // from class: com.sunia.HTREnginev2.wk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getMinorUnitValue());
            }
        }, "minorUnit", new Supplier() { // from class: com.sunia.HTREnginev2.xk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getMinorUnit());
            }
        }, "baseUnit", new Supplier() { // from class: com.sunia.HTREnginev2.yk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getBaseUnit());
            }
        }, "crossingPoint", new Supplier() { // from class: com.sunia.HTREnginev2.zk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getCrossingPoint());
            }
        }, "options", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.al
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisOptionsRecord.this.getOptions());
            }
        }, FLAG_MASKS, FLAG_NAMES));
    }

    public short getMajorUnit() {
        return this.field_4_majorUnit;
    }

    public short getMajorUnitValue() {
        return this.field_3_majorUnitValue;
    }

    public short getMaximumCategory() {
        return this.field_2_maximumCategory;
    }

    public short getMinimumCategory() {
        return this.field_1_minimumCategory;
    }

    public short getMinorUnit() {
        return this.field_6_minorUnit;
    }

    public short getMinorUnitValue() {
        return this.field_5_minorUnitValue;
    }

    public short getOptions() {
        return this.field_9_options;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isDefaultBase() {
        return defaultBase.isSet(this.field_9_options);
    }

    public boolean isDefaultCross() {
        return defaultCross.isSet(this.field_9_options);
    }

    public boolean isDefaultDateSettings() {
        return defaultDateSettings.isSet(this.field_9_options);
    }

    public boolean isDefaultMajor() {
        return defaultMajor.isSet(this.field_9_options);
    }

    public boolean isDefaultMaximum() {
        return defaultMaximum.isSet(this.field_9_options);
    }

    public boolean isDefaultMinimum() {
        return defaultMinimum.isSet(this.field_9_options);
    }

    public boolean isDefaultMinorUnit() {
        return defaultMinorUnit.isSet(this.field_9_options);
    }

    public boolean isIsDate() {
        return isDate.isSet(this.field_9_options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_minimumCategory);
        littleEndianOutput.writeShort(this.field_2_maximumCategory);
        littleEndianOutput.writeShort(this.field_3_majorUnitValue);
        littleEndianOutput.writeShort(this.field_4_majorUnit);
        littleEndianOutput.writeShort(this.field_5_minorUnitValue);
        littleEndianOutput.writeShort(this.field_6_minorUnit);
        littleEndianOutput.writeShort(this.field_7_baseUnit);
        littleEndianOutput.writeShort(this.field_8_crossingPoint);
        littleEndianOutput.writeShort(this.field_9_options);
    }

    public void setBaseUnit(short s) {
        this.field_7_baseUnit = s;
    }

    public void setCrossingPoint(short s) {
        this.field_8_crossingPoint = s;
    }

    public void setDefaultBase(boolean z) {
        this.field_9_options = defaultBase.setShortBoolean(this.field_9_options, z);
    }

    public void setDefaultCross(boolean z) {
        this.field_9_options = defaultCross.setShortBoolean(this.field_9_options, z);
    }

    public void setDefaultDateSettings(boolean z) {
        this.field_9_options = defaultDateSettings.setShortBoolean(this.field_9_options, z);
    }

    public void setDefaultMajor(boolean z) {
        this.field_9_options = defaultMajor.setShortBoolean(this.field_9_options, z);
    }

    public void setDefaultMaximum(boolean z) {
        this.field_9_options = defaultMaximum.setShortBoolean(this.field_9_options, z);
    }

    public void setDefaultMinimum(boolean z) {
        this.field_9_options = defaultMinimum.setShortBoolean(this.field_9_options, z);
    }

    public void setDefaultMinorUnit(boolean z) {
        this.field_9_options = defaultMinorUnit.setShortBoolean(this.field_9_options, z);
    }

    public void setIsDate(boolean z) {
        this.field_9_options = isDate.setShortBoolean(this.field_9_options, z);
    }

    public void setMajorUnit(short s) {
        this.field_4_majorUnit = s;
    }

    public void setMajorUnitValue(short s) {
        this.field_3_majorUnitValue = s;
    }

    public void setMaximumCategory(short s) {
        this.field_2_maximumCategory = s;
    }

    public void setMinimumCategory(short s) {
        this.field_1_minimumCategory = s;
    }

    public void setMinorUnit(short s) {
        this.field_6_minorUnit = s;
    }

    public void setMinorUnitValue(short s) {
        this.field_5_minorUnitValue = s;
    }

    public void setOptions(short s) {
        this.field_9_options = s;
    }

    public AxisOptionsRecord(AxisOptionsRecord axisOptionsRecord) {
        super(axisOptionsRecord);
        this.field_1_minimumCategory = axisOptionsRecord.field_1_minimumCategory;
        this.field_2_maximumCategory = axisOptionsRecord.field_2_maximumCategory;
        this.field_3_majorUnitValue = axisOptionsRecord.field_3_majorUnitValue;
        this.field_4_majorUnit = axisOptionsRecord.field_4_majorUnit;
        this.field_5_minorUnitValue = axisOptionsRecord.field_5_minorUnitValue;
        this.field_6_minorUnit = axisOptionsRecord.field_6_minorUnit;
        this.field_7_baseUnit = axisOptionsRecord.field_7_baseUnit;
        this.field_8_crossingPoint = axisOptionsRecord.field_8_crossingPoint;
        this.field_9_options = axisOptionsRecord.field_9_options;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.AXIS_OPTIONS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public AxisOptionsRecord copy() {
        return new AxisOptionsRecord(this);
    }

    public AxisOptionsRecord(RecordInputStream recordInputStream) {
        this.field_1_minimumCategory = recordInputStream.readShort();
        this.field_2_maximumCategory = recordInputStream.readShort();
        this.field_3_majorUnitValue = recordInputStream.readShort();
        this.field_4_majorUnit = recordInputStream.readShort();
        this.field_5_minorUnitValue = recordInputStream.readShort();
        this.field_6_minorUnit = recordInputStream.readShort();
        this.field_7_baseUnit = recordInputStream.readShort();
        this.field_8_crossingPoint = recordInputStream.readShort();
        this.field_9_options = recordInputStream.readShort();
    }
}
