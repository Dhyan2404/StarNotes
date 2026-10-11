package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STPathShadeType;

/* loaded from: classes13.dex */
public enum PathShadeType {
    CIRCLE(STPathShadeType.CIRCLE),
    RECTANGLE(STPathShadeType.RECT),
    SHAPE(STPathShadeType.SHAPE);

    private static final HashMap<STPathShadeType.Enum, PathShadeType> reverse = new HashMap<>();
    final STPathShadeType.Enum underlying;

    static {
        for (PathShadeType pathShadeType : values()) {
            reverse.put(pathShadeType.underlying, pathShadeType);
        }
    }

    PathShadeType(STPathShadeType.Enum r3) {
        this.underlying = r3;
    }

    public static PathShadeType valueOf(STPathShadeType.Enum r1) {
        return reverse.get(r1);
    }
}
