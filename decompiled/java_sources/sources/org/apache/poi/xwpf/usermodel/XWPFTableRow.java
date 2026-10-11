package org.apache.poi.xwpf.usermodel;

import java.io.Closeable;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtCell;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHeightRule;

/* loaded from: classes13.dex */
public class XWPFTableRow implements Closeable {
    private CTRow ctRow;
    private final XWPFTable table;
    private List<XWPFTableCell> tableCells;

    public XWPFTableRow(CTRow cTRow, XWPFTable xWPFTable) {
        this.table = xWPFTable;
        this.ctRow = cTRow;
        readDocument();
    }

    private void ensureBlockLevelElement(XWPFTableCell xWPFTableCell) {
        if (xWPFTableCell.getParagraphs().isEmpty()) {
            xWPFTableCell.addParagraph();
        }
    }

    private boolean getRepeat() {
        if (!this.ctRow.isSetTrPr()) {
            return false;
        }
        CTTrPr trPr = getTrPr();
        if (trPr.sizeOfTblHeaderArray() <= 0) {
            return false;
        }
        CTOnOff tblHeaderArray = trPr.getTblHeaderArray(0);
        return !tblHeaderArray.isSetVal() || POIXMLUnits.parseOnOff(tblHeaderArray.xgetVal());
    }

    private CTTrPr getTrPr() {
        boolean isSetTrPr = this.ctRow.isSetTrPr();
        CTRow cTRow = this.ctRow;
        return isSetTrPr ? cTRow.getTrPr() : cTRow.addNewTrPr();
    }

    public XWPFTableCell addNewTableCell() {
        XWPFTableCell xWPFTableCell = new XWPFTableCell(this.ctRow.addNewTc(), this, this.table.getBody());
        ensureBlockLevelElement(xWPFTableCell);
        this.tableCells.add(xWPFTableCell);
        return xWPFTableCell;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.ctRow);
        this.ctRow = null;
        List<XWPFTableCell> list = this.tableCells;
        if (list != null) {
            Iterator<XWPFTableCell> it2 = list.iterator();
            while (it2.hasNext()) {
                XmlBeanUtils.close(it2.next());
            }
            this.tableCells.clear();
        }
    }

    public XWPFTableCell createCell() {
        XWPFTableCell xWPFTableCell = new XWPFTableCell(this.ctRow.addNewTc(), this, this.table.getBody());
        ensureBlockLevelElement(xWPFTableCell);
        this.tableCells.add(xWPFTableCell);
        return xWPFTableCell;
    }

    public XWPFTableCell getCell(int i) {
        if (i < 0 || i >= this.ctRow.sizeOfTcArray()) {
            return null;
        }
        return getTableCells().get(i);
    }

    @Internal
    public CTRow getCtRow() {
        return this.ctRow;
    }

    public int getHeight() {
        CTTrPr trPr = getTrPr();
        if (trPr.sizeOfTrHeightArray() == 0) {
            return 0;
        }
        return (int) Units.toDXA(POIXMLUnits.parseLength(trPr.getTrHeightArray(0).xgetVal()));
    }

    public TableRowHeightRule getHeightRule() {
        STHeightRule.Enum hRule;
        CTTrPr trPr = getTrPr();
        if (trPr.sizeOfTrHeightArray() != 0 && (hRule = trPr.getTrHeightArray(0).getHRule()) != null) {
            return TableRowHeightRule.valueOf(hRule.intValue());
        }
        return TableRowHeightRule.AUTO;
    }

    public XWPFTable getTable() {
        return this.table;
    }

    public XWPFTableCell getTableCell(CTTc cTTc) {
        for (XWPFTableCell xWPFTableCell : this.tableCells) {
            if (xWPFTableCell.getCTTc() == cTTc) {
                return xWPFTableCell;
            }
        }
        return null;
    }

    public List<XWPFTableCell> getTableCells() {
        if (this.tableCells == null) {
            ArrayList arrayList = new ArrayList();
            for (CTTc cTTc : this.ctRow.getTcArray()) {
                arrayList.add(new XWPFTableCell(cTTc, this, this.table.getBody()));
            }
            this.tableCells = arrayList;
        }
        return this.tableCells;
    }

    public List<ICell> getTableICells() {
        ArrayList arrayList = new ArrayList();
        XmlCursor newCursor = this.ctRow.newCursor();
        try {
            newCursor.selectPath("./*");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTTc) {
                    arrayList.add(new XWPFTableCell((CTTc) object, this, this.table.getBody()));
                } else if (object instanceof CTSdtCell) {
                    arrayList.add(new XWPFSDTCell((CTSdtCell) object, this, this.table.getBody()));
                }
            }
            newCursor.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public boolean isCantSplitRow() {
        if (!this.ctRow.isSetTrPr()) {
            return false;
        }
        CTTrPr trPr = getTrPr();
        if (trPr.sizeOfCantSplitArray() <= 0) {
            return false;
        }
        CTOnOff cantSplitArray = trPr.getCantSplitArray(0);
        return !cantSplitArray.isSetVal() || POIXMLUnits.parseOnOff(cantSplitArray.xgetVal());
    }

    public boolean isRepeatHeader() {
        boolean z = false;
        for (XWPFTableRow xWPFTableRow : this.table.getRows()) {
            boolean repeat = xWPFTableRow.getRepeat();
            if (xWPFTableRow == this || !repeat) {
                return repeat;
            }
            z = repeat;
        }
        return z;
    }

    public void readDocument() {
        if (XmlBeanUtils.parseDocument()) {
            getTableCells();
        }
    }

    public void removeCell(int i) {
        if (i < 0 || i >= this.ctRow.sizeOfTcArray()) {
            return;
        }
        this.tableCells.remove(i);
        this.ctRow.removeTc(i);
    }

    public void setCantSplitRow(boolean z) {
        CTTrPr trPr = getTrPr();
        (trPr.sizeOfCantSplitArray() > 0 ? trPr.getCantSplitArray(0) : trPr.addNewCantSplit()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    public void setHeight(int i) {
        CTTrPr trPr = getTrPr();
        (trPr.sizeOfTrHeightArray() == 0 ? trPr.addNewTrHeight() : trPr.getTrHeightArray(0)).setVal(new BigInteger(Integer.toString(i)));
    }

    public void setHeightRule(TableRowHeightRule tableRowHeightRule) {
        CTTrPr trPr = getTrPr();
        (trPr.sizeOfTrHeightArray() == 0 ? trPr.addNewTrHeight() : trPr.getTrHeightArray(0)).setHRule(STHeightRule.Enum.forInt(tableRowHeightRule.getValue()));
    }

    public void setRepeatHeader(boolean z) {
        CTTrPr trPr = getTrPr();
        (trPr.sizeOfTblHeaderArray() > 0 ? trPr.getTblHeaderArray(0) : trPr.addNewTblHeader()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }
}
