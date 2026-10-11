package org.jsoup.search;

/* loaded from: classes13.dex */
public class SearchOptions {

    /* renamed from: a */
    public String f114404a;

    /* renamed from: b */
    public int f114405b;

    /* renamed from: c */
    public int f114406c;

    /* renamed from: d */
    public int f114407d;

    /* renamed from: e */
    public boolean f114408e;

    /* renamed from: f */
    public boolean f114409f = true;

    /* renamed from: g */
    public boolean f114410g;

    public void abort() {
        this.f114410g = true;
    }

    public int getContextLength() {
        return this.f114405b;
    }

    public int getLimit() {
        return this.f114407d;
    }

    public String getSearchText() {
        return this.f114404a;
    }

    public int getStartPosition() {
        return this.f114406c;
    }

    public boolean isAbort() {
        return this.f114410g;
    }

    public boolean isCaseSensitive() {
        return this.f114409f;
    }

    public boolean isMatchWholeWord() {
        return this.f114408e;
    }

    public void setCaseSensitive(boolean z) {
        this.f114409f = z;
    }

    public void setContextLength(int i) {
        this.f114405b = i;
    }

    public void setLimit(int i) {
        this.f114407d = i;
    }

    public void setMatchWholeWord(boolean z) {
        this.f114408e = z;
    }

    public void setSearchText(String str) {
        this.f114404a = str;
    }

    public void setStartPosition(int i) {
        this.f114406c = i;
    }
}
