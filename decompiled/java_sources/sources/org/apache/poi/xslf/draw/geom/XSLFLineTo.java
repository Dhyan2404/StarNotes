package org.apache.poi.xslf.draw.geom;

import org.apache.poi.sl.draw.geom.AdjustPointIf;
import org.apache.poi.sl.draw.geom.LineToCommandIf;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DLineTo;

/* loaded from: classes13.dex */
public class XSLFLineTo implements LineToCommandIf {
    private final CTPath2DLineTo lineTo;

    public XSLFLineTo(CTPath2DLineTo cTPath2DLineTo) {
        this.lineTo = cTPath2DLineTo;
    }

    @Override // org.apache.poi.sl.draw.geom.LineToCommandIf
    public AdjustPointIf getPt() {
        return new XSLFAdjustPoint(this.lineTo.getPt());
    }

    @Override // org.apache.poi.sl.draw.geom.LineToCommandIf
    public void setPt(AdjustPointIf adjustPointIf) {
        CTAdjPoint2D pt = this.lineTo.getPt();
        if (pt == null) {
            pt = this.lineTo.addNewPt();
        }
        pt.setX(adjustPointIf.getX());
        pt.setY(adjustPointIf.getY());
    }
}
