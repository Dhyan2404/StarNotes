package com.onyx.engine.sdk;

import com.alibaba.fastjson2.annotation.JSONField;
import java.util.Objects;

/* loaded from: classes8.dex */
public class PageInfo {

    @JSONField(serialize = false)
    boolean canNextChapter;

    @JSONField(serialize = false)
    boolean canNextScreen;

    @JSONField(serialize = false)
    boolean canPrevChapter;

    @JSONField(serialize = false)
    boolean canPrevScreen;

    @JSONField(serialize = false)
    float letterSpacing;

    @JSONField(serialize = false)
    float lineHeight;

    @JSONField(serialize = false)
    float marginBottom;

    @JSONField(serialize = false)
    float marginLeft;

    @JSONField(serialize = false)
    float marginRight;

    @JSONField(serialize = false)
    float marginTop;

    @JSONField(serialize = false)
    int pageNumber;
    PageRange pageRange;

    @JSONField(serialize = false)
    float paragraphSpacing;

    @JSONField(serialize = false)
    int totalPage;

    public PageInfo() {
        this.pageRange = new PageRange();
    }

    public static PageInfo fromJson(String str) {
        return (PageInfo) JsonUtils.fromJson(str, PageInfo.class);
    }

    public int compare(PinPosition pinPosition) {
        return this.pageRange.compare(pinPosition);
    }

    public boolean contains(PinPosition pinPosition) {
        return this.pageRange.contains(pinPosition);
    }

    public void copy(PageInfo pageInfo) {
        this.pageRange.copy(pageInfo.pageRange);
        this.canPrevScreen = pageInfo.canPrevScreen;
        this.canNextScreen = pageInfo.canNextScreen;
        this.canPrevChapter = pageInfo.canPrevChapter;
        this.canNextChapter = pageInfo.canNextChapter;
        this.pageNumber = pageInfo.pageNumber;
        this.totalPage = pageInfo.totalPage;
        this.marginLeft = pageInfo.marginLeft;
        this.marginTop = pageInfo.marginTop;
        this.marginRight = pageInfo.marginRight;
        this.marginBottom = pageInfo.marginBottom;
        this.paragraphSpacing = pageInfo.paragraphSpacing;
        this.lineHeight = pageInfo.lineHeight;
        this.letterSpacing = pageInfo.letterSpacing;
    }

    public boolean equals(Object obj) {
        return equals(obj, false);
    }

    public boolean equalsIgnorePageNum(Object obj) {
        return equals(obj, true);
    }

    @JSONField(deserialize = false, serialize = false)
    public String getEndChapterID() {
        return this.pageRange.getEndChapterID();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getEndChapterIndex() {
        return this.pageRange.getEndChapterIndex();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getEndChapterLength() {
        return this.pageRange.getEndChapterLength();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getEndPositionInt() {
        return this.pageRange.getEndPositionInt();
    }

    public float getLetterSpacing() {
        return this.letterSpacing;
    }

    public float getLineHeight() {
        return this.lineHeight;
    }

    public float getMarginBottom() {
        return this.marginBottom;
    }

    public float getMarginLeft() {
        return this.marginLeft;
    }

    public float getMarginRight() {
        return this.marginRight;
    }

    public float getMarginTop() {
        return this.marginTop;
    }

    public int getPageNumber() {
        return this.pageNumber;
    }

    public PageRange getPageRange() {
        return this.pageRange;
    }

    public float getParagraphSpacing() {
        return this.paragraphSpacing;
    }

    @JSONField(deserialize = false, serialize = false)
    public String getStartChapterID() {
        return this.pageRange.getStartChapterID();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getStartChapterIndex() {
        return this.pageRange.getStartChapterIndex();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getStartChapterLength() {
        return this.pageRange.getStartChapterLength();
    }

    @JSONField(deserialize = false, serialize = false)
    public int getStartPositionInt() {
        return this.pageRange.getStartPositionInt();
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public int hashCode() {
        return Objects.hash(this.pageRange, Boolean.valueOf(this.canPrevScreen), Boolean.valueOf(this.canNextScreen), Boolean.valueOf(this.canPrevChapter), Boolean.valueOf(this.canNextChapter), Integer.valueOf(this.pageNumber), Integer.valueOf(this.totalPage), Float.valueOf(this.marginLeft), Float.valueOf(this.marginTop), Float.valueOf(this.marginRight), Float.valueOf(this.marginBottom), Float.valueOf(this.paragraphSpacing), Float.valueOf(this.lineHeight), Float.valueOf(this.letterSpacing));
    }

    public boolean isCanNextChapter() {
        return this.canNextChapter;
    }

    public boolean isCanNextScreen() {
        return this.canNextScreen;
    }

    public boolean isCanPrevChapter() {
        return this.canPrevChapter;
    }

    public boolean isCanPrevScreen() {
        return this.canPrevScreen;
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isChapterFirstPage() {
        return this.pageRange.isChapterFirstPage();
    }

    @JSONField(deserialize = false, serialize = false)
    public boolean isChapterLastPage() {
        return this.pageRange.isChapterLastPage();
    }

    public void setCanNextChapter(boolean z) {
        this.canNextChapter = z;
    }

    public void setCanNextScreen(boolean z) {
        this.canNextScreen = z;
    }

    public void setCanPrevChapter(boolean z) {
        this.canPrevChapter = z;
    }

    public void setCanPrevScreen(boolean z) {
        this.canPrevScreen = z;
    }

    public void setLetterSpacing(float f) {
        this.letterSpacing = f;
    }

    public void setLineHeight(float f) {
        this.lineHeight = f;
    }

    public void setMarginBottom(float f) {
        this.marginBottom = f;
    }

    public void setMarginLeft(float f) {
        this.marginLeft = f;
    }

    public void setMarginRight(float f) {
        this.marginRight = f;
    }

    public void setMarginTop(float f) {
        this.marginTop = f;
    }

    public void setPageNumber(int i) {
        this.pageNumber = i;
    }

    public PageInfo setPageRange(PageRange pageRange) {
        this.pageRange = pageRange;
        return this;
    }

    public void setParagraphSpacing(float f) {
        this.paragraphSpacing = f;
    }

    public void setTotalPage(int i) {
        this.totalPage = i;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public String toString() {
        return "PageInfo{pageRange=" + this.pageRange + ", \ncanPrevScreen=" + this.canPrevScreen + ", canNextScreen=" + this.canNextScreen + ", canPrevChapter=" + this.canPrevChapter + ", canNextChapter=" + this.canNextChapter + ", pageNumber=" + this.pageNumber + ", totalPage=" + this.totalPage + ", marginLeft=" + this.marginLeft + ", marginTop=" + this.marginTop + ", marginRight=" + this.marginRight + ", marginBottom=" + this.marginBottom + ", paragraphSpacing=" + this.paragraphSpacing + ", lineHeight=" + this.lineHeight + ", letterSpacing=" + this.letterSpacing + '}';
    }

    public boolean equals(Object obj, boolean z) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PageInfo pageInfo = (PageInfo) obj;
        return Objects.equals(this.pageRange, pageInfo.pageRange) && this.canPrevScreen == pageInfo.canPrevScreen && this.canNextScreen == pageInfo.canNextScreen && this.canPrevChapter == pageInfo.canPrevChapter && this.canNextChapter == pageInfo.canNextChapter && this.totalPage == pageInfo.totalPage && Float.compare(pageInfo.marginLeft, this.marginLeft) == 0 && Float.compare(pageInfo.marginTop, this.marginTop) == 0 && Float.compare(pageInfo.marginRight, this.marginRight) == 0 && Float.compare(pageInfo.marginBottom, this.marginBottom) == 0 && Float.compare(pageInfo.paragraphSpacing, this.paragraphSpacing) == 0 && Float.compare(pageInfo.lineHeight, this.lineHeight) == 0 && Float.compare(pageInfo.letterSpacing, this.letterSpacing) == 0 && (z || this.pageNumber == pageInfo.pageNumber);
    }

    public PageInfo(Chapter chapter) {
        this.pageRange = new PageRange(chapter);
    }

    public PageInfo(PageRange pageRange) {
        this.pageRange = pageRange;
    }

    public PageInfo copy() {
        PageInfo pageInfo = new PageInfo();
        pageInfo.copy(this);
        return pageInfo;
    }
}
