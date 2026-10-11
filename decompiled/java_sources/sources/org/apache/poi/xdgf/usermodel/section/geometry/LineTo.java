package org.apache.poi.xdgf.usermodel.section.geometry;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.RowType;
import java.awt.geom.Path2D;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xdgf.usermodel.XDGFCell;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class LineTo implements GeometryRow {
    LineTo _master;
    Boolean deleted;

    /* renamed from: x */
    Double f111759x;

    /* renamed from: y */
    Double f111760y;

    public LineTo(RowType rowType) {
        if (rowType.isSetDel()) {
            this.deleted = Boolean.valueOf(rowType.getDel());
        }
        for (CellType cellType : rowType.getCellArray()) {
            String n = cellType.getN();
            if (n.equals("X")) {
                this.f111759x = XDGFCell.parseDoubleValue(cellType);
            } else {
                if (!n.equals("Y")) {
                    throw new POIXMLException("Invalid cell '" + n + "' in LineTo row");
                }
                this.f111760y = XDGFCell.parseDoubleValue(cellType);
            }
        }
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r5, XDGFShape xDGFShape) {
        if (getDel()) {
            return;
        }
        r5.lineTo(getX().doubleValue(), getY().doubleValue());
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        LineTo lineTo = this._master;
        return lineTo != null && lineTo.getDel();
    }

    public Double getX() {
        Double d = this.f111759x;
        return d == null ? this._master.f111759x : d;
    }

    public Double getY() {
        Double d = this.f111760y;
        return d == null ? this._master.f111760y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (LineTo) geometryRow;
    }

    public String toString() {
        return "LineTo: x=" + getX() + "; y=" + getY();
    }
}
