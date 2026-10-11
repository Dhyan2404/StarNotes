package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STTickMark;

/* loaded from: classes13.dex */
public enum AxisTickMark {
    CROSS(STTickMark.CROSS),
    IN(STTickMark.f115674IN),
    NONE(STTickMark.NONE),
    OUT(STTickMark.OUT);

    private static final HashMap<STTickMark.Enum, AxisTickMark> reverse = new HashMap<>();
    final STTickMark.Enum underlying;

    static {
        for (AxisTickMark axisTickMark : values()) {
            reverse.put(axisTickMark.underlying, axisTickMark);
        }
    }

    AxisTickMark(STTickMark.Enum r3) {
        this.underlying = r3;
    }

    public static AxisTickMark valueOf(STTickMark.Enum r1) {
        return reverse.get(r1);
    }
}
