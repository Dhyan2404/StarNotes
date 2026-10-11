package org.apache.poi.hwpf.usermodel;

import java.util.ArrayList;

/* loaded from: classes12.dex */
public final class Table extends Range {
    private ArrayList<TableRow> _rows;
    private boolean _rowsFound;
    private int _tableLevel;

    public Table(int i, int i2, Range range, int i3) {
        super(i, i2, range);
        this._tableLevel = i3;
        initRows();
    }

    private void initRows() {
        Paragraph paragraph;
        Paragraph paragraph2;
        if (this._rowsFound) {
            return;
        }
        this._rows = new ArrayList<>();
        int numParagraphs = numParagraphs();
        int i = 0;
        while (true) {
            int i2 = i;
            while (i < numParagraphs) {
                paragraph = getParagraph(i2);
                paragraph2 = getParagraph(i);
                i++;
                if (!paragraph2.isTableRowEnd() || paragraph2.getTableLevel() != this._tableLevel) {
                }
            }
            this._rowsFound = true;
            return;
            this._rows.add(new TableRow(paragraph.getStartOffset(), paragraph2.getEndOffset(), this, this._tableLevel));
        }
    }

    public TableRow getRow(int i) {
        initRows();
        return this._rows.get(i);
    }

    public int getTableLevel() {
        return this._tableLevel;
    }

    public int numRows() {
        initRows();
        return this._rows.size();
    }

    @Override // org.apache.poi.hwpf.usermodel.Range
    public void reset() {
        this._rowsFound = false;
    }

    public int type() {
        return 5;
    }
}
