package com.onyx.engine.sdk;

import java.util.HashSet;

/* loaded from: classes8.dex */
public class SectionRecognizerConfig {
    private String firstTocDefaultName;
    private String prefixChapter;
    private HashSet<Character> prefixSet = new HashSet<>();
    private HashSet<Character> numberSet = new HashSet<>();
    private HashSet<Character> suffixSet = new HashSet<>();
    private HashSet<Character> specialPrefixSet = new HashSet<>();

    public String getFirstTocDefaultName() {
        return this.firstTocDefaultName;
    }

    public HashSet<Character> getNumberSet() {
        return this.numberSet;
    }

    public String getPrefixChapter() {
        return this.prefixChapter;
    }

    public HashSet<Character> getPrefixSet() {
        return this.prefixSet;
    }

    public HashSet<Character> getSpecialPrefixSet() {
        return this.specialPrefixSet;
    }

    public HashSet<Character> getSuffixSet() {
        return this.suffixSet;
    }

    public void setFirstTocDefaultName(String str) {
        this.firstTocDefaultName = str;
    }

    public void setNumberSet(HashSet<Character> hashSet) {
        this.numberSet = hashSet;
    }

    public void setPrefixChapter(String str) {
        this.prefixChapter = str;
    }

    public void setPrefixSet(HashSet<Character> hashSet) {
        this.prefixSet = hashSet;
    }

    public void setSpecialPrefixSet(HashSet<Character> hashSet) {
        this.specialPrefixSet = hashSet;
    }

    public void setSuffixSet(HashSet<Character> hashSet) {
        this.suffixSet = hashSet;
    }
}
