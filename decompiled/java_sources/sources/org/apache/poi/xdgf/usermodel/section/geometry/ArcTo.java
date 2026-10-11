package org.apache.poi.xdgf.usermodel.section.geometry;

import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class ArcTo implements GeometryRow {
    ArcTo _master;

    /* renamed from: a */
    Double f111740a;
    Boolean deleted;

    /* renamed from: x */
    Double f111741x;

    /* renamed from: y */
    Double f111742y;

    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ArcTo(com.microsoft.schemas.office.visio.x2012.main.RowType r8) {
        /*
            r7 = this;
            r7.<init>()
            boolean r0 = r8.isSetDel()
            if (r0 == 0) goto L13
            boolean r0 = r8.getDel()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r7.deleted = r0
        L13:
            com.microsoft.schemas.office.visio.x2012.main.CellType[] r8 = r8.getCellArray()
            int r0 = r8.length
            r1 = 0
            r2 = r1
        L1a:
            if (r2 >= r0) goto L84
            r3 = r8[r2]
            java.lang.String r4 = r3.getN()
            r4.hashCode()
            int r5 = r4.hashCode()
            r6 = -1
            switch(r5) {
                case 65: goto L44;
                case 88: goto L39;
                case 89: goto L2e;
                default: goto L2d;
            }
        L2d:
            goto L4e
        L2e:
            java.lang.String r5 = "Y"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L37
            goto L4e
        L37:
            r6 = 2
            goto L4e
        L39:
            java.lang.String r5 = "X"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L42
            goto L4e
        L42:
            r6 = 1
            goto L4e
        L44:
            java.lang.String r5 = "A"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L4d
            goto L4e
        L4d:
            r6 = r1
        L4e:
            switch(r6) {
                case 0: goto L7b;
                case 1: goto L74;
                case 2: goto L6d;
                default: goto L51;
            }
        L51:
            org.apache.poi.ooxml.POIXMLException r7 = new org.apache.poi.ooxml.POIXMLException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Invalid cell '"
            r8.append(r0)
            r8.append(r4)
            java.lang.String r0 = "' in ArcTo row"
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L6d:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111742y = r3
            goto L81
        L74:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111741x = r3
            goto L81
        L7b:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111740a = r3
        L81:
            int r2 = r2 + 1
            goto L1a
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xdgf.usermodel.section.geometry.ArcTo.<init>(com.microsoft.schemas.office.visio.x2012.main.RowType):void");
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r21, XDGFShape xDGFShape) {
        if (getDel()) {
            return;
        }
        Point2D currentPoint = r21.getCurrentPoint();
        double doubleValue = getX().doubleValue();
        double doubleValue2 = getY().doubleValue();
        double doubleValue3 = getA().doubleValue();
        if (doubleValue3 == 0.0d) {
            r21.lineTo(doubleValue, doubleValue2);
            return;
        }
        double x = currentPoint.getX();
        double y = currentPoint.getY();
        double d = doubleValue2 - y;
        double d2 = x - doubleValue;
        double sqrt = Math.sqrt((d * d) + (d2 * d2));
        EllipticalArcTo.createEllipticalArc(doubleValue, doubleValue2, ((x + doubleValue) / 2.0d) + ((d * doubleValue3) / sqrt), ((y + doubleValue2) / 2.0d) + ((doubleValue3 * d2) / sqrt), 0.0d, 1.0d, r21);
    }

    public Double getA() {
        Double d = this.f111740a;
        return d == null ? this._master.f111740a : d;
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        ArcTo arcTo = this._master;
        return arcTo != null && arcTo.getDel();
    }

    public Double getX() {
        Double d = this.f111741x;
        return d == null ? this._master.f111741x : d;
    }

    public Double getY() {
        Double d = this.f111742y;
        return d == null ? this._master.f111742y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (ArcTo) geometryRow;
    }

    public String toString() {
        return String.format(LocaleUtil.getUserLocale(), "ArcTo: x=%f; y=%f; a=%f", this.f111741x, this.f111742y, this.f111740a);
    }
}
