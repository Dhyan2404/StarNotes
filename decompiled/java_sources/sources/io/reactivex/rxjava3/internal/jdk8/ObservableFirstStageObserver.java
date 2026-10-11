package io.reactivex.rxjava3.internal.jdk8;

import com.sunia.HTREnginev2.qek;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class ObservableFirstStageObserver<T> extends qek<T> {

    /* renamed from: g */
    public final boolean f95107g;

    /* renamed from: h */
    public final T f95108h;

    public ObservableFirstStageObserver(boolean hasDefault, T defaultItem) {
        this.f95107g = hasDefault;
        this.f95108h = defaultItem;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        if (isDone()) {
            return;
        }
        clear();
        if (this.f95107g) {
            complete(this.f95108h);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        complete(t);
    }
}
