package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.flowables.ConnectableFlowable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableAutoConnect<T> extends Flowable<T> {

    /* renamed from: f */
    public final ConnectableFlowable<? extends T> f95367f;

    /* renamed from: g */
    public final int f95368g;

    /* renamed from: h */
    public final Consumer<? super Disposable> f95369h;

    /* renamed from: i */
    public final AtomicInteger f95370i = new AtomicInteger();

    public FlowableAutoConnect(ConnectableFlowable<? extends T> source, int numberOfSubscribers, Consumer<? super Disposable> connection) {
        this.f95367f = source;
        this.f95368g = numberOfSubscribers;
        this.f95369h = connection;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> child) {
        this.f95367f.subscribe((Subscriber<? super Object>) child);
        if (this.f95370i.incrementAndGet() == this.f95368g) {
            this.f95367f.connect(this.f95369h);
        }
    }
}
