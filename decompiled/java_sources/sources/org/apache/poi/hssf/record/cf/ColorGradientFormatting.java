package org.apache.poi.hssf.record.cf;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
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
import org.apache.poi.hssf.record.cf.ColorGradientFormatting;
import org.apache.poi.hssf.record.cf.ColorGradientThreshold;
import org.apache.poi.hssf.record.common.ExtendedColor;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ColorGradientFormatting implements Duplicatable, GenericRecord {
    private ExtendedColor[] colors;
    private final byte options;
    private ColorGradientThreshold[] thresholds;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) ColorGradientFormatting.class);
    private static final BitField clamp = BitFieldFactory.getInstance(1);
    private static final BitField background = BitFieldFactory.getInstance(2);

    public ColorGradientFormatting() {
        this.options = (byte) 3;
        this.thresholds = new ColorGradientThreshold[3];
        this.colors = new ExtendedColor[3];
    }

    private boolean getOptionFlag(BitField bitField) {
        return bitField.isSet(this.options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ColorGradientThreshold[] lambda$new$0(int i) {
        return new ColorGradientThreshold[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ExtendedColor[] lambda$new$1(int i) {
        return new ExtendedColor[i];
    }

    private void updateThresholdPositions() {
        double length = 1.0d / (this.thresholds.length - 1);
        int i = 0;
        while (true) {
            ColorGradientThreshold[] colorGradientThresholdArr = this.thresholds;
            if (i >= colorGradientThresholdArr.length) {
                return;
            }
            colorGradientThresholdArr[i].setPosition(i * length);
            i++;
        }
    }

    public ExtendedColor[] getColors() {
        return this.colors;
    }

    public int getDataLength() {
        int i = 6;
        for (ColorGradientThreshold colorGradientThreshold : this.thresholds) {
            i += colorGradientThreshold.getDataLength();
        }
        for (ExtendedColor extendedColor : this.colors) {
            i = i + extendedColor.getDataLength() + 8;
        }
        return i;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("clampToCurve", new Supplier() { // from class: com.sunia.HTREnginev2.g1e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ColorGradientFormatting.this.isClampToCurve());
            }
        }, NotificationCompat.WearableExtender.f5054t, new Supplier() { // from class: com.sunia.HTREnginev2.h1e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ColorGradientFormatting.this.isAppliesToBackground());
            }
        }, "thresholds", new Supplier() { // from class: com.sunia.HTREnginev2.i1e
            @Override // java.util.function.Supplier
            public final Object get() {
                return ColorGradientFormatting.this.getThresholds();
            }
        }, CouchFieldKey.KEY_COLORS, new Supplier() { // from class: com.sunia.HTREnginev2.j1e
            @Override // java.util.function.Supplier
            public final Object get() {
                return ColorGradientFormatting.this.getColors();
            }
        });
    }

    public int getNumControlPoints() {
        return this.thresholds.length;
    }

    public ColorGradientThreshold[] getThresholds() {
        return this.thresholds;
    }

    public boolean isAppliesToBackground() {
        return getOptionFlag(background);
    }

    public boolean isClampToCurve() {
        return getOptionFlag(clamp);
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(0);
        littleEndianOutput.writeByte(0);
        littleEndianOutput.writeByte(this.thresholds.length);
        littleEndianOutput.writeByte(this.thresholds.length);
        littleEndianOutput.writeByte(this.options);
        for (ColorGradientThreshold colorGradientThreshold : this.thresholds) {
            colorGradientThreshold.serialize(littleEndianOutput);
        }
        double length = 1.0d / (this.colors.length - 1);
        for (int i = 0; i < this.colors.length; i++) {
            littleEndianOutput.writeDouble(i * length);
            this.colors[i].serialize(littleEndianOutput);
        }
    }

    public void setColors(ExtendedColor[] extendedColorArr) {
        this.colors = extendedColorArr == null ? null : (ExtendedColor[]) extendedColorArr.clone();
    }

    public void setNumControlPoints(int i) {
        ColorGradientThreshold[] colorGradientThresholdArr = this.thresholds;
        if (i != colorGradientThresholdArr.length) {
            ColorGradientThreshold[] colorGradientThresholdArr2 = new ColorGradientThreshold[i];
            ExtendedColor[] extendedColorArr = new ExtendedColor[i];
            int min = Math.min(colorGradientThresholdArr.length, i);
            System.arraycopy(this.thresholds, 0, colorGradientThresholdArr2, 0, min);
            System.arraycopy(this.colors, 0, extendedColorArr, 0, min);
            this.thresholds = colorGradientThresholdArr2;
            this.colors = extendedColorArr;
            updateThresholdPositions();
        }
    }

    public void setThresholds(ColorGradientThreshold[] colorGradientThresholdArr) {
        this.thresholds = colorGradientThresholdArr == null ? null : (ColorGradientThreshold[]) colorGradientThresholdArr.clone();
        updateThresholdPositions();
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.Duplicatable
    public ColorGradientFormatting copy() {
        return new ColorGradientFormatting(this);
    }

    public ColorGradientFormatting(ColorGradientFormatting colorGradientFormatting) {
        this.options = colorGradientFormatting.options;
        ColorGradientThreshold[] colorGradientThresholdArr = colorGradientFormatting.thresholds;
        if (colorGradientThresholdArr != null) {
            this.thresholds = (ColorGradientThreshold[]) Stream.of((Object[]) colorGradientThresholdArr).map(new Function() { // from class: com.sunia.HTREnginev2.k1e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((ColorGradientThreshold) obj).copy();
                }
            }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.l1e
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    ColorGradientThreshold[] lambda$new$0;
                    lambda$new$0 = ColorGradientFormatting.lambda$new$0(i);
                    return lambda$new$0;
                }
            });
        }
        ExtendedColor[] extendedColorArr = colorGradientFormatting.colors;
        if (extendedColorArr != null) {
            this.colors = (ExtendedColor[]) Stream.of((Object[]) extendedColorArr).map(new Function() { // from class: com.sunia.HTREnginev2.m1e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((ExtendedColor) obj).copy();
                }
            }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.n1e
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    ExtendedColor[] lambda$new$1;
                    lambda$new$1 = ColorGradientFormatting.lambda$new$1(i);
                    return lambda$new$1;
                }
            });
        }
    }

    public ColorGradientFormatting(LittleEndianInput littleEndianInput) {
        littleEndianInput.readShort();
        littleEndianInput.readByte();
        int readByte = littleEndianInput.readByte();
        int readByte2 = littleEndianInput.readByte();
        if (readByte != readByte2) {
            LOGGER.atWarn().log("Inconsistent Color Gradient definition, found {} vs {} entries", Unbox.box(readByte), Unbox.box(readByte2));
        }
        this.options = littleEndianInput.readByte();
        this.thresholds = new ColorGradientThreshold[readByte];
        int i = 0;
        while (true) {
            ColorGradientThreshold[] colorGradientThresholdArr = this.thresholds;
            if (i >= colorGradientThresholdArr.length) {
                break;
            }
            colorGradientThresholdArr[i] = new ColorGradientThreshold(littleEndianInput);
            i++;
        }
        this.colors = new ExtendedColor[readByte2];
        for (int i2 = 0; i2 < this.colors.length; i2++) {
            littleEndianInput.readDouble();
            this.colors[i2] = new ExtendedColor(littleEndianInput);
        }
    }
}
