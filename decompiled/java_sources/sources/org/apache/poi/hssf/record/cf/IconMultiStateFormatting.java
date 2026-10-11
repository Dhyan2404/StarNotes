package org.apache.poi.hssf.record.cf;

import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.cf.Threshold;
import org.apache.poi.ss.usermodel.IconMultiStateFormatting;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class IconMultiStateFormatting implements Duplicatable, GenericRecord {
    private IconMultiStateFormatting.IconSet iconSet;
    private byte options;
    private Threshold[] thresholds;
    private static final Logger LOG = LogManager.getLogger((Class<?>) IconMultiStateFormatting.class);
    private static BitField ICON_ONLY = BitFieldFactory.getInstance(1);
    private static BitField REVERSED = BitFieldFactory.getInstance(4);

    public IconMultiStateFormatting() {
        IconMultiStateFormatting.IconSet iconSet = IconMultiStateFormatting.IconSet.GYR_3_TRAFFIC_LIGHTS;
        this.iconSet = iconSet;
        this.options = (byte) 0;
        this.thresholds = new Threshold[iconSet.num];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Threshold[] lambda$new$0(int i) {
        return new Threshold[i];
    }

    public int getDataLength() {
        int i = 6;
        for (Threshold threshold : this.thresholds) {
            i += threshold.getDataLength();
        }
        return i;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("iconSet", new Supplier() { // from class: com.sunia.HTREnginev2.dgi
            @Override // java.util.function.Supplier
            public final Object get() {
                return org.apache.poi.hssf.record.cf.IconMultiStateFormatting.this.getIconSet();
            }
        }, "iconOnly", new Supplier() { // from class: com.sunia.HTREnginev2.egi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(org.apache.poi.hssf.record.cf.IconMultiStateFormatting.this.isIconOnly());
            }
        }, "reversed", new Supplier() { // from class: com.sunia.HTREnginev2.fgi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(org.apache.poi.hssf.record.cf.IconMultiStateFormatting.this.isReversed());
            }
        }, "thresholds", new Supplier() { // from class: com.sunia.HTREnginev2.ggi
            @Override // java.util.function.Supplier
            public final Object get() {
                return org.apache.poi.hssf.record.cf.IconMultiStateFormatting.this.getThresholds();
            }
        });
    }

    public IconMultiStateFormatting.IconSet getIconSet() {
        return this.iconSet;
    }

    public Threshold[] getThresholds() {
        return this.thresholds;
    }

    public boolean isIconOnly() {
        return ICON_ONLY.isSet(this.options);
    }

    public boolean isReversed() {
        return REVERSED.isSet(this.options);
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(0);
        littleEndianOutput.writeByte(0);
        littleEndianOutput.writeByte(this.iconSet.num);
        littleEndianOutput.writeByte(this.iconSet.f111565id);
        littleEndianOutput.writeByte(this.options);
        for (Threshold threshold : this.thresholds) {
            threshold.serialize(littleEndianOutput);
        }
    }

    public void setIconOnly(boolean z) {
        this.options = ICON_ONLY.setByteBoolean(this.options, z);
    }

    public void setIconSet(IconMultiStateFormatting.IconSet iconSet) {
        this.iconSet = iconSet;
    }

    public void setReversed(boolean z) {
        this.options = REVERSED.setByteBoolean(this.options, z);
    }

    public void setThresholds(Threshold[] thresholdArr) {
        this.thresholds = thresholdArr == null ? null : (Threshold[]) thresholdArr.clone();
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.Duplicatable
    public IconMultiStateFormatting copy() {
        return new IconMultiStateFormatting(this);
    }

    public IconMultiStateFormatting(IconMultiStateFormatting iconMultiStateFormatting) {
        this.iconSet = iconMultiStateFormatting.iconSet;
        this.options = iconMultiStateFormatting.options;
        Threshold[] thresholdArr = iconMultiStateFormatting.thresholds;
        if (thresholdArr != null) {
            this.thresholds = (Threshold[]) Stream.of((Object[]) thresholdArr).map(new Function() { // from class: com.sunia.HTREnginev2.hgi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((Threshold) obj).copy();
                }
            }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.igi
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    Threshold[] lambda$new$0;
                    lambda$new$0 = org.apache.poi.hssf.record.cf.IconMultiStateFormatting.lambda$new$0(i);
                    return lambda$new$0;
                }
            });
        }
    }

    public IconMultiStateFormatting(LittleEndianInput littleEndianInput) {
        littleEndianInput.readShort();
        littleEndianInput.readByte();
        byte readByte = littleEndianInput.readByte();
        IconMultiStateFormatting.IconSet byId = IconMultiStateFormatting.IconSet.byId(littleEndianInput.readByte());
        this.iconSet = byId;
        if (byId.num != readByte) {
            LOG.atWarn().log("Inconsistent Icon Set definition, found {} but defined as {} entries", this.iconSet, Unbox.box((int) readByte));
        }
        this.options = littleEndianInput.readByte();
        this.thresholds = new Threshold[this.iconSet.num];
        int i = 0;
        while (true) {
            Threshold[] thresholdArr = this.thresholds;
            if (i >= thresholdArr.length) {
                return;
            }
            thresholdArr[i] = new IconMultiStateThreshold(littleEndianInput);
            i++;
        }
    }
}
