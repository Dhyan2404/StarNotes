package org.jsoup.nodes;

import java.util.Arrays;
import org.jsoup.internal.StringUtil;

/* loaded from: classes13.dex */
public class SearchResult {
    public String endXPath;
    public String leftText;
    public String rightText;
    public String startXPath;
    public String text;
    public int startPosition = Integer.MAX_VALUE;
    public int startOffset = Integer.MAX_VALUE;
    public int endPosition = Integer.MAX_VALUE;
    public int endOffset = Integer.MAX_VALUE;

    public SearchResult(String str) {
        this.text = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SearchResult searchResult = (SearchResult) obj;
        return this.startPosition == searchResult.startPosition && this.startOffset == searchResult.startOffset && this.endPosition == searchResult.endPosition && this.endOffset == searchResult.endOffset && StringUtil.equals(this.text, searchResult.text) && StringUtil.equals(this.leftText, searchResult.leftText) && StringUtil.equals(this.rightText, searchResult.rightText) && StringUtil.equals(this.startXPath, searchResult.startXPath) && StringUtil.equals(this.endXPath, searchResult.endXPath);
    }

    public int getEndOffset() {
        return this.endOffset;
    }

    public int getEndPosition() {
        return this.endPosition;
    }

    public String getEndXPath() {
        return this.endXPath;
    }

    public int getStartOffset() {
        return this.startOffset;
    }

    public int getStartPosition() {
        return this.startPosition;
    }

    public String getStartXPath() {
        return this.startXPath;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.text, this.leftText, this.rightText, this.startXPath, Integer.valueOf(this.startPosition), Integer.valueOf(this.startOffset), this.endXPath, Integer.valueOf(this.endPosition), Integer.valueOf(this.endOffset)});
    }

    public boolean isInvalid() {
        return this.startPosition == Integer.MAX_VALUE || this.endPosition == Integer.MAX_VALUE;
    }

    public void setEndOffset(int i) {
        this.endOffset = i;
    }

    public void setEndPosition(int i) {
        this.endPosition = i;
    }

    public void setEndXPath(String str) {
        this.endXPath = str;
    }

    public void setStartOffset(int i) {
        this.startOffset = i;
    }

    public void setStartPosition(int i) {
        this.startPosition = i;
    }

    public void setStartXPath(String str) {
        this.startXPath = str;
    }

    public String toString() {
        return this.leftText + this.text + this.rightText;
    }
}
