package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STTickLblPos;

/* loaded from: classes13.dex */
public enum AxisTickLabelPosition {
    HIGH(STTickLblPos.HIGH),
    LOW(STTickLblPos.LOW),
    NEXT_TO(STTickLblPos.NEXT_TO),
    NONE(STTickLblPos.NONE);

    private static final HashMap<STTickLblPos.Enum, AxisTickLabelPosition> reverse = new HashMap<>();
    final STTickLblPos.Enum underlying;

    static {
        for (AxisTickLabelPosition axisTickLabelPosition : values()) {
            reverse.put(axisTickLabelPosition.underlying, axisTickLabelPosition);
        }
    }

    AxisTickLabelPosition(STTickLblPos.Enum r3) {
        this.underlying = r3;
    }

    public static AxisTickLabelPosition valueOf(STTickLblPos.Enum r1) {
        return reverse.get(r1);
    }
}
