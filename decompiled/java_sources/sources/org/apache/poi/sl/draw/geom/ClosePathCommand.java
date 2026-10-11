package org.apache.poi.sl.draw.geom;

import java.awt.geom.Path2D;

/* loaded from: classes12.dex */
public class ClosePathCommand implements ClosePathCommandIf {
    public boolean equals(Object obj) {
        return obj instanceof ClosePathCommand;
    }

    @Override // org.apache.poi.sl.draw.geom.PathCommand
    public void execute(Path2D.Double r1, Context context) {
        r1.closePath();
    }

    public int hashCode() {
        return 790622;
    }
}
