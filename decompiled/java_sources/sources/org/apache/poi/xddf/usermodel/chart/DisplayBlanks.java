package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STDispBlanksAs;

/* loaded from: classes13.dex */
public enum DisplayBlanks {
    GAP(STDispBlanksAs.GAP),
    SPAN(STDispBlanksAs.SPAN),
    ZERO(STDispBlanksAs.ZERO);

    private static final HashMap<STDispBlanksAs.Enum, DisplayBlanks> reverse = new HashMap<>();
    final STDispBlanksAs.Enum underlying;

    static {
        for (DisplayBlanks displayBlanks : values()) {
            reverse.put(displayBlanks.underlying, displayBlanks);
        }
    }

    DisplayBlanks(STDispBlanksAs.Enum r3) {
        this.underlying = r3;
    }

    public static DisplayBlanks valueOf(STDispBlanksAs.Enum r1) {
        return reverse.get(r1);
    }
}
