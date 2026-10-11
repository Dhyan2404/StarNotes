package org.jsoup.parser;

/* loaded from: classes13.dex */
public class ParseError {

    /* renamed from: a */
    public int f114156a;

    /* renamed from: b */
    public String f114157b;

    public ParseError(int i, String str) {
        this.f114156a = i;
        this.f114157b = str;
    }

    public String getErrorMessage() {
        return this.f114157b;
    }

    public int getPosition() {
        return this.f114156a;
    }

    public String toString() {
        return this.f114156a + ": " + this.f114157b;
    }

    public ParseError(int i, String str, Object... objArr) {
        this.f114157b = String.format(str, objArr);
        this.f114156a = i;
    }
}
