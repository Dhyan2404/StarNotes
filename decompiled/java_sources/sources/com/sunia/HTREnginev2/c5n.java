package com.sunia.HTREnginev2;

import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public final class c5n {

    /* renamed from: c */
    public static final int f66479c = 2;

    /* renamed from: d */
    public static final int f66480d = 7;

    /* renamed from: a */
    public final String f66481a;

    /* renamed from: b */
    public final int f66482b;

    public c5n(String str, int i) {
        this.f66481a = (String) Args.notNull(str, "Value");
        this.f66482b = Args.positive(i, "Type");
    }

    /* renamed from: a */
    public static c5n m53386a(String str) {
        return new c5n(str, 2);
    }

    /* renamed from: b */
    public static c5n m53387b(String str) {
        return new c5n(str, 7);
    }

    /* renamed from: c */
    public int m53388c() {
        return this.f66482b;
    }

    /* renamed from: d */
    public String m53389d() {
        return this.f66481a;
    }

    public String toString() {
        return this.f66481a;
    }
}
