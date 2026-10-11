package org.reactivestreams;

/* loaded from: classes16.dex */
public interface Subscription {
    void cancel();

    void request(long j);
}
