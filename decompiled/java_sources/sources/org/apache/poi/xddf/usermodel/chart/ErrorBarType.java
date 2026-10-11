package org.apache.poi.xddf.usermodel.chart;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.chart.STErrBarType;

/* loaded from: classes13.dex */
public enum ErrorBarType {
    BOTH(STErrBarType.BOTH),
    MINUS(STErrBarType.MINUS),
    PLUS(STErrBarType.PLUS);

    private static final HashMap<STErrBarType.Enum, ErrorBarType> reverse = new HashMap<>();
    final STErrBarType.Enum underlying;

    static {
        for (ErrorBarType errorBarType : values()) {
            reverse.put(errorBarType.underlying, errorBarType);
        }
    }

    ErrorBarType(STErrBarType.Enum r3) {
        this.underlying = r3;
    }

    public static ErrorBarType valueOf(STErrBarType.Enum r1) {
        return reverse.get(r1);
    }
}
