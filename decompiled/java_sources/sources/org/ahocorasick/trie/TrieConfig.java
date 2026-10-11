package org.ahocorasick.trie;

/* loaded from: classes11.dex */
public class TrieConfig {

    /* renamed from: a */
    public boolean f104558a = true;

    /* renamed from: b */
    public boolean f104559b = false;

    /* renamed from: c */
    public boolean f104560c = false;

    /* renamed from: d */
    public boolean f104561d = false;

    /* renamed from: e */
    public boolean f104562e = false;

    public boolean isAllowOverlaps() {
        return this.f104558a;
    }

    public boolean isCaseInsensitive() {
        return this.f104561d;
    }

    public boolean isOnlyWholeWords() {
        return this.f104559b;
    }

    public boolean isOnlyWholeWordsWhiteSpaceSeparated() {
        return this.f104560c;
    }

    public boolean isStopOnHit() {
        return this.f104562e;
    }

    public void setAllowOverlaps(boolean z) {
        this.f104558a = z;
    }

    public void setCaseInsensitive(boolean z) {
        this.f104561d = z;
    }

    public void setOnlyWholeWords(boolean z) {
        this.f104559b = z;
    }

    public void setOnlyWholeWordsWhiteSpaceSeparated(boolean z) {
        this.f104560c = z;
    }

    public void setStopOnHit(boolean z) {
        this.f104562e = z;
    }
}
