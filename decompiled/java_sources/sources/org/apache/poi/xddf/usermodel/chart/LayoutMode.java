package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STLayoutMode;

/* loaded from: classes13.dex */
public enum LayoutMode {
    EDGE(STLayoutMode.EDGE),
    FACTOR(STLayoutMode.FACTOR);

    private static final HashMap<STLayoutMode.Enum, LayoutMode> reverse = new HashMap<>();
    final STLayoutMode.Enum underlying;

    static {
        for (LayoutMode layoutMode : values()) {
            reverse.put(layoutMode.underlying, layoutMode);
        }
    }

    LayoutMode(STLayoutMode.Enum r3) {
        this.underlying = r3;
    }

    public static LayoutMode valueOf(STLayoutMode.Enum r1) {
        return reverse.get(r1);
    }
}
