package org.apache.poi.xdgf.usermodel.section.geometry;

import java.awt.geom.AffineTransform;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Path2D;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class Ellipse implements GeometryRow {
    Ellipse _master;

    /* renamed from: a */
    Double f111743a;

    /* renamed from: b */
    Double f111744b;

    /* renamed from: c */
    Double f111745c;

    /* renamed from: d */
    Double f111746d;
    Boolean deleted;

    /* renamed from: x */
    Double f111747x;

    /* renamed from: y */
    Double f111748y;

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
    public Ellipse(com.microsoft.schemas.office.visio.x2012.main.RowType r8) {
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
            java.lang.String r0 = "' in Ellipse row"
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L8e:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111748y = r3
            goto Lb7
        L95:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111747x = r3
            goto Lb7
        L9c:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111746d = r3
            goto Lb7
        La3:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111745c = r3
            goto Lb7
        Laa:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111744b = r3
            goto Lb7
        Lb1:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111743a = r3
        Lb7:
            int r2 = r2 + 1
            goto L1a
        Lbb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xdgf.usermodel.section.geometry.Ellipse.<init>(com.microsoft.schemas.office.visio.x2012.main.RowType):void");
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r1, XDGFShape xDGFShape) {
        throw new POIXMLException("Ellipse elements cannot be part of a path");
    }

    public Double getA() {
        Double d = this.f111743a;
        return d == null ? this._master.f111743a : d;
    }

    public Double getB() {
        Double d = this.f111744b;
        return d == null ? this._master.f111744b : d;
    }

    public Double getC() {
        Double d = this.f111745c;
        return d == null ? this._master.f111745c : d;
    }

    public Double getD() {
        Double d = this.f111746d;
        return d == null ? this._master.f111746d : d;
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        Ellipse ellipse = this._master;
        return ellipse != null && ellipse.getDel();
    }

    public Path2D.Double getPath() {
        if (getDel()) {
            return null;
        }
        double doubleValue = getX().doubleValue();
        double doubleValue2 = getY().doubleValue();
        double doubleValue3 = getA().doubleValue();
        double doubleValue4 = getB().doubleValue();
        double doubleValue5 = getC().doubleValue();
        double doubleValue6 = getD().doubleValue();
        double hypot = Math.hypot(doubleValue3 - doubleValue, doubleValue4 - doubleValue2);
        double hypot2 = Math.hypot(doubleValue5 - doubleValue, doubleValue6 - doubleValue2);
        double acos = (((doubleValue2 > doubleValue4 ? 1.0d : -1.0d) * Math.acos((doubleValue - doubleValue3) / hypot)) + 6.283185307179586d) % 6.283185307179586d;
        Path2D.Double r8 = new Path2D.Double(new Ellipse2D.Double(doubleValue - hypot, doubleValue2 - hypot2, hypot * 2.0d, hypot2 * 2.0d));
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.rotate(acos, doubleValue, doubleValue2);
        r8.transform(affineTransform);
        return r8;
    }

    public Double getX() {
        Double d = this.f111747x;
        return d == null ? this._master.f111747x : d;
    }

    public Double getY() {
        Double d = this.f111748y;
        return d == null ? this._master.f111748y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (Ellipse) geometryRow;
    }
}
