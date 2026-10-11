package com.onyx.engine.sdk;

import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class TableOfContentEntry {
    private boolean canRead;
    private boolean chapterReady;
    private List<TableOfContentEntry> children;
    private int childrenSize;
    private int pageIndex;
    private PinPosition position;
    private String title;

    public TableOfContentEntry() {
        this("");
    }

    private void ensureChildren() {
        if (this.children == null) {
            this.children = new ArrayList();
        }
    }

    public void addAll(List<TableOfContentEntry> list) {
        ensureChildren();
        Utils.safelyAddAll(this.children, list);
    }

    public void addChild(TableOfContentEntry tableOfContentEntry) {
        ensureChildren();
        this.children.add(tableOfContentEntry);
    }

    public List<TableOfContentEntry> getChildren() {
        return this.children;
    }

    public int getChildrenSize() {
        return this.childrenSize;
    }

    public int getPageIndex() {
        return this.pageIndex;
    }

    public PinPosition getPosition() {
        return this.position;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isCanRead() {
        return this.canRead;
    }

    public boolean isChapterReady() {
        return this.chapterReady;
    }

    public boolean isEmpty() {
        List<TableOfContentEntry> list = this.children;
        return list == null || list.isEmpty();
    }

    public void setCanRead(boolean z) {
        this.canRead = z;
    }

    public void setChapterReady(boolean z) {
        this.chapterReady = z;
    }

    public void setChildren(List<TableOfContentEntry> list) {
        this.children = list;
    }

    public void setChildrenSize(int i) {
        this.childrenSize = i;
    }

    public void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public TableOfContentEntry setPosition(PinPosition pinPosition) {
        this.position = pinPosition;
        return this;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public int size() {
        List<TableOfContentEntry> list = this.children;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public String toString() {
        return "TableOfContentEntry{title='" + this.title + Chars.QUOTE + ", position=" + this.position + ", pageIndex=" + this.pageIndex + ", canRead=" + this.canRead + ", chapterReady=" + this.chapterReady + ", childrenSize=" + this.childrenSize + '}';
    }

    public TableOfContentEntry(String str) {
        this(str, new PinPosition());
    }

    public TableOfContentEntry(String str, PinPosition pinPosition) {
        this.pageIndex = -1;
        this.canRead = true;
        this.chapterReady = true;
        this.title = str;
        this.position = pinPosition;
    }
}
