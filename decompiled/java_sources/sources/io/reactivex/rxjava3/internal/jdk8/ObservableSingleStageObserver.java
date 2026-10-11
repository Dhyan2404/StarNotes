package io.reactivex.rxjava3.internal.jdk8;

import com.sunia.HTREnginev2.qek;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class ObservableSingleStageObserver<T> extends qek<T> {

    /* renamed from: g */
    public final boolean f95124g;

    /* renamed from: h */
    public final T f95125h;

    public ObservableSingleStageObserver(boolean hasDefault, T defaultItem) {
        this.f95124g = hasDefault;
        this.f95125h = defaultItem;
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
        } else if (this.f95124g) {
            complete(this.f95125h);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        if (this.f81973f == null) {
            this.f81973f = t;
        } else {
            this.f81973f = null;
            completeExceptionally(new IllegalArgumentException("Sequence contains more than one element!"));
        }
    }
}
