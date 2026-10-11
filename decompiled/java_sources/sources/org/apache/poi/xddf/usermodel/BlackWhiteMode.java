package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STBlackWhiteMode;

/* loaded from: classes13.dex */
public enum BlackWhiteMode {
    AUTO(STBlackWhiteMode.AUTO),
    BLACK(STBlackWhiteMode.BLACK),
    BLACK_GRAY(STBlackWhiteMode.BLACK_GRAY),
    BLACK_WHITE(STBlackWhiteMode.BLACK_WHITE);

    private static final HashMap<STBlackWhiteMode.Enum, BlackWhiteMode> reverse = new HashMap<>();
    final STBlackWhiteMode.Enum underlying;

    static {
        for (BlackWhiteMode blackWhiteMode : values()) {
            reverse.put(blackWhiteMode.underlying, blackWhiteMode);
        }
    }

    BlackWhiteMode(STBlackWhiteMode.Enum r3) {
        this.underlying = r3;
    }

    public static BlackWhiteMode valueOf(STBlackWhiteMode.Enum r1) {
        return reverse.get(r1);
    }
}
