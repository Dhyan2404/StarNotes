package org.apache.poi.sl.draw.geom;

import java.util.Objects;

/* loaded from: classes12.dex */
public final class QuadToCommand implements QuadToCommandIf {
    private final AdjustPoint pt1 = new AdjustPoint();
    private final AdjustPoint pt2 = new AdjustPoint();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QuadToCommand)) {
            return false;
        }
        QuadToCommand quadToCommand = (QuadToCommand) obj;
        return Objects.equals(this.pt1, quadToCommand.pt1) && Objects.equals(this.pt2, quadToCommand.pt2);
    }

    public int hashCode() {
        return Objects.hash(this.pt1, this.pt2);
    }

    @Override // org.apache.poi.sl.draw.geom.QuadToCommandIf
    public void setPt1(AdjustPointIf adjustPointIf) {
        if (adjustPointIf != null) {
            this.pt1.setX(adjustPointIf.getX());
            this.pt1.setY(adjustPointIf.getY());
        }
    }

    @Override // org.apache.poi.sl.draw.geom.QuadToCommandIf
    public void setPt2(AdjustPointIf adjustPointIf) {
        if (adjustPointIf != null) {
            this.pt2.setX(adjustPointIf.getX());
            this.pt2.setY(adjustPointIf.getY());
        }
    }

    @Override // org.apache.poi.sl.draw.geom.QuadToCommandIf
    public AdjustPoint getPt1() {
        return this.pt1;
    }

    @Override // org.apache.poi.sl.draw.geom.QuadToCommandIf
    public AdjustPoint getPt2() {
        return this.pt2;
    }
}
