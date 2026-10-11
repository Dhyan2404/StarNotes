package com.onyx.engine.sdk;

import java.util.Objects;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class SearchResult {
    private int endNodePosition;
    private int endOffset;
    private PinPosition endPosition;
    private String endXPath;
    private String leftText;
    private String rightText;
    private int startNodePosition;
    private int startOffset;
    private PinPosition startPosition;
    private String startXPath;
    private String text;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SearchResult searchResult = (SearchResult) obj;
        return this.startPosition == searchResult.startPosition && this.endPosition == searchResult.endPosition && this.startNodePosition == searchResult.startNodePosition && this.endNodePosition == searchResult.endNodePosition && this.startOffset == searchResult.startOffset && this.endOffset == searchResult.endOffset && Objects.equals(this.text, searchResult.text) && Objects.equals(this.leftText, searchResult.leftText) && Objects.equals(this.rightText, searchResult.rightText) && Objects.equals(this.startXPath, searchResult.startXPath) && Objects.equals(this.endXPath, searchResult.endXPath);
    }

    public int getEndNodePosition() {
        return this.endNodePosition;
    }

    public int getEndOffset() {
        return this.endOffset;
    }

    public PinPosition getEndPosition() {
        return this.endPosition;
    }

    public String getEndXPath() {
        return this.endXPath;
    }

    public String getLeftText() {
        return this.leftText;
    }

    public String getRightText() {
        return this.rightText;
    }

    public int getStartNodePosition() {
        return this.startNodePosition;
    }

    public int getStartOffset() {
        return this.startOffset;
    }

    public PinPosition getStartPosition() {
        return this.startPosition;
    }

    public String getStartXPath() {
        return this.startXPath;
    }

    public String getText() {
        return this.text;
    }

    public int hashCode() {
        return Objects.hash(this.text, this.leftText, this.rightText, this.startXPath, this.endXPath, this.startPosition, this.endPosition, Integer.valueOf(this.startOffset), Integer.valueOf(this.endOffset));
    }

    public SearchResult setEndNodePosition(int i) {
        this.endNodePosition = i;
        return this;
    }

    public void setEndOffset(int i) {
        this.endOffset = i;
    }

    public SearchResult setEndPosition(PinPosition pinPosition) {
        this.endPosition = pinPosition;
        return this;
    }

    public void setEndXPath(String str) {
        this.endXPath = str;
    }

    public void setLeftText(String str) {
        this.leftText = str;
    }

    public void setRightText(String str) {
        this.rightText = str;
    }

    public SearchResult setStartNodePosition(int i) {
        this.startNodePosition = i;
        return this;
    }

    public void setStartOffset(int i) {
        this.startOffset = i;
    }

    public SearchResult setStartPosition(PinPosition pinPosition) {
        this.startPosition = pinPosition;
        return this;
    }

    public void setStartXPath(String str) {
        this.startXPath = str;
    }

    public void setText(String str) {
        this.text = str;
    }

    public String toString() {
        return "SearchResult{text='" + this.text + Chars.QUOTE + ", leftText='" + this.leftText + Chars.QUOTE + ", rightText='" + this.rightText + Chars.QUOTE + ", startXPath='" + this.startXPath + Chars.QUOTE + ", endXPath='" + this.endXPath + Chars.QUOTE + ", startPosition=" + this.startPosition + ", endPosition=" + this.endPosition + ", startNodePosition=" + this.startNodePosition + ", endNodePosition=" + this.endNodePosition + ", startOffset=" + this.startOffset + ", endOffset=" + this.endOffset + '}';
    }
}
