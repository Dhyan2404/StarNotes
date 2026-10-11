package org.apache.poi.hwmf.record;

/* loaded from: classes12.dex */
public enum HwmfMapMode {
    MM_TEXT(1, 0),
    MM_LOMETRIC(2, 254),
    MM_HIMETRIC(3, 2540),
    MM_LOENGLISH(4, 100),
    MM_HIENGLISH(5, 1000),
    MM_TWIPS(6, 1440),
    MM_ISOTROPIC(7, -1),
    MM_ANISOTROPIC(8, -1);

    public final int flag;
    public final int scale;

    HwmfMapMode(int i, int i2) {
        this.flag = i;
        this.scale = i2;
    }

    public static HwmfMapMode valueOf(int i) {
        for (HwmfMapMode hwmfMapMode : values()) {
            if (hwmfMapMode.flag == i) {
                return hwmfMapMode;
            }
        }
        return MM_ISOTROPIC;
    }
}
