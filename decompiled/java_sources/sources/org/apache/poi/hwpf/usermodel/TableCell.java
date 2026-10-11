package org.apache.poi.hwpf.usermodel;

/* loaded from: classes12.dex */
public final class TableCell extends Range {
    private int _leftEdge;
    private int _levelNum;
    private TableCellDescriptor _tcd;
    private int _width;

    public TableCell(int i, int i2, TableRow tableRow, int i3, TableCellDescriptor tableCellDescriptor, int i4, int i5) {
        super(i, i2, tableRow);
        this._tcd = tableCellDescriptor;
        this._leftEdge = i4;
        this._width = i5;
        this._levelNum = i3;
    }

    public BorderCode getBrcBottom() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        return tableCellDescriptor == null ? new BorderCode() : tableCellDescriptor.getBrcBottom();
    }

    public BorderCode getBrcLeft() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        return tableCellDescriptor == null ? new BorderCode() : tableCellDescriptor.getBrcLeft();
    }

    public BorderCode getBrcRight() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        return tableCellDescriptor == null ? new BorderCode() : tableCellDescriptor.getBrcRight();
    }

    public BorderCode getBrcTop() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        return tableCellDescriptor == null ? new BorderCode() : tableCellDescriptor.getBrcTop();
    }

    public TableCellDescriptor getDescriptor() {
        return this._tcd;
    }

    public int getLeftEdge() {
        return this._leftEdge;
    }

    public byte getVertAlign() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        if (tableCellDescriptor == null) {
            return (byte) 0;
        }
        return tableCellDescriptor.getVertAlign();
    }

    public int getWidth() {
        return this._width;
    }

    public boolean isBackward() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        if (tableCellDescriptor == null) {
            return false;
        }
        return tableCellDescriptor.isFBackward();
    }

    public boolean isFirstMerged() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        if (tableCellDescriptor == null) {
            return false;
        }
        return tableCellDescriptor.isFFirstMerged();
    }

    public boolean isFirstVerticallyMerged() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        if (tableCellDescriptor == null) {
            return false;
        }
        return tableCellDescriptor.isFVertRestart();
    }

    public boolean isMerged() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        if (tableCellDescriptor == null) {
            return false;
        }
        return tableCellDescriptor.isFMerged();
    }

    public boolean isRotateFont() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        if (tableCellDescriptor == null) {
            return false;
        }
        return tableCellDescriptor.isFRotateFont();
    }

    public boolean isVertical() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        if (tableCellDescriptor == null) {
            return false;
        }
        return tableCellDescriptor.isFVertical();
    }

    public boolean isVerticallyMerged() {
        TableCellDescriptor tableCellDescriptor = this._tcd;
        if (tableCellDescriptor == null) {
            return false;
        }
        return tableCellDescriptor.isFVertMerge();
    }
}
