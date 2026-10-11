package org.apache.poi.sl.draw.geom;

import java.awt.geom.Path2D;

/* loaded from: classes12.dex */
public interface LineToCommandIf extends PathCommand {
    @Override // org.apache.poi.sl.draw.geom.PathCommand
    default void execute(Path2D.Double r5, Context context) {
        AdjustPointIf pt = getPt();
        r5.lineTo(context.getValue(pt.getX()), context.getValue(pt.getY()));
    }

    AdjustPointIf getPt();

    void setPt(AdjustPointIf adjustPointIf);
}
