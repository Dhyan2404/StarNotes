package com.onyx.engine.sdk;

import java.util.HashMap;

/* loaded from: classes8.dex */
public class ChapterScanOption {
    private HashMap<String, SectionRecognizerConfig> sectionRecognizerConfigs = new HashMap<>();
    private String lang = Lang.EN.value;
    private int chapterMaxSize = 102400;
    private int chapterMinSize = 1024;
    private int chapterTitleMaxLength = 36;

    public ChapterScanOption addSectionRecognizerConfig(String str, SectionRecognizerConfig sectionRecognizerConfig) {
        getSectionRecognizerConfigs().put(str, sectionRecognizerConfig);
        return this;
    }

    public int getChapterMaxSize() {
        return this.chapterMaxSize;
    }

    public int getChapterMinSize() {
        return this.chapterMinSize;
    }

    public int getChapterTitleMaxLength() {
        return this.chapterTitleMaxLength;
    }

    public String getLang() {
        return this.lang;
    }

    public HashMap<String, SectionRecognizerConfig> getSectionRecognizerConfigs() {
        return this.sectionRecognizerConfigs;
    }

    public ChapterScanOption setChapterMaxSize(int i) {
        this.chapterMaxSize = i;
        return this;
    }

    public ChapterScanOption setChapterMinSize(int i) {
        this.chapterMinSize = i;
        return this;
    }

    public ChapterScanOption setChapterTitleMaxLength(int i) {
        this.chapterTitleMaxLength = i;
        return this;
    }

    public ChapterScanOption setLang(String str) {
        this.lang = str;
        return this;
    }

    public ChapterScanOption setSectionRecognizerConfigs(HashMap<String, SectionRecognizerConfig> hashMap) {
        this.sectionRecognizerConfigs = hashMap;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }
}
