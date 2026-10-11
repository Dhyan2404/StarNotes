package com.graphbuilder.curve;

/* loaded from: classes4.dex */
public class Polyline extends Curve {
    public Polyline(ControlPath controlPath, GroupIterator groupIterator) {
        super(controlPath, groupIterator);
    }

    @Override // com.graphbuilder.curve.Curve
    public void appendTo(MultiPath multiPath) {
        if (!this.f38825gi.isInRange(0, this.f38824cp.numPoints())) {
            throw new IllegalArgumentException("Group iterator not in range");
        }
        this.f38825gi.set(0, 0);
        if (this.connect) {
            multiPath.lineTo(this.f38824cp.getPoint(this.f38825gi.next()).getLocation());
        } else {
            multiPath.moveTo(this.f38824cp.getPoint(this.f38825gi.next()).getLocation());
        }
        while (this.f38825gi.hasNext()) {
            multiPath.lineTo(this.f38824cp.getPoint(this.f38825gi.next()).getLocation());
        }
    }
}
