package org.apache.poi.xdgf.usermodel.section.geometry;

import java.awt.geom.AffineTransform;
import java.awt.geom.Arc2D;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class EllipticalArcTo implements GeometryRow {
    EllipticalArcTo _master;

    /* renamed from: a */
    Double f111749a;

    /* renamed from: b */
    Double f111750b;

    /* renamed from: c */
    Double f111751c;

    /* renamed from: d */
    Double f111752d;
    Boolean deleted;

    /* renamed from: x */
    Double f111753x;

    /* renamed from: y */
    Double f111754y;

    /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0072 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EllipticalArcTo(com.microsoft.schemas.office.visio.x2012.main.RowType r8) {
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
            if (r2 >= r0) goto Lbb
            r3 = r8[r2]
            java.lang.String r4 = r3.getN()
            r4.hashCode()
            int r5 = r4.hashCode()
            r6 = -1
            switch(r5) {
                case 65: goto L65;
                case 66: goto L5a;
                case 67: goto L4f;
                case 68: goto L44;
                case 88: goto L39;
                case 89: goto L2e;
                default: goto L2d;
            }
        L2d:
            goto L6f
        L2e:
            java.lang.String r5 = "Y"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L37
            goto L6f
        L37:
            r6 = 5
            goto L6f
        L39:
            java.lang.String r5 = "X"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L42
            goto L6f
        L42:
            r6 = 4
            goto L6f
        L44:
            java.lang.String r5 = "D"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L4d
            goto L6f
        L4d:
            r6 = 3
            goto L6f
        L4f:
            java.lang.String r5 = "C"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L58
            goto L6f
        L58:
            r6 = 2
            goto L6f
        L5a:
            java.lang.String r5 = "B"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L63
            goto L6f
        L63:
            r6 = 1
            goto L6f
        L65:
            java.lang.String r5 = "A"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L6e
            goto L6f
        L6e:
            r6 = r1
        L6f:
            switch(r6) {
                case 0: goto Lb1;
                case 1: goto Laa;
                case 2: goto La3;
                case 3: goto L9c;
                case 4: goto L95;
                case 5: goto L8e;
                default: goto L72;
            }
        L72:
            org.apache.poi.ooxml.POIXMLException r7 = new org.apache.poi.ooxml.POIXMLException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Invalid cell '"
            r8.append(r0)
            r8.append(r4)
            java.lang.String r0 = "' in EllipticalArcTo row"
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L8e:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111754y = r3
            goto Lb7
        L95:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111753x = r3
            goto Lb7
        L9c:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111752d = r3
            goto Lb7
        La3:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111751c = r3
            goto Lb7
        Laa:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111750b = r3
            goto Lb7
        Lb1:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111749a = r3
        Lb7:
            int r2 = r2 + 1
            goto L1a
        Lbb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xdgf.usermodel.section.geometry.EllipticalArcTo.<init>(com.microsoft.schemas.office.visio.x2012.main.RowType):void");
    }

    public static double computeSweep(double d, double d2, double d3) {
        double d4 = (d + 360.0d) % 360.0d;
        double d5 = (d2 + 360.0d) % 360.0d;
        double d6 = (d3 + 360.0d) % 360.0d;
        if (d4 < d5) {
            if (d4 >= d6 || d6 >= d5) {
                return (d4 - d5) + 360.0d;
            }
        } else if (d5 >= d6 || d6 >= d4) {
            return -(360.0d - (d4 - d5));
        }
        return d4 - d5;
    }

    public static void createEllipticalArc(double d, double d2, double d3, double d4, double d5, double d6, Path2D.Double r58) {
        Point2D currentPoint = r58.getCurrentPoint();
        double x = currentPoint.getX();
        double y = currentPoint.getY();
        AffineTransform rotateInstance = AffineTransform.getRotateInstance(-d5);
        double[] dArr = {x, y, d, d2, d3, d4};
        rotateInstance.transform(dArr, 0, dArr, 0, 3);
        double d7 = dArr[0];
        double d8 = dArr[1];
        double d9 = dArr[2];
        double d10 = dArr[3];
        double d11 = dArr[4];
        double d12 = dArr[5];
        double d13 = d6 * d6;
        double d14 = d7 - d9;
        double d15 = d10 - d12;
        double d16 = d9 - d11;
        double d17 = d8 - d10;
        double d18 = ((((d7 + d9) * d14) * d15) - (((d9 + d11) * d16) * d17)) + (d13 * d17 * d15 * (d8 - d12));
        double d19 = d15 * d14;
        double d20 = d17 * d16;
        double d21 = d18 / ((d19 - d20) * 2.0d);
        double d22 = (((((d14 * d16) * (d7 - d11)) / d13) + ((d8 + d10) * d20)) - ((d10 + d12) * d19)) / ((d20 - d19) * 2.0d);
        double d23 = d7 - d21;
        double d24 = d8 - d22;
        double sqrt = Math.sqrt(Math.pow(d23, 2.0d) + (Math.pow(d24, 2.0d) * d13));
        double d25 = sqrt / d6;
        double degrees = Math.toDegrees(Math.atan2((d12 - d22) / d25, (d11 - d21) / sqrt));
        double degrees2 = Math.toDegrees(Math.atan2(d24 / d25, d23 / sqrt));
        Arc2D.Double r3 = new Arc2D.Double(d21 - sqrt, d22 - d25, sqrt * 2.0d, d25 * 2.0d, -degrees2, computeSweep(degrees2, Math.toDegrees(Math.atan2((d10 - d22) / d25, (d9 - d21) / sqrt)), degrees), 0);
        rotateInstance.setToRotation(d5);
        r58.append(rotateInstance.createTransformedShape(r3), false);
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r14, XDGFShape xDGFShape) {
        if (getDel()) {
            return;
        }
        createEllipticalArc(getX().doubleValue(), getY().doubleValue(), getA().doubleValue(), getB().doubleValue(), getC().doubleValue(), getD().doubleValue(), r14);
    }

    public Double getA() {
        Double d = this.f111749a;
        return d == null ? this._master.f111749a : d;
    }

    public Double getB() {
        Double d = this.f111750b;
        return d == null ? this._master.f111750b : d;
    }

    public Double getC() {
        Double d = this.f111751c;
        return d == null ? this._master.f111751c : d;
    }

    public Double getD() {
        Double d = this.f111752d;
        return d == null ? this._master.f111752d : d;
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        EllipticalArcTo ellipticalArcTo = this._master;
        return ellipticalArcTo != null && ellipticalArcTo.getDel();
    }

    public Double getX() {
        Double d = this.f111753x;
        return d == null ? this._master.f111753x : d;
    }

    public Double getY() {
        Double d = this.f111754y;
        return d == null ? this._master.f111754y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (EllipticalArcTo) geometryRow;
    }
}
