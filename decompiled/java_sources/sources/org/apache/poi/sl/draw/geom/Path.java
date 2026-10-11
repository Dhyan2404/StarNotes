package org.apache.poi.sl.draw.geom;

import java.awt.geom.Path2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.apache.poi.sl.usermodel.PaintStyle;

/* loaded from: classes12.dex */
public final class Path implements PathIf {
    private final List<PathCommand> commands = new ArrayList();
    private PaintStyle.PaintModifier fill = PaintStyle.PaintModifier.NORM;
    private boolean stroke = true;
    private boolean extrusionOk = false;

    /* renamed from: w */
    private long f111489w = -1;

    /* renamed from: h */
    private long f111488h = -1;

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void addCommand(PathCommand pathCommand) {
        this.commands.add(pathCommand);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Path)) {
            return false;
        }
        Path path = (Path) obj;
        return Objects.equals(this.commands, path.commands) && Objects.equals(Long.valueOf(this.f111489w), Long.valueOf(path.f111489w)) && Objects.equals(Long.valueOf(this.f111488h), Long.valueOf(path.f111488h)) && this.fill == path.fill && Objects.equals(Boolean.valueOf(this.stroke), Boolean.valueOf(path.stroke)) && Objects.equals(Boolean.valueOf(this.extrusionOk), Boolean.valueOf(path.extrusionOk));
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public PaintStyle.PaintModifier getFill() {
        return this.fill;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public long getH() {
        return this.f111488h;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public Path2D.Double getPath(Context context) {
        Path2D.Double r0 = new Path2D.Double();
        Iterator<PathCommand> it2 = this.commands.iterator();
        while (it2.hasNext()) {
            it2.next().execute(r0, context);
        }
        return r0;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public long getW() {
        return this.f111489w;
    }

    public int hashCode() {
        return Objects.hash(this.commands, Long.valueOf(this.f111489w), Long.valueOf(this.f111488h), Integer.valueOf(this.fill.ordinal()), Boolean.valueOf(this.stroke), Boolean.valueOf(this.extrusionOk));
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public boolean isExtrusionOk() {
        return this.extrusionOk;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public boolean isFilled() {
        return this.fill != PaintStyle.PaintModifier.NONE;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public boolean isStroked() {
        return this.stroke;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setExtrusionOk(boolean z) {
        this.extrusionOk = z;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setFill(PaintStyle.PaintModifier paintModifier) {
        this.fill = paintModifier;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setH(long j) {
        this.f111488h = j;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setStroke(boolean z) {
        this.stroke = z;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setW(long j) {
        this.f111489w = j;
    }
}
