package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STRectAlignment;

/* loaded from: classes13.dex */
public enum RectangleAlignment {
    BOTTOM(STRectAlignment.f115731B),
    BOTTOM_LEFT(STRectAlignment.f115732BL),
    BOTTOM_RIGHT(STRectAlignment.f115733BR),
    CENTER(STRectAlignment.CTR),
    LEFT(STRectAlignment.f115734L),
    RIGHT(STRectAlignment.f115735R),
    TOP(STRectAlignment.f115736T),
    TOP_LEFT(STRectAlignment.f115737TL),
    TOP_RIGHT(STRectAlignment.f115738TR);

    private static final HashMap<STRectAlignment.Enum, RectangleAlignment> reverse = new HashMap<>();
    final STRectAlignment.Enum underlying;

    static {
        for (RectangleAlignment rectangleAlignment : values()) {
            reverse.put(rectangleAlignment.underlying, rectangleAlignment);
        }
    }

    RectangleAlignment(STRectAlignment.Enum r3) {
        this.underlying = r3;
    }

    public static RectangleAlignment valueOf(STRectAlignment.Enum r1) {
        return reverse.get(r1);
    }
}
