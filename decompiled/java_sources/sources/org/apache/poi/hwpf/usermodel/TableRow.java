package org.apache.poi.hwpf.usermodel;

import java.util.ArrayList;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.hwpf.sprm.TableSprmUncompressor;

/* loaded from: classes12.dex */
public final class TableRow extends Range {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TableRow.class);
    private static final short SPRM_DXAGAPHALF = -27134;
    private static final short SPRM_DYAROWHEIGHT = -27641;
    private static final short SPRM_FCANTSPLIT = 13315;
    private static final short SPRM_FTABLEHEADER = 13316;
    private static final short SPRM_TJC = 21504;
    private static final char TABLE_CELL_MARK = 7;
    private TableCell[] _cells;
    private boolean _cellsFound;
    int _levelNum;
    private SprmBuffer _papx;
    private TableProperties _tprops;

    public TableRow(int i, int i2, Table table, int i3) {
        super(i, i2, table);
        SprmBuffer sprmBuffer = getParagraph(numParagraphs() - 1)._papx;
        this._papx = sprmBuffer;
        this._tprops = TableSprmUncompressor.uncompressTAP(sprmBuffer);
        this._levelNum = i3;
        initCells();
    }

    private void initCells() {
        if (this._cellsFound) {
            return;
        }
        short itcMac = this._tprops.getItcMac();
        ArrayList arrayList = new ArrayList(itcMac + 1);
        int i = 0;
        for (int i2 = 0; i2 < numParagraphs(); i2++) {
            Paragraph paragraph = getParagraph(i2);
            String text = paragraph.text();
            if (((text.length() > 0 && text.charAt(text.length() - 1) == 7) || paragraph.isEmbeddedCellMark()) && paragraph.getTableLevel() == this._levelNum) {
                TableCellDescriptor tableCellDescriptor = (this._tprops.getRgtc() == null || this._tprops.getRgtc().length <= arrayList.size()) ? new TableCellDescriptor() : this._tprops.getRgtc()[arrayList.size()];
                short s = (this._tprops.getRgdxaCenter() == null || this._tprops.getRgdxaCenter().length <= arrayList.size()) ? (short) 0 : this._tprops.getRgdxaCenter()[arrayList.size()];
                arrayList.add(new TableCell(getParagraph(i).getStartOffset(), getParagraph(i2).getEndOffset(), this, this._levelNum, tableCellDescriptor, s, ((this._tprops.getRgdxaCenter() == null || this._tprops.getRgdxaCenter().length <= arrayList.size() + 1) ? (short) 0 : this._tprops.getRgdxaCenter()[arrayList.size() + 1]) - s));
                i = i2 + 1;
            }
        }
        if (i < numParagraphs() - 1) {
            TableCellDescriptor tableCellDescriptor2 = (this._tprops.getRgtc() == null || this._tprops.getRgtc().length <= arrayList.size()) ? new TableCellDescriptor() : this._tprops.getRgtc()[arrayList.size()];
            short s2 = (this._tprops.getRgdxaCenter() == null || this._tprops.getRgdxaCenter().length <= arrayList.size()) ? (short) 0 : this._tprops.getRgdxaCenter()[arrayList.size()];
            arrayList.add(new TableCell(i, numParagraphs() - 1, this, this._levelNum, tableCellDescriptor2, s2, ((this._tprops.getRgdxaCenter() == null || this._tprops.getRgdxaCenter().length <= arrayList.size() + 1) ? (short) 0 : this._tprops.getRgdxaCenter()[arrayList.size() + 1]) - s2));
        }
        if (!arrayList.isEmpty() && arrayList.size() != itcMac) {
            TableCell tableCell = (TableCell) arrayList.get(arrayList.size() - 1);
            if (tableCell.numParagraphs() == 1 && tableCell.getParagraph(0).isTableRowEnd()) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        if (arrayList.size() != itcMac) {
            LOG.atWarn().log("Number of found table cells ({}) for table row [{}c; {}c] not equals to stored property value {}", Integer.valueOf(arrayList.size()), Unbox.box(getStartOffset()), Unbox.box(getEndOffset()), Unbox.box(itcMac));
            this._tprops.setItcMac((short) arrayList.size());
        }
        this._cells = (TableCell[]) arrayList.toArray(new TableCell[0]);
        this._cellsFound = true;
    }

    public boolean cantSplit() {
        return this._tprops.getFCantSplit();
    }

    public BorderCode getBarBorder() {
        throw new UnsupportedOperationException("not applicable for TableRow");
    }

    public BorderCode getBottomBorder() {
        return this._tprops.getBrcBottom();
    }

    public TableCell getCell(int i) {
        initCells();
        return this._cells[i];
    }

    public int getGapHalf() {
        return this._tprops.getDxaGapHalf();
    }

    public BorderCode getHorizontalBorder() {
        return this._tprops.getBrcHorizontal();
    }

    public BorderCode getLeftBorder() {
        return this._tprops.getBrcLeft();
    }

    public BorderCode getRightBorder() {
        return this._tprops.getBrcRight();
    }

    public int getRowHeight() {
        return this._tprops.getDyaRowHeight();
    }

    public int getRowJustification() {
        return this._tprops.getJc();
    }

    public BorderCode getTopBorder() {
        return this._tprops.getBrcTop();
    }

    public BorderCode getVerticalBorder() {
        return this._tprops.getBrcVertical();
    }

    public boolean isTableHeader() {
        return this._tprops.getFTableHeader();
    }

    public int numCells() {
        initCells();
        return this._cells.length;
    }

    @Override // org.apache.poi.hwpf.usermodel.Range
    public void reset() {
        this._cellsFound = false;
    }

    public void setCantSplit(boolean z) {
        this._tprops.setFCantSplit(z);
        this._papx.updateSprm(SPRM_FCANTSPLIT, z ? (byte) 1 : (byte) 0);
    }

    public void setGapHalf(int i) {
        this._tprops.setDxaGapHalf(i);
        this._papx.updateSprm(SPRM_DXAGAPHALF, (short) i);
    }

    public void setRowHeight(int i) {
        this._tprops.setDyaRowHeight(i);
        this._papx.updateSprm(SPRM_DYAROWHEIGHT, (short) i);
    }

    public void setRowJustification(int i) {
        short s = (short) i;
        this._tprops.setJc(s);
        this._papx.updateSprm(SPRM_TJC, s);
    }

    public void setTableHeader(boolean z) {
        this._tprops.setFTableHeader(z);
        this._papx.updateSprm(SPRM_FTABLEHEADER, z ? (byte) 1 : (byte) 0);
    }
}
