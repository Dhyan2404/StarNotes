package com.onyx.engine.sdk;

import android.util.Log;
import com.alibaba.fastjson2.annotation.JSONField;
import java.util.List;
import java.util.Objects;

/* loaded from: classes8.dex */
public class TableRow {
    PinPosition pin;
    List<TableCell> tableCells;

    public TableRow() {
        this.pin = new PinPosition();
    }

    public int compare(PinPosition pinPosition) {
        List<TableCell> list = this.tableCells;
        if (list == null || list.isEmpty()) {
            Log.e(getClass().getSimpleName(), String.format("Empty table row: %s", pinPosition.getXpathString()));
            return 0;
        }
        for (TableCell tableCell : this.tableCells) {
            if (Utils.startWith(pinPosition.getXpath(), tableCell.getPin().getXpath())) {
                return tableCell.compare(pinPosition);
            }
        }
        String format = String.format("position not found in table row, position xpath: %s, row xpath: %s, tableCells xpath: %s", pinPosition.getXpathString(), this.pin.getXpathString(), Utils.getTableCellXpath(this.tableCells));
        Log.e(getClass().getSimpleName(), format);
        throw new IllegalArgumentException(format);
    }

    public void copy(TableRow tableRow, boolean z) {
        this.pin.copy(tableRow.pin);
        this.tableCells = Utils.copyTableCellList(tableRow.tableCells, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TableRow tableRow = (TableRow) obj;
        return Objects.equals(this.pin, tableRow.pin) && Objects.equals(this.tableCells, tableRow.tableCells);
    }

    @JSONField(deserialize = false, serialize = false)
    public int getNodePosition() {
        return this.pin.getNodePosition();
    }

    public PinPosition getPin() {
        return this.pin;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getPositionInt() {
        return this.pin.getPositionInt();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getPositionIntWithoutOffset() {
        return this.pin.getPositionIntWithoutOffset();
    }

    public List<TableCell> getTableCells() {
        return this.tableCells;
    }

    public int hashCode() {
        return Objects.hash(this.pin, this.tableCells);
    }

    public TableRow setPin(PinPosition pinPosition) {
        this.pin = pinPosition;
        return this;
    }

    public TableRow setTableCells(List<TableCell> list) {
        this.tableCells = list;
        return this;
    }

    public String toString() {
        return "TableRow{pin=" + this.pin + ", \ntableCells=" + this.tableCells + '}';
    }

    public TableRow(Chapter chapter) {
        this.pin = new PinPosition(chapter);
    }

    public void copy(TableRow tableRow) {
        copy(tableRow, false);
    }

    public TableRow copy(boolean z) {
        TableRow tableRow = new TableRow();
        tableRow.copy(this, z);
        return tableRow;
    }

    public TableRow copy() {
        return copy(false);
    }
}
