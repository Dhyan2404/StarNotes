package org.apache.poi.xslf.draw.geom;

import org.apache.poi.sl.draw.geom.GuideIf;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuide;

/* loaded from: classes13.dex */
public class XSLFGuide implements GuideIf {
    final CTGeomGuide guide;

    public XSLFGuide(CTGeomGuide cTGeomGuide) {
        this.guide = cTGeomGuide;
    }

    @Override // org.apache.poi.sl.draw.geom.GuideIf
    public String getFmla() {
        return this.guide.getFmla();
    }

    @Override // org.apache.poi.sl.draw.geom.GuideIf
    public String getName() {
        return this.guide.getName();
    }

    @Override // org.apache.poi.sl.draw.geom.GuideIf
    public void setFmla(String str) {
        this.guide.setFmla(str);
    }

    @Override // org.apache.poi.sl.draw.geom.GuideIf
    public void setName(String str) {
        this.guide.setName(str);
    }
}
