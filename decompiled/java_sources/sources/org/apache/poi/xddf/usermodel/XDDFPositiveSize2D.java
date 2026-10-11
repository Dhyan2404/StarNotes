package org.apache.poi.xddf.usermodel;

import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;

/* loaded from: classes13.dex */
public class XDDFPositiveSize2D {
    private CTPositiveSize2D size;

    /* renamed from: x */
    private long f111733x;

    /* renamed from: y */
    private long f111734y;

    public XDDFPositiveSize2D(CTPositiveSize2D cTPositiveSize2D) {
        this.size = cTPositiveSize2D;
    }

    public long getX() {
        CTPositiveSize2D cTPositiveSize2D = this.size;
        return cTPositiveSize2D == null ? this.f111733x : cTPositiveSize2D.getCx();
    }

    public long getY() {
        CTPositiveSize2D cTPositiveSize2D = this.size;
        return cTPositiveSize2D == null ? this.f111734y : cTPositiveSize2D.getCy();
    }

    public XDDFPositiveSize2D(long j, long j2) {
        if (j >= 0 && j2 >= 0) {
            this.f111733x = j;
            this.f111734y = j2;
            return;
        }
        throw new IllegalArgumentException("x and y must be positive");
    }
}
