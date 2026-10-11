package org.apache.poi.hssf.record.common;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.common.ExtendedColor;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ExtendedColor implements Duplicatable, GenericRecord {
    public static final int THEME_ACCENT_1 = 4;
    public static final int THEME_ACCENT_2 = 5;
    public static final int THEME_ACCENT_3 = 6;
    public static final int THEME_ACCENT_4 = 7;
    public static final int THEME_ACCENT_5 = 8;
    public static final int THEME_ACCENT_6 = 9;
    public static final int THEME_DARK_1 = 0;
    public static final int THEME_DARK_2 = 2;
    public static final int THEME_FOLLOWED_HYPERLINK = 11;
    public static final int THEME_HYPERLINK = 10;
    public static final int THEME_LIGHT_1 = 1;
    public static final int THEME_LIGHT_2 = 3;
    public static final int TYPE_AUTO = 0;
    public static final int TYPE_INDEXED = 1;
    public static final int TYPE_RGB = 2;
    public static final int TYPE_THEMED = 3;
    public static final int TYPE_UNSET = 4;
    private int colorIndex;
    private byte[] rgba;
    private int themeIndex;
    private double tint;
    private int type;

    public ExtendedColor() {
        this.type = 1;
        this.colorIndex = 0;
        this.tint = 0.0d;
    }

    public int getColorIndex() {
        return this.colorIndex;
    }

    public int getDataLength() {
        return 16;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("type", new Supplier() { // from class: com.sunia.HTREnginev2.v3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExtendedColor.this.getType());
            }
        }, "tint", new Supplier() { // from class: com.sunia.HTREnginev2.w3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Double.valueOf(ExtendedColor.this.getTint());
            }
        }, "colorIndex", new Supplier() { // from class: com.sunia.HTREnginev2.x3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExtendedColor.this.getColorIndex());
            }
        }, "rgba", new Supplier() { // from class: com.sunia.HTREnginev2.y3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExtendedColor.this.getRGBA();
            }
        }, "themeIndex", new Supplier() { // from class: com.sunia.HTREnginev2.z3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExtendedColor.this.getThemeIndex());
            }
        });
    }

    public byte[] getRGBA() {
        return this.rgba;
    }

    public int getThemeIndex() {
        return this.themeIndex;
    }

    public double getTint() {
        return this.tint;
    }

    public int getType() {
        return this.type;
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.type);
        int i = this.type;
        if (i == 1) {
            littleEndianOutput.writeInt(this.colorIndex);
        } else if (i == 2) {
            littleEndianOutput.write(this.rgba);
        } else if (i == 3) {
            littleEndianOutput.writeInt(this.themeIndex);
        } else {
            littleEndianOutput.writeInt(0);
        }
        littleEndianOutput.writeDouble(this.tint);
    }

    public void setColorIndex(int i) {
        this.colorIndex = i;
    }

    public void setRGBA(byte[] bArr) {
        this.rgba = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setThemeIndex(int i) {
        this.themeIndex = i;
    }

    public void setTint(double d) {
        if (d < -1.0d || d > 1.0d) {
            throw new IllegalArgumentException("Tint/Shade must be between -1 and +1");
        }
        this.tint = d;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.Duplicatable
    public ExtendedColor copy() {
        return new ExtendedColor(this);
    }

    public ExtendedColor(ExtendedColor extendedColor) {
        this.type = extendedColor.type;
        this.tint = extendedColor.tint;
        this.colorIndex = extendedColor.colorIndex;
        byte[] bArr = extendedColor.rgba;
        this.rgba = bArr == null ? null : (byte[]) bArr.clone();
        this.themeIndex = extendedColor.themeIndex;
    }

    public ExtendedColor(LittleEndianInput littleEndianInput) {
        int readInt = littleEndianInput.readInt();
        this.type = readInt;
        if (readInt == 1) {
            this.colorIndex = littleEndianInput.readInt();
        } else if (readInt == 2) {
            byte[] bArr = new byte[4];
            this.rgba = bArr;
            littleEndianInput.readFully(bArr);
        } else if (readInt == 3) {
            this.themeIndex = littleEndianInput.readInt();
        } else {
            littleEndianInput.readInt();
        }
        this.tint = littleEndianInput.readDouble();
    }
}
