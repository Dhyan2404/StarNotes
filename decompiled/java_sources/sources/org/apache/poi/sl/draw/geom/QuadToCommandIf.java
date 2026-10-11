package org.apache.poi.sl.draw.geom;

import java.awt.geom.Path2D;

/* loaded from: classes12.dex */
public interface QuadToCommandIf extends PathCommand {
    @Override // org.apache.poi.sl.draw.geom.PathCommand
    default void execute(Path2D.Double r12, Context context) {
        AdjustPointIf pt1 = getPt1();
        double value = context.getValue(pt1.getX());
        double value2 = context.getValue(pt1.getY());
        AdjustPointIf pt2 = getPt2();
        r12.quadTo(value, value2, context.getValue(pt2.getX()), context.getValue(pt2.getY()));
    }

    AdjustPointIf getPt1();

    AdjustPointIf getPt2();

    void setPt1(AdjustPointIf adjustPointIf);

    void setPt2(AdjustPointIf adjustPointIf);
}
