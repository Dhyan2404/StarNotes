package org.apache.poi.convert.xwpf.handler;

import java.util.LinkedHashMap;
import java.util.List;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.htmlgen.TableHandler;
import org.apache.poi.convert.xwpf.property.XWPFTablePropertyFetcher;
import org.apache.poi.style.TableStyles;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFTableHandler extends XWPFBodyElementHandler<XWPFTable> implements TableHandler<XWPFTable> {
    private XWPFTablePropertyFetcher fetcher;
    private XWPFTable table;
    private TableStyles tableStyles;

    public XWPFTableHandler(XWPFContext xWPFContext, XWPFTable xWPFTable) {
        super(xWPFContext);
        this.table = xWPFTable;
        initTableStyles();
    }

    private void initTableStyles() {
        XWPFTablePropertyFetcher xWPFTablePropertyFetcher = new XWPFTablePropertyFetcher(this.table, this.context.styles);
        this.fetcher = xWPFTablePropertyFetcher;
        this.tableStyles = new TableStyles(xWPFTablePropertyFetcher);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.table);
    }

    @Override // org.apache.poi.convert.htmlgen.BodyElementHandler
    public void handleBodyElement(Element element, int i, int i2, int i3) {
        int i4 = i3 + 1;
        this.context.checkAbortConvert();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        Element createTableBody = documentFacade.createTableBody();
        List<XWPFTableRow> rows = this.table.getRows();
        UnitValue[] borderSpace = this.tableStyles.getBorderSpace();
        int size = rows.size();
        int i5 = 0;
        for (XWPFTableRow xWPFTableRow : rows) {
            this.context.checkAbortConvert();
            XWPFTableRowHandler xWPFTableRowHandler = new XWPFTableRowHandler(this.context, this.fetcher, xWPFTableRow);
            xWPFTableRowHandler.handleTableRow(linkedHashMap, borderSpace, createTableBody, i5, size, i4);
            this.paragraphSize += xWPFTableRowHandler.getParagraphSize();
            i5++;
        }
        if (createTableBody.childNodeSize() > 0) {
            Element createTable = documentFacade.createTable();
            createTable.attr("class", documentFacade.getOrCreateCssClass("t", this.tableStyles.toStyle()));
            createTable.appendChild(createTableBody);
            element.appendChild(createTable);
        }
    }
}
