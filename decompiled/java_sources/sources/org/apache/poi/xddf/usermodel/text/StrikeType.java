package org.apache.poi.xddf.usermodel.text;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextStrikeType;

/* loaded from: classes13.dex */
public enum StrikeType {
    DOUBLE_STRIKE(STTextStrikeType.DBL_STRIKE),
    NO_STRIKE(STTextStrikeType.NO_STRIKE),
    SINGLE_STRIKE(STTextStrikeType.SNG_STRIKE);

    private static final HashMap<STTextStrikeType.Enum, StrikeType> reverse = new HashMap<>();
    final STTextStrikeType.Enum underlying;

    static {
        for (StrikeType strikeType : values()) {
            reverse.put(strikeType.underlying, strikeType);
        }
    }

    StrikeType(STTextStrikeType.Enum r3) {
        this.underlying = r3;
    }

    public static StrikeType valueOf(STTextStrikeType.Enum r1) {
        return reverse.get(r1);
    }
}
