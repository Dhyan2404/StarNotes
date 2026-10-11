package com.sunia.HTREnginev2;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamPublisher;
import java.util.Objects;
import org.reactivestreams.Publisher;

/* renamed from: com.sunia.HTREnginev2.l3 */
/* loaded from: classes10.dex */
public abstract class AbstractC14025l3<T, R> extends Flowable<R> implements HasUpstreamPublisher<T> {
    protected final Flowable<T> source;

    public AbstractC14025l3(Flowable<T> source) {
        Objects.requireNonNull(source, "source is null");
        this.source = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamPublisher
    public final Publisher<T> source() {
        return this.source;
    }
}
