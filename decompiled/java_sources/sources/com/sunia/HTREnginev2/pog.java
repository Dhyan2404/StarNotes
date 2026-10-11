package com.sunia.HTREnginev2;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.processors.FlowableProcessor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class pog<T> extends Flowable<T> {

    /* renamed from: f */
    public final FlowableProcessor<T> f81051f;

    /* renamed from: g */
    public final AtomicBoolean f81052g = new AtomicBoolean();

    public pog(FlowableProcessor<T> source) {
        this.f81051f = source;
    }

    /* renamed from: e */
    public boolean m56349e() {
        return !this.f81052g.get() && this.f81052g.compareAndSet(false, true);
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.f81051f.subscribe(s);
        this.f81052g.set(true);
    }
}
