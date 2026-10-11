package org.apache.poi.sl.draw.geom;

import java.util.Objects;

/* loaded from: classes12.dex */
public class AdjustPoint implements AdjustPointIf {

    /* renamed from: x */
    private String f111476x;

    /* renamed from: y */
    private String f111477y;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdjustPoint)) {
            return false;
        }
        AdjustPoint adjustPoint = (AdjustPoint) obj;
        return Objects.equals(this.f111476x, adjustPoint.f111476x) && Objects.equals(this.f111477y, adjustPoint.f111477y);
    }

    @Override // org.apache.poi.sl.draw.geom.AdjustPointIf
    public String getX() {
        return this.f111476x;
    }

    @Override // org.apache.poi.sl.draw.geom.AdjustPointIf
    public String getY() {
        return this.f111477y;
    }

    public int hashCode() {
        return Objects.hash(this.f111476x, this.f111477y);
    }

    @Override // org.apache.poi.sl.draw.geom.AdjustPointIf
    public boolean isSetX() {
        return this.f111476x != null;
    }

    @Override // org.apache.poi.sl.draw.geom.AdjustPointIf
    public boolean isSetY() {
        return this.f111477y != null;
    }

    @Override // org.apache.poi.sl.draw.geom.AdjustPointIf
    public void setX(String str) {
        this.f111476x = str;
    }

    @Override // org.apache.poi.sl.draw.geom.AdjustPointIf
    public void setY(String str) {
        this.f111477y = str;
    }
}
