package org.apache.poi.sl.draw.geom;

import java.util.Objects;

/* loaded from: classes12.dex */
public final class MoveToCommand implements MoveToCommandIf {

    /* renamed from: pt */
    private final AdjustPoint f111487pt = new AdjustPoint();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MoveToCommand) {
            return Objects.equals(this.f111487pt, ((MoveToCommand) obj).f111487pt);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f111487pt);
    }

    @Override // org.apache.poi.sl.draw.geom.MoveToCommandIf
    public void setPt(AdjustPointIf adjustPointIf) {
        if (adjustPointIf != null) {
            this.f111487pt.setX(adjustPointIf.getX());
            this.f111487pt.setY(adjustPointIf.getY());
        }
    }

    @Override // org.apache.poi.sl.draw.geom.MoveToCommandIf
    public AdjustPoint getPt() {
        return this.f111487pt;
    }
}
