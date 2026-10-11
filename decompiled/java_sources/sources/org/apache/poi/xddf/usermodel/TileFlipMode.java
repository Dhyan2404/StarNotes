package org.apache.poi.xddf.usermodel;

import java.util.HashMap;
import org.openxmlformats.schemas.drawingml.x2006.main.STTileFlipMode;

/* loaded from: classes13.dex */
public enum TileFlipMode {
    NONE(STTileFlipMode.NONE),
    X(STTileFlipMode.f115747X),
    XY(STTileFlipMode.f115748XY),
    Y(STTileFlipMode.f115749Y);

    private static final HashMap<STTileFlipMode.Enum, TileFlipMode> reverse = new HashMap<>();
    final STTileFlipMode.Enum underlying;

    static {
        for (TileFlipMode tileFlipMode : values()) {
            reverse.put(tileFlipMode.underlying, tileFlipMode);
        }
    }

    TileFlipMode(STTileFlipMode.Enum r3) {
        this.underlying = r3;
    }

    public static TileFlipMode valueOf(STTileFlipMode.Enum r1) {
        return reverse.get(r1);
    }
}
