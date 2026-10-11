package com.sunia.HTREnginev2;

import java.util.Objects;
import java.util.Spliterator;
import onyx.org.apache.commons.io.function.IOSpliterator;

/* loaded from: classes11.dex */
public final class dei<T> implements IOSpliterator<T> {

    /* renamed from: a */
    public final Spliterator<T> f67776a;

    public dei(Spliterator<T> spliterator) {
        Objects.requireNonNull(spliterator, "delegate");
        this.f67776a = spliterator;
    }

    /* renamed from: a */
    public static <E> dei<E> m53640a(Spliterator<E> spliterator) {
        return new dei<>(spliterator);
    }

    @Override // onyx.org.apache.commons.io.function.IOSpliterator
    public Spliterator<T> unwrap() {
        return this.f67776a;
    }
}
