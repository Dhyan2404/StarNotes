package org.apache.poi.xddf.usermodel.text;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextAnchoringType;

/* loaded from: classes13.dex */
public enum AnchorType {
    BOTTOM(STTextAnchoringType.f115741B),
    CENTER(STTextAnchoringType.CTR),
    DISTRIBUTED(STTextAnchoringType.DIST),
    JUSTIFIED(STTextAnchoringType.JUST),
    TOP(STTextAnchoringType.f115742T);

    private static final HashMap<STTextAnchoringType.Enum, AnchorType> reverse = new HashMap<>();
    final STTextAnchoringType.Enum underlying;

    static {
        for (AnchorType anchorType : values()) {
            reverse.put(anchorType.underlying, anchorType);
        }
    }

    AnchorType(STTextAnchoringType.Enum r3) {
        this.underlying = r3;
    }

    public static AnchorType valueOf(STTextAnchoringType.Enum r1) {
        return reverse.get(r1);
    }
}
