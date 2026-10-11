package org.apache.poi.sl.draw.geom;

import java.util.Objects;

/* loaded from: classes12.dex */
public class Guide implements GuideIf {
    private String fmla;
    private String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Guide guide = (Guide) obj;
        return Objects.equals(this.name, guide.name) && Objects.equals(this.fmla, guide.fmla);
    }

    @Override // org.apache.poi.sl.draw.geom.GuideIf
    public String getFmla() {
        return this.fmla;
    }

    @Override // org.apache.poi.sl.draw.geom.GuideIf
    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Objects.hash(this.name, this.fmla);
    }

    @Override // org.apache.poi.sl.draw.geom.GuideIf
    public void setFmla(String str) {
        this.fmla = str;
    }

    @Override // org.apache.poi.sl.draw.geom.GuideIf
    public void setName(String str) {
        this.name = str;
    }
}
