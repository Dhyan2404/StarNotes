package org.apache.poi.xdgf.usermodel.section.geometry;

import java.awt.geom.Path2D;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class RelCubBezTo implements GeometryRow {
    RelCubBezTo _master;

    /* renamed from: a */
    Double f111773a;

    /* renamed from: b */
    Double f111774b;

    /* renamed from: c */
    Double f111775c;

    /* renamed from: d */
    Double f111776d;
    Boolean deleted;

    /* renamed from: x */
    Double f111777x;

    /* renamed from: y */
    Double f111778y;

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
    public RelCubBezTo(com.microsoft.schemas.office.visio.x2012.main.RowType r8) {
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
            java.lang.String r0 = "' in RelCubBezTo row"
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L8e:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111778y = r3
            goto Lb7
        L95:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111777x = r3
            goto Lb7
        L9c:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111776d = r3
            goto Lb7
        La3:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111775c = r3
            goto Lb7
        Laa:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111774b = r3
            goto Lb7
        Lb1:
            java.lang.Double r3 = org.apache.poi.xdgf.usermodel.XDGFCell.parseDoubleValue(r3)
            r7.f111773a = r3
        Lb7:
            int r2 = r2 + 1
            goto L1a
        Lbb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xdgf.usermodel.section.geometry.RelCubBezTo.<init>(com.microsoft.schemas.office.visio.x2012.main.RowType):void");
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void addToPath(Path2D.Double r20, XDGFShape xDGFShape) {
        if (getDel()) {
            return;
        }
        double doubleValue = xDGFShape.getWidth().doubleValue();
        double doubleValue2 = xDGFShape.getHeight().doubleValue();
        r20.curveTo(getA().doubleValue() * doubleValue, getB().doubleValue() * doubleValue2, getC().doubleValue() * doubleValue, getD().doubleValue() * doubleValue2, getX().doubleValue() * doubleValue, getY().doubleValue() * doubleValue2);
    }

    public Double getA() {
        Double d = this.f111773a;
        return d == null ? this._master.f111773a : d;
    }

    public Double getB() {
        Double d = this.f111774b;
        return d == null ? this._master.f111774b : d;
    }

    public Double getC() {
        Double d = this.f111775c;
        return d == null ? this._master.f111775c : d;
    }

    public Double getD() {
        Double d = this.f111776d;
        return d == null ? this._master.f111776d : d;
    }

    public boolean getDel() {
        Boolean bool = this.deleted;
        if (bool != null) {
            return bool.booleanValue();
        }
        RelCubBezTo relCubBezTo = this._master;
        return relCubBezTo != null && relCubBezTo.getDel();
    }

    public Double getX() {
        Double d = this.f111777x;
        return d == null ? this._master.f111777x : d;
    }

    public Double getY() {
        Double d = this.f111778y;
        return d == null ? this._master.f111778y : d;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow
    public void setupMaster(GeometryRow geometryRow) {
        this._master = (RelCubBezTo) geometryRow;
    }
}
