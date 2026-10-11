package com.onyx.engine.sdk;

import com.alibaba.fastjson2.annotation.JSONField;
import java.util.List;
import java.util.Objects;

/* loaded from: classes8.dex */
public class PageRange {
    PinPosition end;
    PinPosition start;
    List<TableRow> tableRows;

    public PageRange() {
        this.start = new PinPosition();
        this.end = new PinPosition();
    }

    private int compareMultipleTableRow(PinPosition pinPosition) {
        int documentPositionInt = pinPosition.getDocumentPositionInt();
        int documentPositionInt2 = this.start.getDocumentPositionInt();
        int size = this.tableRows.size();
        TableRow tableRow = this.tableRows.get(0);
        int nodePosition = tableRow.getNodePosition();
        if (documentPositionInt2 < nodePosition) {
            if (documentPositionInt < documentPositionInt2) {
                return 1;
            }
            TableRow tableRow2 = this.tableRows.get(size - 1);
            if (documentPositionInt <= tableRow2.getNodePosition()) {
                return 0;
            }
            if (!Utils.startWith(this.end.getXpath(), tableRow2.getPin().getXpath())) {
                return documentPositionInt < this.end.getDocumentPositionInt() ? 0 : -1;
            }
            if (Utils.startWith(pinPosition.getXpath(), tableRow2.getPin().getXpath())) {
                return tableRow2.compare(pinPosition);
            }
            return -1;
        }
        if (documentPositionInt < nodePosition) {
            return 1;
        }
        TableRow tableRow3 = this.tableRows.get(size - 1);
        if (!Utils.startWith(this.end.getXpath(), tableRow3.getPin().getXpath())) {
            if (documentPositionInt >= this.end.getDocumentPositionInt()) {
                return -1;
            }
            if (documentPositionInt < this.tableRows.get(1).getNodePosition() && Utils.startWith(pinPosition.getXpath(), tableRow.getPin().getXpath())) {
                return tableRow.compare(pinPosition);
            }
            return 0;
        }
        int nodePosition2 = tableRow3.getNodePosition();
        if (size == 2) {
            if (documentPositionInt < nodePosition2) {
                if (Utils.startWith(pinPosition.getXpath(), tableRow.getPin().getXpath())) {
                    return tableRow.compare(pinPosition);
                }
                return 1;
            }
            if (Utils.startWith(pinPosition.getXpath(), tableRow3.getPin().getXpath())) {
                return tableRow3.compare(pinPosition);
            }
            return -1;
        }
        if (documentPositionInt < this.tableRows.get(1).getNodePosition()) {
            if (Utils.startWith(pinPosition.getXpath(), tableRow.getPin().getXpath())) {
                return tableRow.compare(pinPosition);
            }
            return 0;
        }
        if (documentPositionInt <= nodePosition2) {
            return 0;
        }
        if (Utils.startWith(pinPosition.getXpath(), tableRow3.getPin().getXpath())) {
            return tableRow3.compare(pinPosition);
        }
        return -1;
    }

    private int compareSingleTableRow(TableRow tableRow, PinPosition pinPosition) {
        int nodePosition = tableRow.getNodePosition();
        int documentPositionInt = pinPosition.getDocumentPositionInt();
        int documentPositionInt2 = this.start.getDocumentPositionInt();
        if (documentPositionInt2 < nodePosition) {
            if (documentPositionInt < documentPositionInt2) {
                return 1;
            }
            if (documentPositionInt <= nodePosition) {
                return 0;
            }
            if (!Utils.startWith(this.end.getXpath(), tableRow.getPin().getXpath())) {
                return documentPositionInt < this.end.getDocumentPositionInt() ? 0 : -1;
            }
            if (Utils.startWith(pinPosition.getXpath(), tableRow.getPin().getXpath())) {
                return tableRow.compare(pinPosition);
            }
            return -1;
        }
        if (documentPositionInt < nodePosition) {
            return 1;
        }
        if (Utils.startWith(this.end.getXpath(), tableRow.getPin().getXpath())) {
            if (Utils.startWith(pinPosition.getXpath(), tableRow.getPin().getXpath())) {
                return tableRow.compare(pinPosition);
            }
            return -1;
        }
        if (documentPositionInt >= this.end.getDocumentPositionInt()) {
            return -1;
        }
        if (Utils.startWith(pinPosition.getXpath(), tableRow.getPin().getXpath())) {
            return tableRow.compare(pinPosition);
        }
        return 0;
    }

    private int compareWithoutTable(PinPosition pinPosition) {
        if (pinPosition.getChapterIndex() < this.start.getChapterIndex()) {
            return 1;
        }
        if (pinPosition.getChapterIndex() != this.start.getChapterIndex()) {
            return -1;
        }
        int documentPositionInt = pinPosition.getDocumentPositionInt();
        if (documentPositionInt < this.start.getDocumentPositionInt()) {
            return 1;
        }
        return documentPositionInt < this.end.getDocumentPositionInt() ? 0 : -1;
    }

    public static PageRange fromJson(String str) {
        return (PageRange) JsonUtils.fromJson(str, PageRange.class);
    }

    public int compare(PinPosition pinPosition) {
        if (!hasTable()) {
            return compareWithoutTable(pinPosition);
        }
        int chapterIndex = this.start.getChapterIndex() - pinPosition.getChapterIndex();
        return chapterIndex != 0 ? chapterIndex : this.tableRows.size() == 1 ? compareSingleTableRow(this.tableRows.get(0), pinPosition) : compareMultipleTableRow(pinPosition);
    }

    public boolean contains(PinPosition pinPosition) {
        return compare(pinPosition) == 0;
    }

    public void copy(PageRange pageRange, boolean z) {
        this.start.copy(pageRange.start);
        this.end.copy(pageRange.end);
        this.tableRows = Utils.copyTableRowList(pageRange.tableRows, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PageRange pageRange = (PageRange) obj;
        return Objects.equals(this.start, pageRange.start) && Objects.equals(this.end, pageRange.end) && Objects.equals(this.tableRows, pageRange.tableRows);
    }

    public PinPosition getEnd() {
        return this.end;
    }

    @JSONField(deserialize = false, serialize = false)
    public String getEndChapterID() {
        return this.end.chapterID;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getEndChapterIndex() {
        return this.end.chapterIndex;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getEndChapterLength() {
        return this.end.getChapterLength();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getEndPositionInt() {
        return this.end.getPositionInt();
    }

    public PinPosition getStart() {
        return this.start;
    }

    @JSONField(deserialize = false, serialize = false)
    public String getStartChapterID() {
        return this.start.chapterID;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getStartChapterIndex() {
        return this.start.chapterIndex;
    }

    @JSONField(deserialize = false, serialize = false)
    public int getStartChapterLength() {
        return this.start.getChapterLength();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getStartPositionInt() {
        return this.start.getPositionInt();
    }

    public List<TableRow> getTableRows() {
        return this.tableRows;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean hasTable() {
        List<TableRow> list = this.tableRows;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public int hashCode() {
        return Objects.hash(this.start, this.end, this.tableRows);
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isChapterFirstPage() {
        return this.start.isChapterStart();
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isChapterLastPage() {
        return this.end.isChapterEnd();
    }

    public PageRange setEnd(PinPosition pinPosition) {
        this.end = pinPosition;
        return this;
    }

    public PageRange setStart(PinPosition pinPosition) {
        this.start = pinPosition;
        return this;
    }

    public PageRange setTableRows(List<TableRow> list) {
        this.tableRows = list;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public String toString() {
        return "PageRange{start=" + this.start + ", \nend=" + this.end + ", \ntableRows=" + this.tableRows + '}';
    }

    public PageRange(Chapter chapter) {
        this.start = new PinPosition(chapter);
        this.end = new PinPosition(chapter);
    }

    public void copy(PageRange pageRange) {
        copy(pageRange, false);
    }

    public PageRange copy(boolean z) {
        PageRange pageRange = new PageRange();
        pageRange.copy(this, z);
        return pageRange;
    }

    public PageRange(PinPosition pinPosition) {
        this.start = pinPosition;
        this.end = pinPosition.copy();
    }

    public PageRange copy() {
        return copy(false);
    }

    public PageRange(PinPosition pinPosition, PinPosition pinPosition2) {
        this.start = pinPosition;
        this.end = pinPosition2;
    }
}
