package org.slf4j.helpers;

/* loaded from: classes16.dex */
public class FormattingTuple {
    public static FormattingTuple NULL = new FormattingTuple(null);

    /* renamed from: a */
    public String f116049a;

    /* renamed from: b */
    public Throwable f116050b;

    /* renamed from: c */
    public Object[] f116051c;

    public FormattingTuple(String str) {
        this(str, null, null);
    }

    public Object[] getArgArray() {
        return this.f116051c;
    }

    public String getMessage() {
        return this.f116049a;
    }

    public Throwable getThrowable() {
        return this.f116050b;
    }

    public FormattingTuple(String str, Object[] objArr, Throwable th) {
        this.f116049a = str;
        this.f116050b = th;
        this.f116051c = objArr;
    }
}
