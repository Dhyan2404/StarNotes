package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STLegendPos;

/* loaded from: classes13.dex */
public enum LegendPosition {
    BOTTOM(STLegendPos.f115667B),
    LEFT(STLegendPos.f115668L),
    RIGHT(STLegendPos.f115669R),
    TOP(STLegendPos.f115670T),
    TOP_RIGHT(STLegendPos.f115671TR);

    private static final HashMap<STLegendPos.Enum, LegendPosition> reverse = new HashMap<>();
    final STLegendPos.Enum underlying;

    static {
        for (LegendPosition legendPosition : values()) {
            reverse.put(legendPosition.underlying, legendPosition);
        }
    }

    LegendPosition(STLegendPos.Enum r3) {
        this.underlying = r3;
    }

    public static LegendPosition valueOf(STLegendPos.Enum r1) {
        return reverse.get(r1);
    }
}
