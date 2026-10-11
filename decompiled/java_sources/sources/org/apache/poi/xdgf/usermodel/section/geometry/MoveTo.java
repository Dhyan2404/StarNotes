package org.apache.poi.xdgf.usermodel.section.geometry;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.RowType;
import java.awt.geom.Path2D;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xdgf.usermodel.XDGFCell;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class MoveTo implements GeometryRow {
    MoveTo _master;
    Boolean deleted;

    /* renamed from: x */
    Double f111761x;

    /* renamed from: y */
    Double f111762y;

    public MoveTo(RowType rowType) {
        if (rowType.isSetDel()) {
            this.deleted = Boolean.valueOf(rowType.getDel());
        }
        for (CellType cellType : rowType.getCellArray()) {
            String n = cellType.getN();
            if (n.equals("X")) {
                this.f111761x = XDGFCell.parseDoubleValue(cellType);
            } else {
                if (!n.equals("Y")) {
                    throw new POIXMLException("Invalid cell '" + n + "' in MoveTo row");
                }
                this.f111762y = XDGFCell.parseDoubleValue(cellType);
            }
        }
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r5, XDGFShape xDGFShape) {
        if (getDel()) {
            return;
        }
        r5.moveTo(getX().doubleValue(), getY().doubleValue());
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        MoveTo moveTo = this._master;
        return moveTo != null && moveTo.getDel();
    }

    public Double getX() {
        Double d = this.f111761x;
        return d == null ? this._master.f111761x : d;
    }

    public Double getY() {
        Double d = this.f111762y;
        return d == null ? this._master.f111762y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (MoveTo) geometryRow;
    }

    public String toString() {
        return "MoveTo: x=" + getX() + "; y=" + getY();
    }
}
