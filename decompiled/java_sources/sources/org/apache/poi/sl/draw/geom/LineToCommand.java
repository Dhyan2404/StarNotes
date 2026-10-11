package org.apache.poi.sl.draw.geom;

import java.util.Objects;

/* loaded from: classes12.dex */
public final class LineToCommand implements LineToCommandIf {

    /* renamed from: pt */
    private final AdjustPoint f111486pt = new AdjustPoint();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LineToCommand) {
            return Objects.equals(this.f111486pt, ((LineToCommand) obj).f111486pt);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f111486pt);
    }

    @Override // org.apache.poi.sl.draw.geom.LineToCommandIf
    public void setPt(AdjustPointIf adjustPointIf) {
        if (adjustPointIf != null) {
            this.f111486pt.setX(adjustPointIf.getX());
            this.f111486pt.setY(adjustPointIf.getY());
        }
    }

    @Override // org.apache.poi.sl.draw.geom.LineToCommandIf
    public AdjustPoint getPt() {
        return this.f111486pt;
    }
}
