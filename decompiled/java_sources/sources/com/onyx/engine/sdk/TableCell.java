package com.onyx.engine.sdk;

import java.util.Objects;

/* loaded from: classes8.dex */
public class TableCell extends PageRange {
    PinPosition pin;

    public TableCell() {
        this.pin = new PinPosition();
    }

    @Override // com.onyx.engine.sdk.PageRange
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TableCell tableCell = (TableCell) obj;
        return Objects.equals(this.pin, tableCell.pin) && Objects.equals(this.start, tableCell.start) && Objects.equals(this.end, tableCell.end) && Objects.equals(this.tableRows, tableCell.tableRows);
    }

    public PinPosition getPin() {
        return this.pin;
    }

    @Override // com.onyx.engine.sdk.PageRange
    public int hashCode() {
        return Objects.hash(this.pin, Integer.valueOf(super.hashCode()));
    }

    public TableCell setPin(PinPosition pinPosition) {
        this.pin = pinPosition;
        return this;
    }

    @Override // com.onyx.engine.sdk.PageRange
    public String toString() {
        return "TableCell{pin=" + this.pin + ", \nstart=" + this.start + ", \nend=" + this.end + ", \ntableRows=" + this.tableRows + '}';
    }

    public TableCell(Chapter chapter) {
        super(chapter);
        this.pin = new PinPosition(chapter);
    }

    public void copy(TableCell tableCell, boolean z) {
        this.pin.copy(tableCell.pin);
        super.copy((PageRange) tableCell, z);
    }

    public TableCell(PinPosition pinPosition) {
        this.pin = pinPosition;
    }

    public void copy(TableCell tableCell) {
        copy(tableCell, false);
    }

    @Override // com.onyx.engine.sdk.PageRange
    public TableCell copy(boolean z) {
        TableCell tableCell = new TableCell();
        tableCell.copy(this, z);
        return tableCell;
    }

    @Override // com.onyx.engine.sdk.PageRange
    public TableCell copy() {
        return copy(false);
    }
}
