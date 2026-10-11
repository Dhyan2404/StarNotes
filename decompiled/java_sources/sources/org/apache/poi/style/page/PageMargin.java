package org.apache.poi.style.page;

import java.util.Objects;
import org.apache.poi.style.Styles;
import org.apache.poi.util.ExtUnits;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPageMar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;

/* loaded from: classes13.dex */
public class PageMargin implements Styles {
    float bottom;
    float footer;
    float header;
    float left;
    float right;
    float top;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PageMargin pageMargin = (PageMargin) obj;
        return Float.compare(this.top, pageMargin.top) == 0 && Float.compare(this.bottom, pageMargin.bottom) == 0 && Float.compare(this.left, pageMargin.left) == 0 && Float.compare(this.right, pageMargin.right) == 0 && Float.compare(this.header, pageMargin.header) == 0 && Float.compare(this.footer, pageMargin.footer) == 0;
    }

    public float getBottom() {
        return this.bottom;
    }

    public float getFooter() {
        return this.footer;
    }

    public float getHeader() {
        return this.header;
    }

    public float getLeft() {
        return this.left;
    }

    public String getPageContentStyle() {
        return "margin-left:" + this.left + "px;margin-right:" + this.right + "px;";
    }

    public float getRight() {
        return this.right;
    }

    public float getTop() {
        return this.top;
    }

    public int hashCode() {
        return Objects.hash(Float.valueOf(this.top), Float.valueOf(this.bottom), Float.valueOf(this.left), Float.valueOf(this.right), Float.valueOf(this.header), Float.valueOf(this.footer));
    }

    public void parse(CTSectPr cTSectPr) {
        if (!cTSectPr.isSetPgMar()) {
            this.right = 120.0f;
            this.left = 120.0f;
            this.footer = 96.0f;
            this.header = 96.0f;
            this.bottom = 96.0f;
            this.top = 96.0f;
            return;
        }
        CTPageMar pgMar = cTSectPr.getPgMar();
        this.top = ExtUnits.parseLength(pgMar.xgetTop());
        this.bottom = ExtUnits.parseLength(pgMar.xgetBottom());
        this.left = ExtUnits.parseLength(pgMar.xgetLeft());
        this.right = ExtUnits.parseLength(pgMar.xgetRight());
        this.header = ExtUnits.parseLength(pgMar.xgetHeader());
        this.footer = ExtUnits.parseLength(pgMar.xgetFooter());
    }

    public String toString() {
        return "PageMargin{top=" + this.top + ", bottom=" + this.bottom + ", left=" + this.left + ", right=" + this.right + ", header=" + this.header + ", footer=" + this.footer + '}';
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        return "margin-left:" + this.left + "px;margin-right:" + this.right + "px;margin-top:" + this.top + "px;margin-bottom:" + this.bottom + "px;";
    }
}
