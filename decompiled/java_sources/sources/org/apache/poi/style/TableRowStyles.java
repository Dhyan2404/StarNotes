package org.apache.poi.style;

import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.XWPFTableRowPropertyFetcher;

/* loaded from: classes13.dex */
public class TableRowStyles implements Styles {
    private XWPFTableRowPropertyFetcher fetcher;
    private UnitValue height;

    public TableRowStyles(XWPFTableRowPropertyFetcher xWPFTableRowPropertyFetcher) {
        this.fetcher = xWPFTableRowPropertyFetcher;
        parse(xWPFTableRowPropertyFetcher);
    }

    private void parse(XWPFTableRowPropertyFetcher xWPFTableRowPropertyFetcher) {
        this.height = xWPFTableRowPropertyFetcher.getTableRowHeight();
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        StringBuilder sb = new StringBuilder();
        if (!WordToHtmlUtils.isNull(this.height) && this.height.isValid()) {
            sb.append("height:");
            sb.append(this.height.toStyle());
        }
        return sb.toString();
    }
}
