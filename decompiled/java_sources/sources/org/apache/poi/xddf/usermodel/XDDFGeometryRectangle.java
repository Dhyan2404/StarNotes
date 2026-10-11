package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGeomRect;

/* loaded from: classes13.dex */
public class XDDFGeometryRectangle {
    private CTGeomRect rectangle;

    @Internal
    public XDDFGeometryRectangle(CTGeomRect cTGeomRect) {
        this.rectangle = cTGeomRect;
    }

    @Internal
    public CTGeomRect getXmlObject() {
        return this.rectangle;
    }
}
