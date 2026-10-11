package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShape3D;

/* loaded from: classes13.dex */
public class XDDFShape3D {
    private CTShape3D shape;

    public XDDFShape3D(CTShape3D cTShape3D) {
        this.shape = cTShape3D;
    }

    @Internal
    public CTShape3D getXmlObject() {
        return this.shape;
    }
}
