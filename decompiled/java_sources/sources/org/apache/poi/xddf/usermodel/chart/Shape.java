package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STShape;

/* loaded from: classes13.dex */
public enum Shape {
    BOX(STShape.BOX),
    CONE(STShape.CONE),
    CONE_TO_MAX(STShape.CONE_TO_MAX),
    CYLINDER(STShape.CYLINDER),
    PYRAMID(STShape.PYRAMID),
    PYRAMID_TO_MAX(STShape.PYRAMID_TO_MAX);

    private static final HashMap<STShape.Enum, Shape> reverse = new HashMap<>();
    final STShape.Enum underlying;

    static {
        for (Shape shape : values()) {
            reverse.put(shape.underlying, shape);
        }
    }

    Shape(STShape.Enum r3) {
        this.underlying = r3;
    }

    public static Shape valueOf(STShape.Enum r1) {
        return reverse.get(r1);
    }
}
