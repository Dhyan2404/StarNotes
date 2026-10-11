package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLineJoinBevel;

/* loaded from: classes13.dex */
public class XDDFLineJoinBevelProperties implements XDDFLineJoinProperties {
    private CTLineJoinBevel join;

    public XDDFLineJoinBevelProperties() {
        this(CTLineJoinBevel.Factory.newInstance());
    }

    @Internal
    public CTLineJoinBevel getXmlObject() {
        return this.join;
    }

    public XDDFLineJoinBevelProperties(CTLineJoinBevel cTLineJoinBevel) {
        this.join = cTLineJoinBevel;
    }
}
