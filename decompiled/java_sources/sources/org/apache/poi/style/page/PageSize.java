package org.apache.poi.style.page;

import java.util.Objects;
import org.apache.poi.style.Styles;
import org.apache.poi.util.ExtUnits;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageSz;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;

/* loaded from: classes13.dex */
public class PageSize implements Styles {
    float height;
    float width;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PageSize pageSize = (PageSize) obj;
        return Float.compare(this.width, pageSize.width) == 0 && Float.compare(this.height, pageSize.height) == 0;
    }

    public float getHeight() {
        return this.height;
    }

    public float getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Objects.hash(Float.valueOf(this.width), Float.valueOf(this.height));
    }

    public boolean isEmpty() {
        return this.width == 0.0f || this.height == 0.0f;
    }

    public void parse(CTSectPr cTSectPr) {
        if (cTSectPr.isSetPgSz()) {
            CTPageSz pgSz = cTSectPr.getPgSz();
            this.width = ExtUnits.parseLength(pgSz.xgetW());
            this.height = ExtUnits.parseLength(pgSz.xgetH());
        }
    }

    public String toString() {
        return "PageSize{width=" + this.width + ", height=" + this.height + '}';
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        return "pageWidth:" + this.width + "px;pageHeight:" + this.height + "px;width:" + this.width + "px;";
    }
}
