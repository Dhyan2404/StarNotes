package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STErrDir;

/* loaded from: classes13.dex */
public enum ErrorDirection {
    X(STErrDir.f115663X),
    Y(STErrDir.f115664Y);

    private static final HashMap<STErrDir.Enum, ErrorDirection> reverse = new HashMap<>();
    final STErrDir.Enum underlying;

    static {
        for (ErrorDirection errorDirection : values()) {
            reverse.put(errorDirection.underlying, errorDirection);
        }
    }

    ErrorDirection(STErrDir.Enum r3) {
        this.underlying = r3;
    }

    public static ErrorDirection valueOf(STErrDir.Enum r1) {
        return reverse.get(r1);
    }
}
