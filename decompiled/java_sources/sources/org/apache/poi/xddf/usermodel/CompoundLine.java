package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STCompoundLine;

/* loaded from: classes13.dex */
public enum CompoundLine {
    DOUBLE(STCompoundLine.DBL),
    SINGLE(STCompoundLine.SNG),
    THICK_THIN(STCompoundLine.THICK_THIN),
    THIN_THICK(STCompoundLine.THIN_THICK),
    TRIPLE(STCompoundLine.TRI);

    private static final HashMap<STCompoundLine.Enum, CompoundLine> reverse = new HashMap<>();
    final STCompoundLine.Enum underlying;

    static {
        for (CompoundLine compoundLine : values()) {
            reverse.put(compoundLine.underlying, compoundLine);
        }
    }

    CompoundLine(STCompoundLine.Enum r3) {
        this.underlying = r3;
    }

    public static CompoundLine valueOf(STCompoundLine.Enum r1) {
        return reverse.get(r1);
    }
}
