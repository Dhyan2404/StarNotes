package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;

/* loaded from: classes10.dex */
public final class MaybeUnsafeCreate<T> extends AbstractC13470a4<T, T> {
    public MaybeUnsafeCreate(MaybeSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(observer);
    }
}
