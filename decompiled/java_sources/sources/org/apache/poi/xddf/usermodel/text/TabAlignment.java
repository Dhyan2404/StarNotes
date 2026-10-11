package org.apache.poi.xddf.usermodel.text;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextTabAlignType;

/* loaded from: classes13.dex */
public enum TabAlignment {
    CENTER(STTextTabAlignType.CTR),
    DECIMAL(STTextTabAlignType.DEC),
    LEFT(STTextTabAlignType.f115745L),
    RIGHT(STTextTabAlignType.f115746R);

    private static final HashMap<STTextTabAlignType.Enum, TabAlignment> reverse = new HashMap<>();
    final STTextTabAlignType.Enum underlying;

    static {
        for (TabAlignment tabAlignment : values()) {
            reverse.put(tabAlignment.underlying, tabAlignment);
        }
    }

    TabAlignment(STTextTabAlignType.Enum r3) {
        this.underlying = r3;
    }

    public static TabAlignment valueOf(STTextTabAlignType.Enum r1) {
        return reverse.get(r1);
    }
}
