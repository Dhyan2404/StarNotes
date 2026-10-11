package com.onyx.engine.sdk;

import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class SearchOptions {
    private boolean abort;
    private int contextLength;
    private boolean matchWholeWord;
    private String searchText;
    private int startPosition;
    private int chapterIndex = -1;
    private int endPosition = Integer.MAX_VALUE;
    private int limit = Integer.MAX_VALUE;
    private boolean caseSensitive = true;
    private SearchParaChar paraChar = SearchParaChar.NORMAL;

    public int getChapterIndex() {
        return this.chapterIndex;
    }

    public int getContextLength() {
        return this.contextLength;
    }

    public int getEndPosition() {
        return this.endPosition;
    }

    public int getLimit() {
        return this.limit;
    }

    public SearchParaChar getParaChar() {
        return this.paraChar;
    }

    public String getSearchText() {
        return this.searchText;
    }

    public int getStartPosition() {
        return this.startPosition;
    }

    public boolean isAbort() {
        return this.abort;
    }

    public boolean isCaseSensitive() {
        return this.caseSensitive;
    }

    public boolean isMatchWholeWord() {
        return this.matchWholeWord;
    }

    public void setAbort(boolean z) {
        this.abort = z;
    }

    public void setCaseSensitive(boolean z) {
        this.caseSensitive = z;
    }

    public SearchOptions setChapterIndex(int i) {
        this.chapterIndex = i;
        return this;
    }

    public void setContextLength(int i) {
        this.contextLength = i;
    }

    public void setEndPosition(int i) {
        this.endPosition = i;
    }

    public void setLimit(int i) {
        this.limit = i;
    }

    public void setMatchWholeWord(boolean z) {
        this.matchWholeWord = z;
    }

    public SearchOptions setParaChar(SearchParaChar searchParaChar) {
        this.paraChar = searchParaChar;
        return this;
    }

    public void setSearchText(String str) {
        this.searchText = str;
    }

    public void setStartPosition(int i) {
        this.startPosition = i;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public String toString() {
        return "SearchOptions{searchText='" + this.searchText + Chars.QUOTE + ", chapterIndex=" + this.chapterIndex + ", contextLength=" + this.contextLength + ", startPosition=" + this.startPosition + ", endPosition=" + this.endPosition + ", limit=" + this.limit + ", matchWholeWord=" + this.matchWholeWord + ", caseSensitive=" + this.caseSensitive + ", abort=" + this.abort + '}';
    }

    public SearchOptions setParaChar(int i) {
        this.paraChar = SearchParaChar.valueOf(i);
        return this;
    }
}
