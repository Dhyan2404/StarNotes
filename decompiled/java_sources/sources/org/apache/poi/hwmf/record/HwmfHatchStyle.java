package org.apache.poi.hwmf.record;

/* loaded from: classes12.dex */
public enum HwmfHatchStyle {
    HS_HORIZONTAL(0, 1095216660735L),
    HS_VERTICAL(1, -8608480567731124088L),
    HS_FDIAGONAL(2, 577588857680175120L),
    HS_BDIAGONAL(3, 1161999622378488840L),
    HS_CROSS(4, 1229783960449520127L),
    HS_DIAGCROSS(5, 1739588480058663960L),
    HS_SOLIDCLR(6, -1),
    HS_DITHEREDCLR(7, -6172840429334713771L),
    HS_SOLIDTEXTCLR(8, -1),
    HS_DITHEREDTEXTCLR(9, -6172840429334713771L),
    HS_SOLIDBKCLR(10, 0),
    HS_DITHEREDBKCLR(11, -6172840429334713771L);

    private final int flag;
    private final long pattern;

    HwmfHatchStyle(int i, long j) {
        this.flag = i;
        this.pattern = j;
    }

    public int getFlag() {
        return this.flag;
    }

    public long getPattern() {
        return this.pattern;
    }

    public static HwmfHatchStyle valueOf(int i) {
        for (HwmfHatchStyle hwmfHatchStyle : values()) {
            if (hwmfHatchStyle.flag == i) {
                return hwmfHatchStyle;
            }
        }
        return null;
    }
}
