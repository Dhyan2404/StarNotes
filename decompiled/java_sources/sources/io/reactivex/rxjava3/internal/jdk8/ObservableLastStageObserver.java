package io.reactivex.rxjava3.internal.jdk8;

import com.sunia.HTREnginev2.qek;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class ObservableLastStageObserver<T> extends qek<T> {

    /* renamed from: g */
    public final boolean f95119g;

    /* renamed from: h */
    public final T f95120h;

    public ObservableLastStageObserver(boolean hasDefault, T defaultItem) {
        this.f95119g = hasDefault;
        this.f95120h = defaultItem;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        if (isDone()) {
            return;
        }
        T t = this.f81973f;
        clear();
        if (t != null) {
            complete(t);
        } else if (this.f95119g) {
            complete(this.f95120h);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        this.f81973f = t;
    }
}
