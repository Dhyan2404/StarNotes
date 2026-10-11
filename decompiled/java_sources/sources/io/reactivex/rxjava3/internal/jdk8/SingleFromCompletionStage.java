package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.jdk8.FlowableFromCompletionStage;
import java.util.concurrent.CompletionStage;
import java.util.function.BiConsumer;

/* loaded from: classes10.dex */
public final class SingleFromCompletionStage<T> extends Single<T> {

    /* renamed from: e */
    public final CompletionStage<T> f95159e;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.SingleFromCompletionStage$a */
    /* loaded from: classes10.dex */
    public static final class C17301a<T> implements Disposable, BiConsumer<T, Throwable> {

        /* renamed from: e */
        public final SingleObserver<? super T> f95160e;

        /* renamed from: f */
        public final FlowableFromCompletionStage.BiConsumerAtomicReference<T> f95161f;

        public C17301a(SingleObserver<? super T> downstream, FlowableFromCompletionStage.BiConsumerAtomicReference<T> whenReference) {
            this.f95160e = downstream;
            this.f95161f = whenReference;
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(T item, Throwable error) {
            if (error != null) {
                this.f95160e.onError(error);
            } else if (item != null) {
                this.f95160e.onSuccess(item);
            } else {
                this.f95160e.onError(new NullPointerException("The CompletionStage terminated with null."));
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95161f.set(null);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95161f.get() == null;
        }
    }

    public SingleFromCompletionStage(CompletionStage<T> stage) {
        this.f95159e = stage;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        FlowableFromCompletionStage.BiConsumerAtomicReference biConsumerAtomicReference = new FlowableFromCompletionStage.BiConsumerAtomicReference();
        C17301a c17301a = new C17301a(observer, biConsumerAtomicReference);
        biConsumerAtomicReference.lazySet(c17301a);
        observer.onSubscribe(c17301a);
        this.f95159e.whenComplete(biConsumerAtomicReference);
    }
}
