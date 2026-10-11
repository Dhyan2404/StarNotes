package com.google.zxing.oned.rss.expanded.decoders;

/* loaded from: classes4.dex */
public final class CurrentParsingState {

    /* renamed from: a */
    public int f38659a = 0;

    /* renamed from: b */
    public State f38660b = State.NUMERIC;

    /* loaded from: classes4.dex */
    public enum State {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    /* renamed from: a */
    public int m30675a() {
        return this.f38659a;
    }

    /* renamed from: b */
    public void m30676b(int i) {
        this.f38659a += i;
    }

    /* renamed from: c */
    public boolean m30677c() {
        return this.f38660b == State.ALPHA;
    }

    /* renamed from: d */
    public boolean m30678d() {
        return this.f38660b == State.ISO_IEC_646;
    }

    /* renamed from: e */
    public boolean m30679e() {
        return this.f38660b == State.NUMERIC;
    }

    /* renamed from: f */
    public void m30680f() {
        this.f38660b = State.ALPHA;
    }

    /* renamed from: g */
    public void m30681g() {
        this.f38660b = State.ISO_IEC_646;
    }

    /* renamed from: h */
    public void m30682h() {
        this.f38660b = State.NUMERIC;
    }

    /* renamed from: i */
    public void m30683i(int i) {
        this.f38659a = i;
    }
}
