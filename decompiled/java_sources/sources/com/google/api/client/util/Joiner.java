package com.google.api.client.util;

/* loaded from: classes6.dex */
public final class Joiner {
    private final com.google.common.base.Joiner wrapped;

    private Joiner(com.google.common.base.Joiner joiner) {
        this.wrapped = joiner;
    }

    /* renamed from: on */
    public static Joiner m25758on(char c) {
        return new Joiner(com.google.common.base.Joiner.m25798on(c));
    }

    public final String join(Iterable<?> iterable) {
        return this.wrapped.join((Iterable<? extends Object>) iterable);
    }
}
