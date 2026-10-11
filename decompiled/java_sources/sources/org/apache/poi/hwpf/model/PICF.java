package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.poi.hwpf.model.types.PICFAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class PICF extends PICFAbstractType {
    public PICF() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PICF picf = (PICF) obj;
        return this.field_10_padding2 == picf.field_10_padding2 && this.field_11_dxaGoal == picf.field_11_dxaGoal && this.field_12_dyaGoal == picf.field_12_dyaGoal && this.field_13_mx == picf.field_13_mx && this.field_14_my == picf.field_14_my && this.field_15_dxaReserved1 == picf.field_15_dxaReserved1 && this.field_16_dyaReserved1 == picf.field_16_dyaReserved1 && this.field_17_dxaReserved2 == picf.field_17_dxaReserved2 && this.field_18_dyaReserved2 == picf.field_18_dyaReserved2 && this.field_19_fReserved == picf.field_19_fReserved && this.field_1_lcb == picf.field_1_lcb && this.field_20_bpp == picf.field_20_bpp && Arrays.equals(this.field_21_brcTop80, picf.field_21_brcTop80) && Arrays.equals(this.field_22_brcLeft80, picf.field_22_brcLeft80) && Arrays.equals(this.field_23_brcBottom80, picf.field_23_brcBottom80) && Arrays.equals(this.field_24_brcRight80, picf.field_24_brcRight80) && this.field_25_dxaReserved3 == picf.field_25_dxaReserved3 && this.field_26_dyaReserved3 == picf.field_26_dyaReserved3 && this.field_27_cProps == picf.field_27_cProps && this.field_2_cbHeader == picf.field_2_cbHeader && this.field_3_mm == picf.field_3_mm && this.field_4_xExt == picf.field_4_xExt && this.field_5_yExt == picf.field_5_yExt && this.field_6_swHMF == picf.field_6_swHMF && this.field_7_grf == picf.field_7_grf && this.field_8_padding == picf.field_8_padding && this.field_9_mmPM == picf.field_9_mmPM;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{Integer.valueOf(this.field_1_lcb), Integer.valueOf(this.field_2_cbHeader), Short.valueOf(this.field_3_mm), Short.valueOf(this.field_4_xExt), Short.valueOf(this.field_5_yExt), Short.valueOf(this.field_6_swHMF), Integer.valueOf(this.field_7_grf), Integer.valueOf(this.field_8_padding), Integer.valueOf(this.field_9_mmPM), Integer.valueOf(this.field_10_padding2), Short.valueOf(this.field_11_dxaGoal), Short.valueOf(this.field_12_dyaGoal), Integer.valueOf(this.field_13_mx), Integer.valueOf(this.field_14_my), Short.valueOf(this.field_15_dxaReserved1), Short.valueOf(this.field_16_dyaReserved1), Short.valueOf(this.field_17_dxaReserved2), Short.valueOf(this.field_18_dyaReserved2), Byte.valueOf(this.field_19_fReserved), Byte.valueOf(this.field_20_bpp), this.field_21_brcTop80, this.field_22_brcLeft80, this.field_23_brcBottom80, this.field_24_brcRight80, Short.valueOf(this.field_25_dxaReserved3), Short.valueOf(this.field_26_dyaReserved3), Short.valueOf(this.field_27_cProps)});
    }

    public PICF(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
