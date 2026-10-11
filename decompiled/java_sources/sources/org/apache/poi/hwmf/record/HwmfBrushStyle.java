package org.apache.poi.hwmf.record;

/* loaded from: classes12.dex */
public enum HwmfBrushStyle {
    BS_SOLID(0),
    BS_NULL(1),
    BS_HATCHED(2),
    BS_PATTERN(3),
    BS_INDEXED(4),
    BS_DIBPATTERN(5),
    BS_DIBPATTERNPT(6),
    BS_PATTERN8X8(7),
    BS_DIBPATTERN8X8(8),
    BS_MONOPATTERN(9),
    BS_LINEAR_GRADIENT(256);

    int flag;

    HwmfBrushStyle(int i) {
        this.flag = i;
    }

    public static HwmfBrushStyle valueOf(int i) {
        for (HwmfBrushStyle hwmfBrushStyle : values()) {
            if (hwmfBrushStyle.flag == i) {
                return hwmfBrushStyle;
            }
        }
        return null;
    }
}
