package io.reactivex.rxjava3.internal.jdk8;

import com.sunia.HTREnginev2.oog;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableFirstStageSubscriber<T> extends oog<T> {

    /* renamed from: g */
    public final boolean f95070g;

    /* renamed from: h */
    public final T f95071h;

    public FlowableFirstStageSubscriber(boolean hasDefault, T defaultItem) {
        this.f95070g = hasDefault;
        this.f95071h = defaultItem;
    }

    @Override // com.sunia.HTREnginev2.oog
    public void afterSubscribe(Subscription s) {
        s.request(1L);
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (isDone()) {
            return;
        }
        clear();
        if (this.f95070g) {
            complete(this.f95071h);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        complete(t);
    }
}
