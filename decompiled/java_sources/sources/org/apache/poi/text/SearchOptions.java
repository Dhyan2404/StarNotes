package org.apache.poi.text;

import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes13.dex */
public class SearchOptions {
    private int contentLength;
    private int endLineIndex;
    private int endWordIndex;
    private boolean found;
    private List<Rectangle2D> rectangleList = new ArrayList();
    private String searchText;
    private int searchTextIndex;
    private int searchWordIndex;
    private int startLineIndex;
    private int startWordIndex;

    public SearchOptions(String str) {
        this.searchText = str;
    }

    public int getContentLength() {
        return this.contentLength;
    }

    public int getEndLineIndex() {
        return this.endLineIndex;
    }

    public int getEndWordIndex() {
        return this.endWordIndex;
    }

    public List<Rectangle2D> getRectangleList() {
        return this.rectangleList;
    }

    public char getSearchChar() {
        return this.searchText.charAt(this.searchTextIndex);
    }

    public String getSearchText() {
        return this.searchText;
    }

    public int getSearchTextIndex() {
        return this.searchTextIndex;
    }

    public int getSearchWordIndex() {
        return this.searchWordIndex;
    }

    public int getStartLineIndex() {
        return this.startLineIndex;
    }

    public int getStartWordIndex() {
        return this.startWordIndex;
    }

    public void increaseSearchIndex() {
        this.searchTextIndex++;
    }

    public boolean isFinish() {
        return this.searchTextIndex >= this.searchText.length();
    }

    public boolean isFound() {
        return this.found;
    }

    public void reset() {
        this.rectangleList.clear();
        this.searchWordIndex = 0;
        this.searchTextIndex = 0;
        this.startLineIndex = 0;
        this.endLineIndex = 0;
        this.startWordIndex = 0;
        this.endWordIndex = 0;
        this.found = false;
    }

    public void searchNext() {
        this.rectangleList.clear();
        this.searchWordIndex = this.endWordIndex + 1;
        this.searchTextIndex = 0;
        this.startLineIndex = 0;
        this.endLineIndex = 0;
        this.startWordIndex = 0;
        this.endWordIndex = 0;
        this.found = false;
    }

    public boolean searchSucess() {
        return isFinish() && isFound();
    }

    public void setContentLength(int i) {
        this.contentLength = i;
    }

    public SearchOptions setEndLineIndex(int i) {
        this.endLineIndex = i;
        return this;
    }

    public SearchOptions setEndWordIndex(int i) {
        this.endWordIndex = i;
        return this;
    }

    public SearchOptions setFound(boolean z) {
        this.found = z;
        return this;
    }

    public SearchOptions setRectangleList(List<Rectangle2D> list) {
        this.rectangleList = list;
        return this;
    }

    public SearchOptions setSearchText(String str) {
        this.searchText = str;
        return this;
    }

    public SearchOptions setSearchTextIndex(int i) {
        this.searchTextIndex = i;
        return this;
    }

    public SearchOptions setSearchWordIndex(int i) {
        this.searchWordIndex = i;
        return this;
    }

    public SearchOptions setStartLineIndex(int i) {
        this.startLineIndex = i;
        return this;
    }

    public SearchOptions setStartWordIndex(int i) {
        this.startWordIndex = i;
        return this;
    }
}
