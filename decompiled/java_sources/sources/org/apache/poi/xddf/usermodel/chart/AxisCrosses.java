package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STCrosses;

/* loaded from: classes13.dex */
public enum AxisCrosses {
    AUTO_ZERO(STCrosses.AUTO_ZERO),
    MAX(STCrosses.MAX),
    MIN(STCrosses.MIN);

    private static final HashMap<STCrosses.Enum, AxisCrosses> reverse = new HashMap<>();
    final STCrosses.Enum underlying;

    static {
        for (AxisCrosses axisCrosses : values()) {
            reverse.put(axisCrosses.underlying, axisCrosses);
        }
    }

    AxisCrosses(STCrosses.Enum r3) {
        this.underlying = r3;
    }

    public static AxisCrosses valueOf(STCrosses.Enum r1) {
        return reverse.get(r1);
    }
}
