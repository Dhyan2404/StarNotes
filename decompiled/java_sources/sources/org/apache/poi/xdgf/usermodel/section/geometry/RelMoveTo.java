package org.apache.poi.xdgf.usermodel.section.geometry;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.RowType;
import java.awt.geom.Path2D;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xdgf.usermodel.XDGFCell;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class RelMoveTo implements GeometryRow {
    RelMoveTo _master;
    Boolean deleted;

    /* renamed from: x */
    Double f111787x;

    /* renamed from: y */
    Double f111788y;

    public RelMoveTo(RowType rowType) {
        if (rowType.isSetDel()) {
            this.deleted = Boolean.valueOf(rowType.getDel());
        }
        for (CellType cellType : rowType.getCellArray()) {
            String n = cellType.getN();
            if (n.equals("X")) {
                this.f111787x = XDGFCell.parseDoubleValue(cellType);
            } else {
                if (!n.equals("Y")) {
                    throw new POIXMLException("Invalid cell '" + n + "' in RelMoveTo row");
                }
                this.f111788y = XDGFCell.parseDoubleValue(cellType);
            }
        }
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r7, XDGFShape xDGFShape) {
        if (getDel()) {
            return;
        }
        r7.moveTo(getX().doubleValue() * xDGFShape.getWidth().doubleValue(), getY().doubleValue() * xDGFShape.getHeight().doubleValue());
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        RelMoveTo relMoveTo = this._master;
        return relMoveTo != null && relMoveTo.getDel();
    }

    public Double getX() {
        Double d = this.f111787x;
        return d == null ? this._master.f111787x : d;
    }

    public Double getY() {
        Double d = this.f111788y;
        return d == null ? this._master.f111788y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (RelMoveTo) geometryRow;
    }
}
