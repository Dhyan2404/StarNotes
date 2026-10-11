package org.apache.poi.xslf.draw.geom;

import org.apache.poi.sl.draw.geom.AdjustPointIf;
import org.apache.poi.sl.draw.geom.ConnectionSiteIf;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSite;

/* loaded from: classes13.dex */
public class XSLFConnectionSite implements ConnectionSiteIf {
    final CTConnectionSite cxn;

    public XSLFConnectionSite(CTConnectionSite cTConnectionSite) {
        this.cxn = cTConnectionSite;
    }

    @Override // org.apache.poi.sl.draw.geom.ConnectionSiteIf
    public String getAng() {
        return this.cxn.xgetAng().getStringValue();
    }

    @Override // org.apache.poi.sl.draw.geom.ConnectionSiteIf
    public AdjustPointIf getPos() {
        return new XSLFAdjustPoint(this.cxn.getPos());
    }

    @Override // org.apache.poi.sl.draw.geom.ConnectionSiteIf
    public boolean isSetAng() {
        return this.cxn.xgetAng() == null;
    }

    @Override // org.apache.poi.sl.draw.geom.ConnectionSiteIf
    public void setAng(String str) {
        this.cxn.setAng(str);
    }

    @Override // org.apache.poi.sl.draw.geom.ConnectionSiteIf
    public void setPos(AdjustPointIf adjustPointIf) {
        CTAdjPoint2D pos = this.cxn.getPos();
        if (pos == null) {
            pos = this.cxn.addNewPos();
        }
        pos.setX(adjustPointIf.getX());
        pos.setY(adjustPointIf.getY());
    }
}
