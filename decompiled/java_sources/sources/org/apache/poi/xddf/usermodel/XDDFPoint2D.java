package org.apache.poi.xddf.usermodel;

import org.apache.poi.ooxml.util.POIXMLUnits;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;

/* loaded from: classes13.dex */
public class XDDFPoint2D {
    private CTPoint2D point;

    /* renamed from: x */
    private long f111731x;

    /* renamed from: y */
    private long f111732y;

    public XDDFPoint2D(CTPoint2D cTPoint2D) {
        this.point = cTPoint2D;
    }

    public long getX() {
        CTPoint2D cTPoint2D = this.point;
        return cTPoint2D == null ? this.f111731x : POIXMLUnits.parseLength(cTPoint2D.xgetX());
    }

    public long getY() {
        CTPoint2D cTPoint2D = this.point;
        return cTPoint2D == null ? this.f111732y : POIXMLUnits.parseLength(cTPoint2D.xgetY());
    }

    public XDDFPoint2D(long j, long j2) {
        this.f111731x = j;
        this.f111732y = j2;
    }
}
