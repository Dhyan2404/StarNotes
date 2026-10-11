package org.apache.poi.xddf.usermodel.text;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextFontAlignType;

/* loaded from: classes13.dex */
public enum FontAlignment {
    AUTOMATIC(STTextFontAlignType.AUTO),
    BOTTOM(STTextFontAlignType.f115743B),
    BASELINE(STTextFontAlignType.BASE),
    CENTER(STTextFontAlignType.CTR),
    TOP(STTextFontAlignType.f115744T);

    private static final HashMap<STTextFontAlignType.Enum, FontAlignment> reverse = new HashMap<>();
    final STTextFontAlignType.Enum underlying;

    static {
        for (FontAlignment fontAlignment : values()) {
            reverse.put(fontAlignment.underlying, fontAlignment);
        }
    }

    FontAlignment(STTextFontAlignType.Enum r3) {
        this.underlying = r3;
    }

    public static FontAlignment valueOf(STTextFontAlignType.Enum r1) {
        return reverse.get(r1);
    }
}
