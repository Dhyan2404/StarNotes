package org.apache.poi.xdgf.usermodel.section.geometry;

import com.google.android.material.motion.MotionUtils;
import com.graphbuilder.curve.ControlPath;
import com.graphbuilder.curve.ValueVector;
import com.graphbuilder.geom.PointFactory;
import java.awt.Shape;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xdgf.geom.SplineRenderer;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class NURBSTo implements GeometryRow {
    NURBSTo _master;

    /* renamed from: a */
    Double f111763a;

    /* renamed from: b */
    Double f111764b;

    /* renamed from: c */
    Double f111765c;

    /* renamed from: d */
    Double f111766d;
    Boolean deleted;

    /* renamed from: e */
    String f111767e;

    /* renamed from: x */
    Double f111768x;

    /* renamed from: y */
    Double f111769y;

    /* JADX WARN: Removed duplicated region for block: B:30:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NURBSTo(com.microsoft.schemas.office.visio.x2012.main.RowType r8) {
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
            if (r2 >= r0) goto Lcd
            r3 = r8[r2]
            java.lang.String r4 = r3.getN()
            r4.hashCode()
            int r5 = r4.hashCode()
            r6 = -1
            switch(r5) {
                case 65: goto L70;
                case 66: goto L65;
                case 67: goto L5a;
                case 68: goto L4f;
                case 69: goto L44;
                case 88: goto L39;
                case 89: goto L2e;
                default: goto L2d;
            }
        L2d:
            goto L7a
        L2e:
            java.lang.String r5 = "Y"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L37
            goto L7a
        L37:
            r6 = 6
            goto L7a
        L39:
            java.lang.String r5 = "X"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L42
            goto L7a
        L42:
            r6 = 5
            goto L7a
        L44:
            java.lang.String r5 = "E"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L4d
            goto L7a
        L4d:
            r6 = 4
            goto L7a
        L4f:
            java.lang.String r5 = "D"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L58
            goto L7a
        L58:
            r6 = 3
            goto L7a
        L5a:
            java.lang.String r5 = "C"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L63
            goto L7a
        L63:
            r6 = 2
            goto L7a
        L65:
            java.lang.String r5 = "B"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L6e
            goto L7a
        L6e:
            r6 = 1
            goto L7a
        L70:
            java.lang.String r5 = "A"
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L79
            goto L7a
        L79:
            r6 = r1
        L7a:
            switch(r6) {
                case 0: goto Lc3;
                case 1: goto Lbc;
                case 2: goto Lb5;
                case 3: goto Lae;
                case 4: goto La7;
                case 5: goto La0;
                case 6: goto L99;
                default: goto L7d;
            }
        L7d:
            org.apache.poi.ooxml.POIXMLException r7 = new org.apache.poi.ooxml.POIXMLException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Invalid cell '"
            r8.append(r0)
            r8.append(r4)
            java.lang.String r0 = "' in NURBS row"
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L99:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111769y = r3
            goto Lc9
        La0:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111768x = r3
            goto Lc9
        La7:
            java.lang.String r3 = r3.getV()
            r7.f111767e = r3
            goto Lc9
        Lae:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111766d = r3
            goto Lc9
        Lb5:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111765c = r3
            goto Lc9
        Lbc:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111764b = r3
            goto Lc9
        Lc3:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111763a = r3
        Lc9:
            int r2 = r2 + 1
            goto L1a
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xdgf.usermodel.section.geometry.NURBSTo.<init>(com.microsoft.schemas.office.visio.x2012.main.RowType):void");
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r34, XDGFShape xDGFShape) {
        if (getDel()) {
            return;
        }
        Point2D currentPoint = r34.getCurrentPoint();
        String trim = getE().trim();
        if (!trim.startsWith("NURBS(") || !trim.endsWith(MotionUtils.f31762d)) {
            throw new POIXMLException("Invalid NURBS formula: " + trim);
        }
        String[] split = trim.substring(6, trim.length() - 1).split(",");
        if (split.length < 8) {
            throw new POIXMLException("Invalid NURBS formula (not enough arguments)");
        }
        if ((split.length - 4) % 4 != 0) {
            throw new POIXMLException("Invalid NURBS formula -- need 4 + n*4 arguments, got " + split.length);
        }
        double doubleValue = getX().doubleValue();
        double doubleValue2 = getY().doubleValue();
        double doubleValue3 = getA().doubleValue();
        double doubleValue4 = getB().doubleValue();
        double doubleValue5 = getC().doubleValue();
        double doubleValue6 = getD().doubleValue();
        double parseDouble = Double.parseDouble(split[0].trim());
        int parseInt = Integer.parseInt(split[1].trim());
        int parseInt2 = Integer.parseInt(split[2].trim());
        int parseInt3 = Integer.parseInt(split[3].trim());
        double doubleValue7 = parseInt2 == 0 ? xDGFShape.getWidth().doubleValue() : 1.0d;
        double doubleValue8 = parseInt3 == 0 ? xDGFShape.getHeight().doubleValue() : 1.0d;
        ControlPath controlPath = new ControlPath();
        ValueVector valueVector = new ValueVector();
        ValueVector valueVector2 = new ValueVector();
        valueVector.add(doubleValue5);
        valueVector2.add(doubleValue6);
        controlPath.addPoint(PointFactory.create(currentPoint.getX(), currentPoint.getY()));
        int length = (split.length - 4) / 4;
        int i = 0;
        while (i < length) {
            int i2 = (i * 4) + 4;
            double parseDouble2 = Double.parseDouble(split[i2 + 0].trim());
            double parseDouble3 = Double.parseDouble(split[i2 + 1].trim());
            double d = doubleValue4;
            double parseDouble4 = Double.parseDouble(split[i2 + 2].trim());
            int i3 = length;
            double parseDouble5 = Double.parseDouble(split[i2 + 3].trim());
            controlPath.addPoint(PointFactory.create(parseDouble2 * doubleValue7, parseDouble3 * doubleValue8));
            valueVector.add(parseDouble4);
            valueVector2.add(parseDouble5);
            i++;
            length = i3;
            split = split;
            doubleValue4 = d;
            parseDouble = parseDouble;
        }
        valueVector.add(doubleValue3);
        valueVector.add(parseDouble);
        valueVector2.add(doubleValue4);
        controlPath.addPoint(PointFactory.create(doubleValue, doubleValue2));
        r34.append((Shape) SplineRenderer.createNurbsSpline(controlPath, valueVector, valueVector2, parseInt), true);
    }

    public Double getA() {
        Double d = this.f111763a;
        return d == null ? this._master.f111763a : d;
    }

    public Double getB() {
        Double d = this.f111764b;
        return d == null ? this._master.f111764b : d;
    }

    public Double getC() {
        Double d = this.f111765c;
        return d == null ? this._master.f111765c : d;
    }

    public Double getD() {
        Double d = this.f111766d;
        return d == null ? this._master.f111766d : d;
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        NURBSTo nURBSTo = this._master;
        return nURBSTo != null && nURBSTo.getDel();
    }

    public String getE() {
        String str = this.f111767e;
        return str == null ? this._master.f111767e : str;
    }

    public Double getX() {
        Double d = this.f111768x;
        return d == null ? this._master.f111768x : d;
    }

    public Double getY() {
        Double d = this.f111769y;
        return d == null ? this._master.f111769y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (NURBSTo) geometryRow;
    }
}
