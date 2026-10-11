package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuide;

/* loaded from: classes13.dex */
public class XDDFGeometryGuide {
    private CTGeomGuide guide;

    @Internal
    public XDDFGeometryGuide(CTGeomGuide cTGeomGuide) {
        this.guide = cTGeomGuide;
    }

    public String getFormula() {
        return this.guide.getFmla();
    }

    public String getName() {
        return this.guide.getName();
    }

    @Internal
    public CTGeomGuide getXmlObject() {
        return this.guide;
    }

    public void setFormula(String str) {
        this.guide.setFmla(str);
    }

    public void setName(String str) {
        this.guide.setName(str);
    }
}
