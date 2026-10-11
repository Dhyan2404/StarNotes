package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STMarkerStyle;

/* loaded from: classes13.dex */
public enum MarkerStyle {
    CIRCLE(STMarkerStyle.CIRCLE),
    DASH(STMarkerStyle.DASH),
    DIAMOND(STMarkerStyle.DIAMOND),
    DOT(STMarkerStyle.DOT),
    NONE(STMarkerStyle.NONE),
    PICTURE(STMarkerStyle.PICTURE),
    PLUS(STMarkerStyle.PLUS),
    SQUARE(STMarkerStyle.SQUARE),
    STAR(STMarkerStyle.STAR),
    TRIANGLE(STMarkerStyle.TRIANGLE),
    X(STMarkerStyle.f115672X);

    private static final HashMap<STMarkerStyle.Enum, MarkerStyle> reverse = new HashMap<>();
    final STMarkerStyle.Enum underlying;

    static {
        for (MarkerStyle markerStyle : values()) {
            reverse.put(markerStyle.underlying, markerStyle);
        }
    }

    MarkerStyle(STMarkerStyle.Enum r3) {
        this.underlying = r3;
    }

    public static MarkerStyle valueOf(STMarkerStyle.Enum r1) {
        return reverse.get(r1);
    }
}
