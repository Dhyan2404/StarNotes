package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STAxPos;

/* loaded from: classes13.dex */
public enum AxisPosition {
    BOTTOM(STAxPos.f115655B),
    LEFT(STAxPos.f115656L),
    RIGHT(STAxPos.f115657R),
    TOP(STAxPos.f115658T);

    private static final HashMap<STAxPos.Enum, AxisPosition> reverse = new HashMap<>();
    final STAxPos.Enum underlying;

    static {
        for (AxisPosition axisPosition : values()) {
            reverse.put(axisPosition.underlying, axisPosition);
        }
    }

    AxisPosition(STAxPos.Enum r3) {
        this.underlying = r3;
    }

    public static AxisPosition valueOf(STAxPos.Enum r1) {
        return reverse.get(r1);
    }
}
