package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STOrientation;

/* loaded from: classes13.dex */
public enum AxisOrientation {
    MIN_MAX(STOrientation.MIN_MAX),
    MAX_MIN(STOrientation.MAX_MIN);

    private static final HashMap<STOrientation.Enum, AxisOrientation> reverse = new HashMap<>();
    final STOrientation.Enum underlying;

    static {
        for (AxisOrientation axisOrientation : values()) {
            reverse.put(axisOrientation.underlying, axisOrientation);
        }
    }

    AxisOrientation(STOrientation.Enum r3) {
        this.underlying = r3;
    }

    public static AxisOrientation valueOf(STOrientation.Enum r1) {
        return reverse.get(r1);
    }
}
