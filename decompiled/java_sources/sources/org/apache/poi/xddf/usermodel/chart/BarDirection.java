package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBarDir;

/* loaded from: classes13.dex */
public enum BarDirection {
    BAR(STBarDir.BAR),
    COL(STBarDir.COL);

    private static final HashMap<STBarDir.Enum, BarDirection> reverse = new HashMap<>();
    final STBarDir.Enum underlying;

    static {
        for (BarDirection barDirection : values()) {
            reverse.put(barDirection.underlying, barDirection);
        }
    }

    BarDirection(STBarDir.Enum r3) {
        this.underlying = r3;
    }

    public static BarDirection valueOf(STBarDir.Enum r1) {
        return reverse.get(r1);
    }
}
