package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.jdk8.FlowableFromCompletionStage;
import java.util.concurrent.CompletionStage;
import java.util.function.BiConsumer;

/* loaded from: classes10.dex */
public final class MaybeFromCompletionStage<T> extends Maybe<T> {

    /* renamed from: e */
    public final CompletionStage<T> f95089e;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.MaybeFromCompletionStage$a */
    /* loaded from: classes10.dex */
    public static final class C17291a<T> implements Disposable, BiConsumer<T, Throwable> {

        /* renamed from: e */
        public final MaybeObserver<? super T> f95090e;

        /* renamed from: f */
        public final FlowableFromCompletionStage.BiConsumerAtomicReference<T> f95091f;

        public C17291a(MaybeObserver<? super T> downstream, FlowableFromCompletionStage.BiConsumerAtomicReference<T> whenReference) {
            this.f95090e = downstream;
            this.f95091f = whenReference;
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(T item, Throwable error) {
            if (error != null) {
                this.f95090e.onError(error);
            } else if (item != null) {
                this.f95090e.onSuccess(item);
            } else {
                this.f95090e.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95091f.set(null);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95091f.get() == null;
        }
    }

    public MaybeFromCompletionStage(CompletionStage<T> stage) {
        this.f95089e = stage;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        FlowableFromCompletionStage.BiConsumerAtomicReference biConsumerAtomicReference = new FlowableFromCompletionStage.BiConsumerAtomicReference();
        C17291a c17291a = new C17291a(observer, biConsumerAtomicReference);
        biConsumerAtomicReference.lazySet(c17291a);
        observer.onSubscribe(c17291a);
        this.f95089e.whenComplete(biConsumerAtomicReference);
    }
}
