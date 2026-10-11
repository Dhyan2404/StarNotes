package org.apache.poi.xddf.usermodel;

import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTDashStop;

/* loaded from: classes13.dex */
public class XDDFDashStop {
    private CTDashStop stop;

    @Internal
    public XDDFDashStop(CTDashStop cTDashStop) {
        this.stop = cTDashStop;
    }

    public int getDashLength() {
        return POIXMLUnits.parsePercent(this.stop.xgetD());
    }

    public int getSpaceLength() {
        return POIXMLUnits.parsePercent(this.stop.xgetSp());
    }

    @Internal
    public CTDashStop getXmlObject() {
        return this.stop;
    }

    public void setDashLength(int i) {
        this.stop.setD(Integer.valueOf(i));
    }

    public void setSpaceLength(int i) {
        this.stop.setSp(Integer.valueOf(i));
    }
}
