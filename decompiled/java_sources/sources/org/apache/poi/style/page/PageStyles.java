package org.apache.poi.style.page;

import java.util.Objects;
import org.apache.poi.style.Styles;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;

/* loaded from: classes13.dex */
public class PageStyles implements Styles {
    private int bodyElementSize;
    private int pageIndex;
    private PageSize pageSize = new PageSize();
    private PageMargin pageMargin = new PageMargin();
    private PageColumns pageColumns = new PageColumns();
    private PageNumType pageNumType = new PageNumType();

    public static PageStyles parse(CTSectPr cTSectPr) {
        PageStyles pageStyles = new PageStyles();
        pageStyles.pageSize.parse(cTSectPr);
        if (pageStyles.pageSize.isEmpty()) {
            PageSize pageSize = pageStyles.pageSize;
            pageSize.width = 816.0f;
            pageSize.height = 1056.0f;
            PageMargin pageMargin = pageStyles.pageMargin;
            pageMargin.left = 120.0f;
            pageMargin.right = 120.0f;
            pageMargin.top = 96.0f;
            pageMargin.bottom = 96.0f;
        }
        pageStyles.pageMargin.parse(cTSectPr);
        pageStyles.pageColumns.parse(cTSectPr, pageStyles.pageSize, pageStyles.pageMargin);
        pageStyles.pageNumType.parse(cTSectPr);
        return pageStyles;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PageStyles)) {
            return false;
        }
        PageStyles pageStyles = (PageStyles) obj;
        return Objects.equals(this.pageSize, pageStyles.pageSize) && Objects.equals(this.pageMargin, pageStyles.pageMargin) && Objects.equals(this.pageColumns, pageStyles.pageColumns);
    }

    public int getBodyElementSize() {
        return this.bodyElementSize;
    }

    public PageColumns getPageColumns() {
        return this.pageColumns;
    }

    public int getPageIndex() {
        return this.pageIndex;
    }

    public PageMargin getPageMargin() {
        return this.pageMargin;
    }

    public PageNumType getPageNumType() {
        return this.pageNumType;
    }

    public PageSize getPageSize() {
        return this.pageSize;
    }

    public boolean isEmpty() {
        return this.pageSize.isEmpty();
    }

    public void setBodyElementSize(int i) {
        this.bodyElementSize = i;
    }

    public void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public String toString() {
        return "PageStyles{" + this.pageSize + ", " + this.pageMargin + ", " + this.pageColumns + ", " + this.pageNumType + '}';
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        return null;
    }
}
