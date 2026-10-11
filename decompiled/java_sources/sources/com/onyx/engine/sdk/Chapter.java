package com.onyx.engine.sdk;

import android.util.Log;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.engine.sdk.Chapter;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Supplier;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class Chapter {
    private int allChapterSizeInBytes;
    private String basePath;
    private boolean buy;
    private String chapterId;
    private String chapterName;
    private boolean chapterReady;
    private String charsetName;
    private int endPos;
    private String fileName;
    private boolean firstChapter;
    private String href;
    private boolean lastChapter;
    private boolean linear;
    private int nextSiblingId;
    private int playOrder;
    private int prevSiblingID;
    private int startPos;
    private int uncompressedSize;

    /* loaded from: classes8.dex */
    public static class ChapterList extends DataList<Chapter> {
        public static ChapterList fromJson(String str) {
            return (ChapterList) JsonUtils.fromJson(str, ChapterList.class, new Supplier() { // from class: com.sunia.HTREnginev2.uqd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return new Chapter.ChapterList();
                }
            });
        }
    }

    public Chapter() {
        this.prevSiblingID = Integer.MAX_VALUE;
        this.nextSiblingId = Integer.MAX_VALUE;
        this.buy = true;
        this.chapterReady = true;
    }

    public static void addChapter(List<Chapter> list, Chapter chapter) {
        list.add(chapter);
    }

    public static Chapter getChapter(List<Chapter> list, String str) {
        for (Chapter chapter : list) {
            if (Objects.equals(chapter.chapterId, str)) {
                return chapter;
            }
        }
        return null;
    }

    public static List<String> parseIdList(String str) {
        List<String> list = (List) JsonUtils.fromJson(str, new TypeReference<List<String>>() { // from class: com.onyx.engine.sdk.Chapter.2
        }.getType());
        if (list != null) {
            return list;
        }
        Log.e(Chapter.class.getSimpleName(), "parse chapter id list failed, json: " + str);
        return Collections.emptyList();
    }

    public static List<Chapter> parseList(String str) {
        List<Chapter> list = (List) JsonUtils.fromJson(str, new TypeReference<List<Chapter>>() { // from class: com.onyx.engine.sdk.Chapter.1
        }.getType());
        if (list != null) {
            return list;
        }
        Log.e(Chapter.class.getSimpleName(), "parse chapter list failed, json: " + str);
        return Collections.emptyList();
    }

    public boolean contains(int i) {
        return this.startPos <= i && this.endPos > i;
    }

    public int getAllChapterSizeInBytes() {
        return this.allChapterSizeInBytes;
    }

    public String getBasePath() {
        return this.basePath;
    }

    public String getChapterId() {
        return this.chapterId;
    }

    public String getChapterName() {
        return this.chapterName;
    }

    public String getCharsetName() {
        return this.charsetName;
    }

    public int getEndPos() {
        return this.endPos;
    }

    public String getFileName() {
        return this.fileName;
    }

    public String getHref() {
        return this.href;
    }

    public int getNextSiblingId() {
        return this.nextSiblingId;
    }

    public int getPlayOrder() {
        return this.playOrder;
    }

    public int getPrevSiblingID() {
        return this.prevSiblingID;
    }

    public int getStartPos() {
        return this.startPos;
    }

    public int getUncompressedSize() {
        return this.uncompressedSize;
    }

    public boolean isBuy() {
        return this.buy;
    }

    public boolean isChapterReady() {
        return this.chapterReady;
    }

    public boolean isFirstChapter() {
        return this.firstChapter;
    }

    public boolean isLastChapter() {
        return this.lastChapter;
    }

    public boolean isLinear() {
        return this.linear;
    }

    public void setAllChapterSizeInBytes(int i) {
        this.allChapterSizeInBytes = i;
    }

    public void setBasePath(String str) {
        this.basePath = str;
    }

    public void setBuy(boolean z) {
        this.buy = z;
    }

    public void setChapterId(String str) {
        this.chapterId = str;
    }

    public void setChapterName(String str) {
        this.chapterName = str;
    }

    public void setChapterReady(boolean z) {
        this.chapterReady = z;
    }

    public void setCharsetName(String str) {
        this.charsetName = str;
    }

    public void setEndPos(int i) {
        this.endPos = i;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setFirstChapter(boolean z) {
        this.firstChapter = z;
    }

    public void setHref(String str) {
        this.href = str;
    }

    public void setLastChapter(boolean z) {
        this.lastChapter = z;
    }

    public void setLinear(boolean z) {
        this.linear = z;
    }

    public void setNextSiblingId(int i) {
        this.nextSiblingId = i;
    }

    public void setPlayOrder(int i) {
        this.playOrder = i;
    }

    public void setPrevSiblingID(int i) {
        this.prevSiblingID = i;
    }

    public void setStartPos(int i) {
        this.startPos = i;
    }

    public void setUncompressedSize(int i) {
        this.uncompressedSize = i;
    }

    public String toString() {
        return "Chapter{chapterId='" + this.chapterId + Chars.QUOTE + ", chapterName='" + this.chapterName + Chars.QUOTE + ", charsetName='" + this.charsetName + Chars.QUOTE + ", fileName='" + this.fileName + Chars.QUOTE + ", basePath='" + this.basePath + Chars.QUOTE + ", href='" + this.href + Chars.QUOTE + ", playOrder=" + this.playOrder + ", prevSiblingID=" + this.prevSiblingID + ", nextSiblingId=" + this.nextSiblingId + ", uncompressedSize=" + this.uncompressedSize + ", allChapterSizeInBytes=" + this.allChapterSizeInBytes + ", startPos=" + this.startPos + ", endPos=" + this.endPos + ", firstChapter=" + this.firstChapter + ", lastChapter=" + this.lastChapter + ", linear=" + this.linear + ", buy=" + this.buy + ", chapterReady=" + this.chapterReady + '}';
    }

    public static void addChapter(List<Chapter> list, String str, String str2, String str3, String str4, String str5, String str6, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        list.add(new Chapter(str, str2, str3, str4, str5, str6, i, i2, i3, i4, i5, i6, i7, z, z2, z3, z4, z5));
    }

    public Chapter(String str, String str2, String str3, String str4, String str5, String str6, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.chapterId = str;
        this.chapterName = str2;
        this.charsetName = str3;
        this.fileName = str4;
        this.basePath = str5;
        this.href = str6;
        this.playOrder = i;
        this.prevSiblingID = i2;
        this.nextSiblingId = i3;
        this.uncompressedSize = i4;
        this.allChapterSizeInBytes = i5;
        this.startPos = i6;
        this.endPos = i7;
        this.firstChapter = z;
        this.lastChapter = z2;
        this.linear = z3;
        this.buy = z4;
        this.chapterReady = z5;
    }
}
