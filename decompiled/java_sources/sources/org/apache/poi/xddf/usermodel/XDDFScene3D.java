package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D;

/* loaded from: classes13.dex */
public class XDDFScene3D {
    private CTScene3D scene;

    public XDDFScene3D(CTScene3D cTScene3D) {
        this.scene = cTScene3D;
    }

    @Internal
    public CTScene3D getXmlObject() {
        return this.scene;
    }
}
