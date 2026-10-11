package org.apache.poi.convert.xwpf.property;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.XWPFStyle;
import org.apache.poi.xwpf.usermodel.XWPFStyles;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblBorders;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblCellMar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGrid;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblGridCol;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;

/* loaded from: classes12.dex */
public class XWPFTablePropertyFetcher extends AbstractTblPropertyFetcher {
    private List<Double> colWidthList;
    private XWPFStyles styles;
    private XWPFTable table;

    public XWPFTablePropertyFetcher(XWPFTable xWPFTable, XWPFStyles xWPFStyles) {
        this.table = xWPFTable;
        this.styles = xWPFStyles;
        xWPFTable.readDocument();
        initBorders();
        initMargin();
    }

    private CTTblGrid getCTTblGrid() {
        return getCTTbl().getTblGrid();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public CTBorder getCTBorder(XWPFTable.Border border) {
        return this.table.getTblBorder(false, border);
    }

    public CTTbl getCTTbl() {
        return this.table.getCTTbl();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public double getCellMargin(int i) {
        return getCellMargin(getCellMarginFunction(i));
    }

    public List<Double> getColWidthList() {
        List<Double> list = this.colWidthList;
        if (list != null) {
            return list;
        }
        this.colWidthList = new ArrayList();
        Iterator<CTTblGridCol> it2 = getCTTblGrid().getGridColList().iterator();
        while (it2.hasNext()) {
            this.colWidthList.add(Double.valueOf(ExtUnits.dxaToPixel(Units.toDXA(POIXMLUnits.parseLength(it2.next().xgetW())))));
        }
        return this.colWidthList;
    }

    public XWPFTable getTable() {
        return this.table;
    }

    public CTTblPr getTblPr() {
        return getTblPr(true);
    }

    public TblPropertyFetcher getTblPropertyFromStyle() {
        XWPFStyle style;
        CTTblPrBase tblPr;
        String styleID = this.table.getStyleID();
        if (styleID == null || (style = this.styles.getStyle(styleID)) == null || (tblPr = style.getCTStyle().getTblPr()) == null) {
            return null;
        }
        return new TblPropertyFetcher(tblPr);
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcBorders() {
        CTTblPr tblPr = getTblPr();
        if (tblPr == null || !tblPr.isSetTblBorders()) {
            return false;
        }
        CTTblBorders tblBorders = tblPr.getTblBorders();
        return tblBorders.isSetLeft() || tblBorders.isSetRight() || tblBorders.isSetTop() || tblBorders.isSetBottom();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcMar() {
        CTTblPr tblPr = getTblPr();
        return tblPr != null && tblPr.isSetTblCellMar();
    }

    private double getCellMargin(Function<CTTblCellMar, CTTblWidth> function) {
        CTTblWidth apply;
        CTTblCellMar tblCellMar = getTblPr().getTblCellMar();
        if (tblCellMar == null || (apply = function.apply(tblCellMar)) == null) {
            return 0.0d;
        }
        return Units.toDXA(POIXMLUnits.parseLength(apply.xgetW()));
    }

    private CTTblPr getTblPr(boolean z) {
        if (getCTTbl().getTblPr() != null) {
            return getCTTbl().getTblPr();
        }
        if (z) {
            return getCTTbl().addNewTblPr();
        }
        return null;
    }
}
