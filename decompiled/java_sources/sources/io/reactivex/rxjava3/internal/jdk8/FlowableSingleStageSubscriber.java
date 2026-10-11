package io.reactivex.rxjava3.internal.jdk8;

import com.sunia.HTREnginev2.oog;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableSingleStageSubscriber<T> extends oog<T> {

    /* renamed from: g */
    public final boolean f95083g;

    /* renamed from: h */
    public final T f95084h;

    public FlowableSingleStageSubscriber(boolean hasDefault, T defaultItem) {
        this.f95083g = hasDefault;
        this.f95084h = defaultItem;
    }

    @Override // com.sunia.HTREnginev2.oog
    public void afterSubscribe(Subscription s) {
        s.request(2L);
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (isDone()) {
            return;
        }
        T t = this.f79990f;
        clear();
        if (t != null) {
            complete(t);
        } else if (this.f95083g) {
            complete(this.f95084h);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f79990f == null) {
            this.f79990f = t;
        } else {
            this.f79990f = null;
            completeExceptionally(new IllegalArgumentException("Sequence contains more than one element!"));
        }
    }
}
