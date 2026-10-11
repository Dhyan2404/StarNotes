package org.apache.poi.xdgf.usermodel.section.geometry;

import java.awt.geom.Path2D;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class InfiniteLine implements GeometryRow {
    InfiniteLine _master;

    /* renamed from: a */
    Double f111755a;

    /* renamed from: b */
    Double f111756b;
    Boolean deleted;

    /* renamed from: x */
    Double f111757x;

    /* renamed from: y */
    Double f111758y;

    /* JADX WARN: Removed duplicated region for block: B:21:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InfiniteLine(com.microsoft.schemas.office.visio.x2012.main.RowType r8) {
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
            if (r2 >= r0) goto L96
            r3 = r8[r2]
            java.lang.String r4 = r3.getN()
            r4.hashCode()
            int r5 = r4.hashCode()
            r6 = -1
            switch(r5) {
                case 65: goto L4f;
                case 66: goto L44;
                case 88: goto L39;
                case 89: goto L2e;
                default: goto L2d;
            }
        L2d:
            goto L59
        L2e:
            java.lang.String r5 = "Y"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L37
            goto L59
        L37:
            r6 = 3
            goto L59
        L39:
            java.lang.String r5 = "X"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L42
            goto L59
        L42:
            r6 = 2
            goto L59
        L44:
            java.lang.String r5 = "B"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L4d
            goto L59
        L4d:
            r6 = 1
            goto L59
        L4f:
            java.lang.String r5 = "A"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L58
            goto L59
        L58:
            r6 = r1
        L59:
            switch(r6) {
                case 0: goto L8d;
                case 1: goto L86;
                case 2: goto L7f;
                case 3: goto L78;
                default: goto L5c;
            }
        L5c:
            org.apache.poi.ooxml.POIXMLException r7 = new org.apache.poi.ooxml.POIXMLException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Invalid cell '"
            r8.append(r0)
            r8.append(r4)
            java.lang.String r0 = "' in InfiniteLine row"
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L78:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111758y = r3
            goto L93
        L7f:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111757x = r3
            goto L93
        L86:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111756b = r3
            goto L93
        L8d:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111755a = r3
        L93:
            int r2 = r2 + 1
            goto L1a
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xdgf.usermodel.section.geometry.InfiniteLine.<init>(com.microsoft.schemas.office.visio.x2012.main.RowType):void");
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r1, XDGFShape xDGFShape) {
        if (!getDel()) {
            throw new POIXMLException("InfiniteLine elements cannot be part of a path");
        }
    }

    public Double getA() {
        Double d = this.f111755a;
        return d == null ? this._master.f111755a : d;
    }

    public Double getB() {
        Double d = this.f111756b;
        return d == null ? this._master.f111756b : d;
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        InfiniteLine infiniteLine = this._master;
        return infiniteLine != null && infiniteLine.getDel();
    }

    public Path2D.Double getPath() {
        Path2D.Double r0 = new Path2D.Double();
        double doubleValue = getX().doubleValue();
        double doubleValue2 = getY().doubleValue();
        double doubleValue3 = getA().doubleValue();
        double doubleValue4 = getB().doubleValue();
        if (doubleValue == doubleValue3) {
            r0.moveTo(doubleValue, -100000.0d);
            r0.lineTo(doubleValue, 100000.0d);
        } else if (doubleValue2 == doubleValue4) {
            r0.moveTo(-100000.0d, doubleValue2);
            r0.lineTo(100000.0d, doubleValue2);
        } else {
            double d = (doubleValue4 - doubleValue2) / (doubleValue3 - doubleValue);
            double d2 = doubleValue2 - (doubleValue * d);
            r0.moveTo(100000.0d, (d * 100000.0d) + d2);
            r0.lineTo(100000.0d, (100000.0d - d2) / d);
        }
        return r0;
    }

    public Double getX() {
        Double d = this.f111757x;
        return d == null ? this._master.f111757x : d;
    }

    public Double getY() {
        Double d = this.f111758y;
        return d == null ? this._master.f111758y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (InfiniteLine) geometryRow;
    }
}
