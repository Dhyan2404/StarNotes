package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLineJoinRound;

/* loaded from: classes13.dex */
public class XDDFLineJoinRoundProperties implements XDDFLineJoinProperties {
    private CTLineJoinRound join;

    public XDDFLineJoinRoundProperties() {
        this(CTLineJoinRound.Factory.newInstance());
    }

    @Internal
    public CTLineJoinRound getXmlObject() {
        return this.join;
    }

    public XDDFLineJoinRoundProperties(CTLineJoinRound cTLineJoinRound) {
        this.join = cTLineJoinRound;
    }
}
