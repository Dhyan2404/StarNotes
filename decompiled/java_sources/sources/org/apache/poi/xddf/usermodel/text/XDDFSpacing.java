package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacing;

/* loaded from: classes13.dex */
public abstract class XDDFSpacing {
    protected CTTextSpacing spacing;

    /* loaded from: classes13.dex */
    public enum Kind {
        PERCENT,
        POINTS
    }

    @Internal
    public XDDFSpacing(CTTextSpacing cTTextSpacing) {
        this.spacing = cTTextSpacing;
    }

    public abstract Kind getType();

    @Internal
    public CTTextSpacing getXmlObject() {
        return this.spacing;
    }
}
