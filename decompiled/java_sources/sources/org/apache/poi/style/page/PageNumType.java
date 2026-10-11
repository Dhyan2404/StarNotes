package org.apache.poi.style.page;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.util.Objects;
import org.apache.poi.style.Styles;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;

/* loaded from: classes13.dex */
public class PageNumType implements Styles {
    int start = -1;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.start == ((PageNumType) obj).start;
    }

    public int getStart() {
        return this.start;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.start));
    }

    public boolean isValid() {
        return this.start >= 0;
    }

    public void parse(CTSectPr cTSectPr) {
        if (cTSectPr.isSetPgNumType()) {
            CTPageNumber pgNumType = cTSectPr.getPgNumType();
            if (pgNumType.isSetStart()) {
                this.start = pgNumType.getStart().intValue();
            }
        }
    }

    public String toString() {
        return "PageNumType{start=" + this.start + '}';
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        if (this.start < 0) {
            return "";
        }
        return "page-start:" + this.start + AndroidTreeView.f47214k;
    }
}
