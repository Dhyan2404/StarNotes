package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STLineCap;

/* loaded from: classes13.dex */
public enum LineCap {
    FLAT(STLineCap.FLAT),
    ROUND(STLineCap.RND),
    SQUARE(STLineCap.f115724SQ);

    private static final HashMap<STLineCap.Enum, LineCap> reverse = new HashMap<>();
    final STLineCap.Enum underlying;

    static {
        for (LineCap lineCap : values()) {
            reverse.put(lineCap.underlying, lineCap);
        }
    }

    LineCap(STLineCap.Enum r3) {
        this.underlying = r3;
    }

    public static LineCap valueOf(STLineCap.Enum r1) {
        return reverse.get(r1);
    }
}
