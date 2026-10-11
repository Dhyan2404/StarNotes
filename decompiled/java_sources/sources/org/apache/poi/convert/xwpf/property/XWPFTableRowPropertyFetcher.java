package org.apache.poi.convert.xwpf.property;

import java.util.function.Function;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblBorders;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblCellMar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPrEx;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPr;

/* loaded from: classes12.dex */
public class XWPFTableRowPropertyFetcher extends AbstractTblPropertyFetcher {
    private XWPFTablePropertyFetcher tablePropertyFetcher;
    private XWPFTableRow tableRow;

    public XWPFTableRowPropertyFetcher(XWPFTablePropertyFetcher xWPFTablePropertyFetcher, XWPFTableRow xWPFTableRow) {
        this.tablePropertyFetcher = xWPFTablePropertyFetcher;
        this.tableRow = xWPFTableRow;
        xWPFTableRow.readDocument();
        initBorders();
        initMargin();
    }

    private CTTblBorders getCTTcBorders() {
        CTTblPrEx cTTblPrEx = getCTTblPrEx();
        if (cTTblPrEx == null || !cTTblPrEx.isSetTblBorders()) {
            return null;
        }
        return cTTblPrEx.getTblBorders();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public CTBorder getCTBorder(XWPFTable.Border border) {
        return TblPropertyFetcher.getCTBorder(getCTTcBorders(), false, border);
    }

    public CTTblPrEx getCTTblPrEx() {
        if (getCtRow().isSetTblPrEx()) {
            return getCtRow().getTblPrEx();
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public double getCellMargin(int i) {
        return getCellMargin(getCellMarginFunction(i));
    }

    public CTRow getCtRow() {
        return this.tableRow.getCtRow();
    }

    public XWPFTablePropertyFetcher getTablePropertyFetcher() {
        return this.tablePropertyFetcher;
    }

    public XWPFTableRow getTableRow() {
        return this.tableRow;
    }

    public UnitValue getTableRowHeight() {
        CTTrPr trPr = getTrPr();
        if (trPr == null || trPr.sizeOfTrHeightArray() == 0) {
            return null;
        }
        return UnitValue.fromPX(ExtUnits.dxaToPixel(Units.toDXA(POIXMLUnits.parseLength(trPr.getTrHeightArray(0).xgetVal()))));
    }

    public CTTrPr getTrPr() {
        if (getCtRow().isSetTrPr()) {
            return getCtRow().getTrPr();
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcBorders() {
        CTTblPrEx cTTblPrEx = getCTTblPrEx();
        if (cTTblPrEx == null || !cTTblPrEx.isSetTblBorders()) {
            return false;
        }
        CTTblBorders tblBorders = cTTblPrEx.getTblBorders();
        return tblBorders.isSetLeft() || tblBorders.isSetRight() || tblBorders.isSetTop() || tblBorders.isSetBottom();
    }

    @Override // org.apache.poi.convert.xwpf.property.ITblPropertyFetcher
    public boolean isSetTcMar() {
        CTTblPrEx cTTblPrEx = getCTTblPrEx();
        return cTTblPrEx != null && cTTblPrEx.isSetTblCellMar();
    }

    private double getCellMargin(Function<CTTblCellMar, CTTblWidth> function) {
        CTTblCellMar tblCellMar;
        CTTblWidth apply;
        CTTblPrEx cTTblPrEx = getCTTblPrEx();
        if (cTTblPrEx == null || (tblCellMar = cTTblPrEx.getTblCellMar()) == null || (apply = function.apply(tblCellMar)) == null) {
            return 0.0d;
        }
        return Units.toDXA(POIXMLUnits.parseLength(apply.xgetW()));
    }
}
