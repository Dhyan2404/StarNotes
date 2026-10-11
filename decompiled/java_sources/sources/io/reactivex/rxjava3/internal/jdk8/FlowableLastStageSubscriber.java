package io.reactivex.rxjava3.internal.jdk8;

import com.sunia.HTREnginev2.oog;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableLastStageSubscriber<T> extends oog<T> {

    /* renamed from: g */
    public final boolean f95077g;

    /* renamed from: h */
    public final T f95078h;

    public FlowableLastStageSubscriber(boolean hasDefault, T defaultItem) {
        this.f95077g = hasDefault;
        this.f95078h = defaultItem;
    }

    @Override // com.sunia.HTREnginev2.oog
    public void afterSubscribe(Subscription s) {
        s.request(Long.MAX_VALUE);
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
        } else if (this.f95077g) {
            complete(this.f95078h);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        this.f79990f = t;
    }
}
