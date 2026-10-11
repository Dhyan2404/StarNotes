package org.apache.poi.xslf.usermodel;

import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.sl.usermodel.TabStop;
import org.apache.poi.util.Units;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextTabAlignType;

/* loaded from: classes13.dex */
public class XSLFTabStop implements TabStop {
    final CTTextTabStop tabStop;

    public XSLFTabStop(CTTextTabStop cTTextTabStop) {
        this.tabStop = cTTextTabStop;
    }

    public int getPosition() {
        return (int) POIXMLUnits.parseLength(this.tabStop.xgetPos());
    }

    @Override // org.apache.poi.sl.usermodel.TabStop
    public double getPositionInPoints() {
        return Units.toPoints(getPosition());
    }

    @Override // org.apache.poi.sl.usermodel.TabStop
    public TabStop.TabStopType getType() {
        return TabStop.TabStopType.fromOoxmlId(this.tabStop.getAlgn().intValue());
    }

    public void setPosition(int i) {
        this.tabStop.setPos(Integer.valueOf(i));
    }

    @Override // org.apache.poi.sl.usermodel.TabStop
    public void setPositionInPoints(double d) {
        setPosition(Units.toEMU(d));
    }

    @Override // org.apache.poi.sl.usermodel.TabStop
    public void setType(TabStop.TabStopType tabStopType) {
        this.tabStop.setAlgn(STTextTabAlignType.Enum.forInt(tabStopType.ooxmlId));
    }
}
