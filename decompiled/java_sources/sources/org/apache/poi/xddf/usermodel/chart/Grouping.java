package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STGrouping;

/* loaded from: classes13.dex */
public enum Grouping {
    STANDARD(STGrouping.STANDARD),
    STACKED(STGrouping.STACKED),
    PERCENT_STACKED(STGrouping.PERCENT_STACKED);

    private static final HashMap<STGrouping.Enum, Grouping> reverse = new HashMap<>();
    final STGrouping.Enum underlying;

    static {
        for (Grouping grouping : values()) {
            reverse.put(grouping.underlying, grouping);
        }
    }

    Grouping(STGrouping.Enum r3) {
        this.underlying = r3;
    }

    public static Grouping valueOf(STGrouping.Enum r1) {
        return reverse.get(r1);
    }
}
