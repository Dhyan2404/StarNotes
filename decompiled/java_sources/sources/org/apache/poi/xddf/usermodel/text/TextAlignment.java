package org.apache.poi.xddf.usermodel.text;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextAlignType;

/* loaded from: classes13.dex */
public enum TextAlignment {
    CENTER(STTextAlignType.CTR),
    DISTRIBUTED(STTextAlignType.DIST),
    JUSTIFIED(STTextAlignType.JUST),
    JUSTIFIED_LOW(STTextAlignType.JUST_LOW),
    LEFT(STTextAlignType.f115739L),
    RIGHT(STTextAlignType.f115740R),
    THAI_DISTRIBUTED(STTextAlignType.THAI_DIST);

    private static final HashMap<STTextAlignType.Enum, TextAlignment> reverse = new HashMap<>();
    final STTextAlignType.Enum underlying;

    static {
        for (TextAlignment textAlignment : values()) {
            reverse.put(textAlignment.underlying, textAlignment);
        }
    }

    TextAlignment(STTextAlignType.Enum r3) {
        this.underlying = r3;
    }

    public static TextAlignment valueOf(STTextAlignType.Enum r1) {
        return reverse.get(r1);
    }
}
