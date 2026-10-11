package org.apache.poi.xslf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STRadarStyle;

/* loaded from: classes13.dex */
public enum RadarStyle {
    FILLED(STRadarStyle.FILLED),
    MARKER(STRadarStyle.MARKER),
    STANDARD(STRadarStyle.STANDARD);

    private static final HashMap<STRadarStyle.Enum, RadarStyle> reverse = new HashMap<>();
    final STRadarStyle.Enum underlying;

    static {
        for (RadarStyle radarStyle : values()) {
            reverse.put(radarStyle.underlying, radarStyle);
        }
    }

    RadarStyle(STRadarStyle.Enum r3) {
        this.underlying = r3;
    }

    public static RadarStyle valueOf(STRadarStyle.Enum r1) {
        return reverse.get(r1);
    }
}
