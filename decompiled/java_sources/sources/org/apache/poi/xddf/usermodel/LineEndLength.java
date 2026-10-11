package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STLineEndLength;

/* loaded from: classes13.dex */
public enum LineEndLength {
    LARGE(STLineEndLength.f115725LG),
    MEDIUM(STLineEndLength.MED),
    SMALL(STLineEndLength.f115726SM);

    private static final HashMap<STLineEndLength.Enum, LineEndLength> reverse = new HashMap<>();
    final STLineEndLength.Enum underlying;

    static {
        for (LineEndLength lineEndLength : values()) {
            reverse.put(lineEndLength.underlying, lineEndLength);
        }
    }

    LineEndLength(STLineEndLength.Enum r3) {
        this.underlying = r3;
    }

    public static LineEndLength valueOf(STLineEndLength.Enum r1) {
        return reverse.get(r1);
    }
}
