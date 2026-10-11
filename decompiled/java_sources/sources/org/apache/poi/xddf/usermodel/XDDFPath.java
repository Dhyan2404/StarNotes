package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D;

/* loaded from: classes13.dex */
public class XDDFPath {
    private CTPath2D path;

    @Internal
    public XDDFPath(CTPath2D cTPath2D) {
        this.path = cTPath2D;
    }

    @Internal
    public CTPath2D getXmlObject() {
        return this.path;
    }
}
