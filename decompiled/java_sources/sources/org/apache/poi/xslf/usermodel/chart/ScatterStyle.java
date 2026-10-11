package org.apache.poi.xslf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STScatterStyle;

/* loaded from: classes13.dex */
public enum ScatterStyle {
    LINE(STScatterStyle.LINE),
    LINE_MARKER(STScatterStyle.LINE_MARKER),
    MARKER(STScatterStyle.MARKER),
    NONE(STScatterStyle.NONE),
    SMOOTH(STScatterStyle.SMOOTH),
    SMOOTH_MARKER(STScatterStyle.SMOOTH_MARKER);

    private static final HashMap<STScatterStyle.Enum, ScatterStyle> reverse = new HashMap<>();
    final STScatterStyle.Enum underlying;

    static {
        for (ScatterStyle scatterStyle : values()) {
            reverse.put(scatterStyle.underlying, scatterStyle);
        }
    }

    ScatterStyle(STScatterStyle.Enum r3) {
        this.underlying = r3;
    }

    public static ScatterStyle valueOf(STScatterStyle.Enum r1) {
        return reverse.get(r1);
    }
}
