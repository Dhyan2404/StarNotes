package org.reactivestreams;

/* loaded from: classes16.dex */
public interface Publisher<T> {
    void subscribe(Subscriber<? super T> subscriber);
}
