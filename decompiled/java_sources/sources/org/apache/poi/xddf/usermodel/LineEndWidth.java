package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STLineEndWidth;

/* loaded from: classes13.dex */
public enum LineEndWidth {
    LARGE(STLineEndWidth.f115727LG),
    MEDIUM(STLineEndWidth.MED),
    SMALL(STLineEndWidth.f115728SM);

    private static final HashMap<STLineEndWidth.Enum, LineEndWidth> reverse = new HashMap<>();
    final STLineEndWidth.Enum underlying;

    static {
        for (LineEndWidth lineEndWidth : values()) {
            reverse.put(lineEndWidth.underlying, lineEndWidth);
        }
    }

    LineEndWidth(STLineEndWidth.Enum r3) {
        this.underlying = r3;
    }

    public static LineEndWidth valueOf(STLineEndWidth.Enum r1) {
        return reverse.get(r1);
    }
}
