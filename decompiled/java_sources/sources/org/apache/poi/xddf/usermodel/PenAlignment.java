package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STPenAlignment;

/* loaded from: classes13.dex */
public enum PenAlignment {
    CENTER(STPenAlignment.CTR),
    IN(STPenAlignment.f115730IN);

    private static final HashMap<STPenAlignment.Enum, PenAlignment> reverse = new HashMap<>();
    final STPenAlignment.Enum underlying;

    static {
        for (PenAlignment penAlignment : values()) {
            reverse.put(penAlignment.underlying, penAlignment);
        }
    }

    PenAlignment(STPenAlignment.Enum r3) {
        this.underlying = r3;
    }

    public static PenAlignment valueOf(STPenAlignment.Enum r1) {
        return reverse.get(r1);
    }
}
