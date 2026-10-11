package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STLblAlgn;

/* loaded from: classes13.dex */
public enum AxisLabelAlignment {
    CENTER(STLblAlgn.CTR),
    LEFT(STLblAlgn.f115665L),
    RIGHT(STLblAlgn.f115666R);

    private static final HashMap<STLblAlgn.Enum, AxisLabelAlignment> reverse = new HashMap<>();
    final STLblAlgn.Enum underlying;

    static {
        for (AxisLabelAlignment axisLabelAlignment : values()) {
            reverse.put(axisLabelAlignment.underlying, axisLabelAlignment);
        }
    }

    AxisLabelAlignment(STLblAlgn.Enum r3) {
        this.underlying = r3;
    }

    public static AxisLabelAlignment valueOf(STLblAlgn.Enum r1) {
        return reverse.get(r1);
    }
}
