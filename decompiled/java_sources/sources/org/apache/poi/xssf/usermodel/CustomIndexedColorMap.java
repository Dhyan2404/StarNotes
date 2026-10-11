package org.apache.poi.xssf.usermodel;

import java.lang.reflect.Array;
import java.util.List;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColors;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor;

/* loaded from: classes13.dex */
public class CustomIndexedColorMap implements IndexedColorMap {
    private final byte[][] colorIndex;

    private CustomIndexedColorMap(byte[][] bArr) {
        this.colorIndex = bArr;
    }

    public static CustomIndexedColorMap fromColors(CTColors cTColors) {
        if (cTColors == null || !cTColors.isSetIndexedColors()) {
            return null;
        }
        List<CTRgbColor> rgbColorList = cTColors.getIndexedColors().getRgbColorList();
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, rgbColorList.size(), 3);
        for (int i = 0; i < rgbColorList.size(); i++) {
            bArr[i] = rgbColorList.get(i).getRgb();
        }
        return new CustomIndexedColorMap(bArr);
    }

    @Override // org.apache.poi.xssf.usermodel.IndexedColorMap
    public byte[] getRGB(int i) {
        byte[][] bArr = this.colorIndex;
        if (bArr == null || i < 0 || i >= bArr.length) {
            return null;
        }
        return bArr[i];
    }
}
