package com.sunia.HTREnginev2;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.subjects.Subject;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes10.dex */
public final class rek<T> extends Observable<T> {

    /* renamed from: e */
    public final Subject<T> f83029e;

    /* renamed from: f */
    public final AtomicBoolean f83030f = new AtomicBoolean();

    public rek(Subject<T> source) {
        this.f83029e = source;
    }

    /* renamed from: d */
    public boolean m56945d() {
        return !this.f83030f.get() && this.f83030f.compareAndSet(false, true);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> s) {
        this.f83029e.subscribe(s);
        this.f83030f.set(true);
    }
}
