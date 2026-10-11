package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.jdk8.FlowableFromCompletionStage;
import java.util.concurrent.CompletionStage;
import java.util.function.BiConsumer;

/* loaded from: classes10.dex */
public final class CompletableFromCompletionStage<T> extends Completable {

    /* renamed from: e */
    public final CompletionStage<T> f95054e;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.CompletableFromCompletionStage$a */
    /* loaded from: classes10.dex */
    public static final class C17287a<T> implements Disposable, BiConsumer<T, Throwable> {

        /* renamed from: e */
        public final CompletableObserver f95055e;

        /* renamed from: f */
        public final FlowableFromCompletionStage.BiConsumerAtomicReference<T> f95056f;

        public C17287a(CompletableObserver downstream, FlowableFromCompletionStage.BiConsumerAtomicReference<T> whenReference) {
            this.f95055e = downstream;
            this.f95056f = whenReference;
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(T item, Throwable error) {
            if (error != null) {
                this.f95055e.onError(error);
            } else {
                this.f95055e.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95056f.set(null);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95056f.get() == null;
        }
    }

    public CompletableFromCompletionStage(CompletionStage<T> stage) {
        this.f95054e = stage;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        FlowableFromCompletionStage.BiConsumerAtomicReference biConsumerAtomicReference = new FlowableFromCompletionStage.BiConsumerAtomicReference();
        C17287a c17287a = new C17287a(observer, biConsumerAtomicReference);
        biConsumerAtomicReference.lazySet(c17287a);
        observer.onSubscribe(c17287a);
        this.f95054e.whenComplete(biConsumerAtomicReference);
    }
}
