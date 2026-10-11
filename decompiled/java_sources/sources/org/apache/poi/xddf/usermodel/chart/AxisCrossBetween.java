package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STCrossBetween;

/* loaded from: classes13.dex */
public enum AxisCrossBetween {
    BETWEEN(STCrossBetween.BETWEEN),
    MIDPOINT_CATEGORY(STCrossBetween.MID_CAT);

    private static final HashMap<STCrossBetween.Enum, AxisCrossBetween> reverse = new HashMap<>();
    final STCrossBetween.Enum underlying;

    static {
        for (AxisCrossBetween axisCrossBetween : values()) {
            reverse.put(axisCrossBetween.underlying, axisCrossBetween);
        }
    }

    AxisCrossBetween(STCrossBetween.Enum r3) {
        this.underlying = r3;
    }

    public static AxisCrossBetween valueOf(STCrossBetween.Enum r1) {
        return reverse.get(r1);
    }
}
