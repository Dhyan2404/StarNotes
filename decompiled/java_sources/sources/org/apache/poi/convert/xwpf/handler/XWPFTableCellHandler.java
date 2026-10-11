package org.apache.poi.convert.xwpf.handler;

import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.TableCellHandler;
import org.apache.poi.convert.xwpf.property.TableCellPropertyListFetcher;
import org.apache.poi.convert.xwpf.property.TblPropertyFetcher;
import org.apache.poi.convert.xwpf.property.XWPFTableCellPropertyFetcher;
import org.apache.poi.convert.xwpf.property.XWPFTablePropertyFetcher;
import org.apache.poi.convert.xwpf.property.XWPFTableRowPropertyFetcher;
import org.apache.poi.style.TableCellStyles;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.IBodyElement;
import org.apache.poi.xwpf.usermodel.XWPFTableCell;
import org.jsoup.nodes.Element;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMerge;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public class XWPFTableCellHandler implements TableCellHandler<XWPFTableCell> {
    private int cellIndex;
    private XWPFTableCellPropertyFetcher cellPropertyFetcher;
    private TableCellStyles cellStyles;
    private XWPFContext context;
    private int gridSpan;
    private TableCellPropertyListFetcher listFetcher;
    private int paragraphSize;
    private XWPFTableRowPropertyFetcher rowPropertyFetcher;
    private XWPFTableCell tableCell;

    public XWPFTableCellHandler(XWPFContext xWPFContext, XWPFTableRowPropertyFetcher xWPFTableRowPropertyFetcher, XWPFTableCell xWPFTableCell, int i) {
        this.context = xWPFContext;
        this.rowPropertyFetcher = xWPFTableRowPropertyFetcher;
        this.tableCell = xWPFTableCell;
        this.cellIndex = i;
        initTableCellStyles();
        this.gridSpan = this.cellPropertyFetcher.getGridSpan();
    }

    private int getSpace(CTBorder cTBorder) {
        if (WordToHtmlUtils.isNull(cTBorder)) {
            return 0;
        }
        BigInteger space = cTBorder.getSpace();
        if (WordToHtmlUtils.isNull(space)) {
            return 0;
        }
        return space.intValue();
    }

    private void initTableCellStyles() {
        XWPFTableCellPropertyFetcher xWPFTableCellPropertyFetcher = new XWPFTableCellPropertyFetcher(this.rowPropertyFetcher, this.tableCell);
        this.cellPropertyFetcher = xWPFTableCellPropertyFetcher;
        TableCellPropertyListFetcher tableCellPropertyListFetcher = new TableCellPropertyListFetcher(xWPFTableCellPropertyFetcher);
        this.listFetcher = tableCellPropertyListFetcher;
        tableCellPropertyListFetcher.addFetcher(this.rowPropertyFetcher);
        XWPFTablePropertyFetcher tablePropertyFetcher = this.rowPropertyFetcher.getTablePropertyFetcher();
        this.listFetcher.addFetcher(tablePropertyFetcher);
        TblPropertyFetcher tblPropertyFromStyle = tablePropertyFetcher.getTblPropertyFromStyle();
        if (!WordToHtmlUtils.isNull(tblPropertyFromStyle)) {
            this.listFetcher.addFetcher(tblPropertyFromStyle);
        }
        this.cellStyles = new TableCellStyles(this.listFetcher, this.cellIndex);
    }

    private void parseBorderSpace(UnitValue[] unitValueArr) {
        if (WordToHtmlUtils.isNull(unitValueArr[0]) && WordToHtmlUtils.isNull(unitValueArr[1])) {
            CTBorder[] cTBorders = this.listFetcher.getCTBorders();
            if (WordToHtmlUtils.isNull(cTBorders)) {
                return;
            }
            unitValueArr[0] = UnitValue.fromPX(Units.masterToPoints(getSpace(cTBorders[1]) + getSpace(cTBorders[3])));
            unitValueArr[1] = UnitValue.fromPX(Units.masterToPoints(getSpace(cTBorders[0]) + getSpace(cTBorders[2])));
        }
    }

    private boolean processTableRowSpan(Map<Integer, Element> map, Element element) {
        STMerge.Enum vMerge = this.cellPropertyFetcher.getVMerge();
        if (vMerge == null) {
            return false;
        }
        if (vMerge == STMerge.RESTART) {
            map.put(Integer.valueOf(this.cellIndex), element);
            element.attr("rowspan", "1");
            return false;
        }
        if (vMerge != STMerge.CONTINUE) {
            map.remove(Integer.valueOf(this.cellIndex));
            return false;
        }
        Element element2 = map.get(Integer.valueOf(this.cellIndex));
        if (element2 != null && element2.hasAttr("rowspan")) {
            element2.attr("rowspan", String.valueOf(Integer.parseInt(element2.attr("rowspan")) + 1));
        }
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.tableCell);
    }

    public int getGridSpan() {
        return this.gridSpan;
    }

    public int getParagraphSize() {
        return this.paragraphSize;
    }

    @Override // org.apache.poi.convert.htmlgen.TableCellHandler
    public void handleTableCell(Map<Integer, Element> map, UnitValue[] unitValueArr, Element element, int i, int i2, int i3) {
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        Element createTableCell = documentFacade.createTableCell();
        List<IBodyElement> bodyElements = this.tableCell.getBodyElements();
        parseBorderSpace(unitValueArr);
        int size = bodyElements.size();
        Iterator<IBodyElement> it2 = bodyElements.iterator();
        int i4 = 0;
        while (it2.hasNext()) {
            this.paragraphSize += XWPFBodyElementHandler.handleBodyElement(this.context, it2.next(), createTableCell, i4, size, i3);
            i4++;
        }
        if (createTableCell.childNodeSize() <= 0) {
            createTableCell.appendChild(documentFacade.createParagraph());
        }
        if (!processTableRowSpan(map, createTableCell)) {
            documentFacade.addStyleClass(createTableCell, "td", this.cellStyles.toStyle());
            WordToHtmlUtils.setStyle(createTableCell, this.cellStyles.getWidthStyle());
            element.appendChild(createTableCell);
        }
        int i5 = this.gridSpan;
        if (i5 > 1) {
            createTableCell.attr("colspan", String.valueOf(i5));
        }
    }
}
