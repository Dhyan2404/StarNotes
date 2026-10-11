package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBarGrouping;

/* loaded from: classes13.dex */
public enum BarGrouping {
    STANDARD(STBarGrouping.STANDARD),
    CLUSTERED(STBarGrouping.CLUSTERED),
    STACKED(STBarGrouping.STACKED),
    PERCENT_STACKED(STBarGrouping.PERCENT_STACKED);

    private static final HashMap<STBarGrouping.Enum, BarGrouping> reverse = new HashMap<>();
    final STBarGrouping.Enum underlying;

    static {
        for (BarGrouping barGrouping : values()) {
            reverse.put(barGrouping.underlying, barGrouping);
        }
    }

    BarGrouping(STBarGrouping.Enum r3) {
        this.underlying = r3;
    }

    public static BarGrouping valueOf(STBarGrouping.Enum r1) {
        return reverse.get(r1);
    }
}
