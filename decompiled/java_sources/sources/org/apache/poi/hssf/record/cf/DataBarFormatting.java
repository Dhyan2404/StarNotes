package org.apache.poi.hssf.record.cf;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.cf.DataBarFormatting;
import org.apache.poi.hssf.record.common.ExtendedColor;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class DataBarFormatting implements Duplicatable, GenericRecord {
    private ExtendedColor color;
    private byte options;
    private byte percentMax;
    private byte percentMin;
    private DataBarThreshold thresholdMax;
    private DataBarThreshold thresholdMin;
    private static final Logger LOG = LogManager.getLogger((Class<?>) DataBarFormatting.class);
    private static final BitField ICON_ONLY = BitFieldFactory.getInstance(1);
    private static final BitField REVERSED = BitFieldFactory.getInstance(4);

    public DataBarFormatting() {
        this.options = (byte) 2;
    }

    private boolean getOptionFlag(BitField bitField) {
        return bitField.getValue(this.options) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$0() {
        return Byte.valueOf(this.options);
    }

    private void setOptionFlag(boolean z, BitField bitField) {
        this.options = bitField.setByteBoolean(this.options, z);
    }

    public ExtendedColor getColor() {
        return this.color;
    }

    public int getDataLength() {
        return this.color.getDataLength() + 6 + this.thresholdMin.getDataLength() + this.thresholdMax.getDataLength();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("options", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.cse
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = DataBarFormatting.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, new BitField[]{ICON_ONLY, REVERSED}, new String[]{"ICON_ONLY", "REVERSED"}), "color", new Supplier() { // from class: com.sunia.HTREnginev2.dse
            @Override // java.util.function.Supplier
            public final Object get() {
                return DataBarFormatting.this.getColor();
            }
        }, "percentMin", new Supplier() { // from class: com.sunia.HTREnginev2.ese
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(DataBarFormatting.this.getPercentMin());
            }
        }, "percentMax", new Supplier() { // from class: com.sunia.HTREnginev2.fse
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(DataBarFormatting.this.getPercentMax());
            }
        }, "thresholdMin", new Supplier() { // from class: com.sunia.HTREnginev2.gse
            @Override // java.util.function.Supplier
            public final Object get() {
                return DataBarFormatting.this.getThresholdMin();
            }
        }, "thresholdMax", new Supplier() { // from class: com.sunia.HTREnginev2.hse
            @Override // java.util.function.Supplier
            public final Object get() {
                return DataBarFormatting.this.getThresholdMax();
            }
        });
    }

    public byte getPercentMax() {
        return this.percentMax;
    }

    public byte getPercentMin() {
        return this.percentMin;
    }

    public DataBarThreshold getThresholdMax() {
        return this.thresholdMax;
    }

    public DataBarThreshold getThresholdMin() {
        return this.thresholdMin;
    }

    public boolean isIconOnly() {
        return getOptionFlag(ICON_ONLY);
    }

    public boolean isReversed() {
        return getOptionFlag(REVERSED);
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(0);
        littleEndianOutput.writeByte(0);
        littleEndianOutput.writeByte(this.options);
        littleEndianOutput.writeByte(this.percentMin);
        littleEndianOutput.writeByte(this.percentMax);
        this.color.serialize(littleEndianOutput);
        this.thresholdMin.serialize(littleEndianOutput);
        this.thresholdMax.serialize(littleEndianOutput);
    }

    public void setColor(ExtendedColor extendedColor) {
        this.color = extendedColor;
    }

    public void setIconOnly(boolean z) {
        setOptionFlag(z, ICON_ONLY);
    }

    public void setPercentMax(byte b) {
        this.percentMax = b;
    }

    public void setPercentMin(byte b) {
        this.percentMin = b;
    }

    public void setReversed(boolean z) {
        setOptionFlag(z, REVERSED);
    }

    public void setThresholdMax(DataBarThreshold dataBarThreshold) {
        this.thresholdMax = dataBarThreshold;
    }

    public void setThresholdMin(DataBarThreshold dataBarThreshold) {
        this.thresholdMin = dataBarThreshold;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.Duplicatable
    public DataBarFormatting copy() {
        return new DataBarFormatting(this);
    }

    public DataBarFormatting(DataBarFormatting dataBarFormatting) {
        this.options = dataBarFormatting.options;
        this.percentMin = dataBarFormatting.percentMin;
        this.percentMax = dataBarFormatting.percentMax;
        ExtendedColor extendedColor = dataBarFormatting.color;
        this.color = extendedColor == null ? null : extendedColor.copy();
        DataBarThreshold dataBarThreshold = dataBarFormatting.thresholdMin;
        this.thresholdMin = dataBarThreshold == null ? null : dataBarThreshold.copy();
        DataBarThreshold dataBarThreshold2 = dataBarFormatting.thresholdMax;
        this.thresholdMax = dataBarThreshold2 != null ? dataBarThreshold2.copy() : null;
    }

    public DataBarFormatting(LittleEndianInput littleEndianInput) {
        littleEndianInput.readShort();
        littleEndianInput.readByte();
        this.options = littleEndianInput.readByte();
        this.percentMin = littleEndianInput.readByte();
        this.percentMax = littleEndianInput.readByte();
        byte b = this.percentMin;
        if (b < 0 || b > 100) {
            LOG.atWarn().log("Inconsistent Minimum Percentage found {}", Unbox.box(this.percentMin));
        }
        byte b2 = this.percentMax;
        if (b2 < 0 || b2 > 100) {
            LOG.atWarn().log("Inconsistent Maximum Percentage found {}", Unbox.box(this.percentMax));
        }
        this.color = new ExtendedColor(littleEndianInput);
        this.thresholdMin = new DataBarThreshold(littleEndianInput);
        this.thresholdMax = new DataBarThreshold(littleEndianInput);
    }
}
