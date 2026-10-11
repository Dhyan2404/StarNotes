package com.onyx.engine.sdk;

import com.alibaba.fastjson2.TypeReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes8.dex */
public class ChapterSearchResult {
    private PinPosition position;
    private List<SearchResult> searchResultList;

    public static List<SearchResult> parseList(String str) {
        List list = (List) JsonUtils.fromJson(str, new TypeReference<List<ChapterSearchResult>>() { // from class: com.onyx.engine.sdk.ChapterSearchResult.1
        }.getType());
        return list == null ? Collections.emptyList() : toSearchResult(list);
    }

    private static List<SearchResult> toSearchResult(List<ChapterSearchResult> list) {
        ArrayList arrayList = new ArrayList();
        for (ChapterSearchResult chapterSearchResult : list) {
            if (!chapterSearchResult.isEmpty()) {
                for (SearchResult searchResult : chapterSearchResult.getSearchResultList()) {
                    PinPosition copy = chapterSearchResult.getPosition().copy();
                    copy.setNodePosition(searchResult.getStartNodePosition());
                    copy.setTextOffset(searchResult.getStartOffset());
                    copy.setXpath(searchResult.getStartXPath());
                    searchResult.setStartPosition(copy);
                    PinPosition copy2 = chapterSearchResult.getPosition().copy();
                    copy2.setNodePosition(searchResult.getEndNodePosition());
                    copy2.setTextOffset(searchResult.getEndOffset());
                    copy2.setXpath(searchResult.getEndXPath());
                    searchResult.setEndPosition(copy2);
                }
                arrayList.addAll(chapterSearchResult.getSearchResultList());
            }
        }
        return arrayList;
    }

    public PinPosition getPosition() {
        return this.position;
    }

    public List<SearchResult> getSearchResultList() {
        return this.searchResultList;
    }

    public boolean isEmpty() {
        List<SearchResult> list = this.searchResultList;
        return list == null || list.isEmpty();
    }

    public ChapterSearchResult setPosition(PinPosition pinPosition) {
        this.position = pinPosition;
        return this;
    }

    public ChapterSearchResult setSearchResultList(List<SearchResult> list) {
        this.searchResultList = list;
        return this;
    }

    public int size() {
        List<SearchResult> list = this.searchResultList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public String toString() {
        return "ChapterSearchResult{position=" + this.position + ", searchResultList=" + this.searchResultList + '}';
    }
}
