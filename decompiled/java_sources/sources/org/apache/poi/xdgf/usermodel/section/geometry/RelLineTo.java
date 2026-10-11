package org.apache.poi.xdgf.usermodel.section.geometry;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.RowType;
import java.awt.geom.Path2D;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xdgf.usermodel.XDGFCell;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class RelLineTo implements GeometryRow {
    RelLineTo _master;
    Boolean deleted;

    /* renamed from: x */
    Double f111785x;

    /* renamed from: y */
    Double f111786y;

    public RelLineTo(RowType rowType) {
        if (rowType.isSetDel()) {
            this.deleted = Boolean.valueOf(rowType.getDel());
        }
        for (CellType cellType : rowType.getCellArray()) {
            String n = cellType.getN();
            if (n.equals("X")) {
                this.f111785x = XDGFCell.parseDoubleValue(cellType);
            } else {
                if (!n.equals("Y")) {
                    throw new POIXMLException("Invalid cell '" + n + "' in RelLineTo row");
                }
                this.f111786y = XDGFCell.parseDoubleValue(cellType);
            }
        }
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r7, XDGFShape xDGFShape) {
        if (getDel()) {
            return;
        }
        r7.lineTo(getX().doubleValue() * xDGFShape.getWidth().doubleValue(), getY().doubleValue() * xDGFShape.getHeight().doubleValue());
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        RelLineTo relLineTo = this._master;
        return relLineTo != null && relLineTo.getDel();
    }

    public Double getX() {
        Double d = this.f111785x;
        return d == null ? this._master.f111785x : d;
    }

    public Double getY() {
        Double d = this.f111786y;
        return d == null ? this._master.f111786y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (RelLineTo) geometryRow;
    }
}
