package com.onyx.engine.sdk;

import java.util.Collections;
import java.util.List;

/* loaded from: classes8.dex */
public class ScreenData {
    private List<ImageInfo> imageList;
    private List<LinkInfo> linkList;
    private PageRange pageRange;
    private List<TextRun> textRunList;

    public static ScreenData fromJson(String str) {
        ScreenData screenData = (ScreenData) JsonUtils.fromJson(str, ScreenData.class);
        if (screenData == null) {
            screenData = new ScreenData();
        }
        PageRange pageRange = screenData.pageRange;
        if (pageRange == null) {
            return screenData;
        }
        TextRun.setTextRunPosition(screenData.textRunList, pageRange.start);
        ImageInfo.setImagePosition(screenData.imageList, screenData.pageRange.start);
        LinkInfo.setLinkPosition(screenData.linkList, screenData.pageRange.start);
        return screenData;
    }

    public List<ImageInfo> getImageList() {
        if (this.imageList == null) {
            this.imageList = Collections.emptyList();
        }
        return this.imageList;
    }

    public List<LinkInfo> getLinkList() {
        if (this.linkList == null) {
            this.linkList = Collections.emptyList();
        }
        return this.linkList;
    }

    public PageRange getPageRange() {
        return this.pageRange;
    }

    public List<TextRun> getTextRunList() {
        if (this.textRunList == null) {
            this.textRunList = Collections.emptyList();
        }
        return this.textRunList;
    }

    public ScreenData setImageList(List<ImageInfo> list) {
        this.imageList = list;
        return this;
    }

    public ScreenData setLinkList(List<LinkInfo> list) {
        this.linkList = list;
        return this;
    }

    public ScreenData setPageRange(PageRange pageRange) {
        this.pageRange = pageRange;
        return this;
    }

    public ScreenData setTextRunList(List<TextRun> list) {
        this.textRunList = list;
        return this;
    }

    public String toString() {
        return "ScreenData{pageRange=" + this.pageRange + ", textRunList=" + this.textRunList + ", imageList=" + this.imageList + ", linkList=" + this.linkList + '}';
    }
}
