package org.apache.poi.xwpf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth;

/* loaded from: classes13.dex */
public enum TableWidthType {
    AUTO(STTblWidth.AUTO),
    DXA(STTblWidth.DXA),
    NIL(STTblWidth.NIL),
    PCT(STTblWidth.PCT);

    private STTblWidth.Enum type;

    TableWidthType(STTblWidth.Enum r3) {
        STTblWidth.Enum r1 = STTblWidth.NIL;
        this.type = r3;
    }

    @Internal
    public STTblWidth.Enum getStWidthType() {
        return this.type;
    }
}
