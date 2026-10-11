package org.apache.poi.convert.xwpf.handler;

import java.util.List;
import java.util.Map;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.TableRowHandler;
import org.apache.poi.convert.xwpf.property.XWPFTablePropertyFetcher;
import org.apache.poi.convert.xwpf.property.XWPFTableRowPropertyFetcher;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.style.TableRowStyles;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.XWPFTableCell;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.jsoup.nodes.Element;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPr;

/* loaded from: classes12.dex */
class XWPFTableRowHandler implements TableRowHandler<XWPFTableRow> {
    private XWPFContext context;
    private int paragraphSize;
    private XWPFTableRowPropertyFetcher rowPropertyFetcher;
    private TableRowStyles rowStyles;
    private XWPFTablePropertyFetcher tablePropertyFetcher;
    private XWPFTableRow tableRow;

    public XWPFTableRowHandler(XWPFContext xWPFContext, XWPFTablePropertyFetcher xWPFTablePropertyFetcher, XWPFTableRow xWPFTableRow) {
        this.context = xWPFContext;
        this.tablePropertyFetcher = xWPFTablePropertyFetcher;
        this.tableRow = xWPFTableRow;
        initTableRowStyles();
    }

    private void initTableRowStyles() {
        XWPFTableRowPropertyFetcher xWPFTableRowPropertyFetcher = new XWPFTableRowPropertyFetcher(this.tablePropertyFetcher, this.tableRow);
        this.rowPropertyFetcher = xWPFTableRowPropertyFetcher;
        this.rowStyles = new TableRowStyles(xWPFTableRowPropertyFetcher);
    }

    private void parseBorderSpace(UnitValue[] unitValueArr) {
        if (!WordToHtmlUtils.isNull(unitValueArr[0]) || WordToHtmlUtils.isNull(unitValueArr[1])) {
            return;
        }
        CTTrPr trPr = this.rowPropertyFetcher.getTrPr();
        if (WordToHtmlUtils.isNull(trPr)) {
            return;
        }
        List<CTTblWidth> tblCellSpacingList = trPr.getTblCellSpacingList();
        if (WordToHtmlUtils.isNull(tblCellSpacingList) || tblCellSpacingList.isEmpty()) {
            return;
        }
        if (tblCellSpacingList.size() == 1) {
            UnitValue fromPX = UnitValue.fromPX(parseWidth(tblCellSpacingList.get(0)));
            unitValueArr[1] = fromPX;
            unitValueArr[0] = fromPX;
        } else if (tblCellSpacingList.size() == 2) {
            unitValueArr[0] = UnitValue.fromPX(parseWidth(tblCellSpacingList.get(0)));
            unitValueArr[1] = UnitValue.fromPX(parseWidth(tblCellSpacingList.get(1)));
        } else if (tblCellSpacingList.size() == 4) {
            unitValueArr[0] = UnitValue.fromPX(parseWidth(tblCellSpacingList.get(0)) + parseWidth(tblCellSpacingList.get(2)));
            unitValueArr[1] = UnitValue.fromPX(parseWidth(tblCellSpacingList.get(1)) + parseWidth(tblCellSpacingList.get(3)));
        }
    }

    private double parseWidth(CTTblWidth cTTblWidth) {
        if (WordToHtmlUtils.isNull(cTTblWidth)) {
            return 0.0d;
        }
        return Units.toDXA(POIXMLUnits.parseLength(cTTblWidth.xgetW()));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.tableRow);
    }

    public int getParagraphSize() {
        return this.paragraphSize;
    }

    @Override // org.apache.poi.convert.htmlgen.TableRowHandler
    public void handleTableRow(Map<Integer, Element> map, UnitValue[] unitValueArr, Element element, int i, int i2, int i3) {
        int i4 = i3 + 1;
        Element createTableRow = this.context.getDocumentFacade().createTableRow();
        WordToHtmlUtils.setStyle(createTableRow, this.rowStyles.toStyle());
        List<XWPFTableCell> tableCells = this.tableRow.getTableCells();
        int size = tableCells.size();
        int i5 = 0;
        for (XWPFTableCell xWPFTableCell : tableCells) {
            this.context.checkAbortConvert();
            XWPFTableCellHandler xWPFTableCellHandler = new XWPFTableCellHandler(this.context, this.rowPropertyFetcher, xWPFTableCell, i5);
            xWPFTableCellHandler.handleTableCell(map, unitValueArr, createTableRow, i5, size, i4);
            this.paragraphSize = Math.max(this.paragraphSize, xWPFTableCellHandler.getParagraphSize());
            i5 += xWPFTableCellHandler.getGridSpan();
        }
        element.appendChild(createTableRow);
        parseBorderSpace(unitValueArr);
    }
}
