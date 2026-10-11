package org.apache.poi.xddf.usermodel.text;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextCapsType;

/* loaded from: classes13.dex */
public enum CapsType {
    ALL(STTextCapsType.ALL),
    NONE(STTextCapsType.NONE),
    SMALL(STTextCapsType.SMALL);

    private static final HashMap<STTextCapsType.Enum, CapsType> reverse = new HashMap<>();
    final STTextCapsType.Enum underlying;

    static {
        for (CapsType capsType : values()) {
            reverse.put(capsType.underlying, capsType);
        }
    }

    CapsType(STTextCapsType.Enum r3) {
        this.underlying = r3;
    }

    public static CapsType valueOf(STTextCapsType.Enum r1) {
        return reverse.get(r1);
    }
}
