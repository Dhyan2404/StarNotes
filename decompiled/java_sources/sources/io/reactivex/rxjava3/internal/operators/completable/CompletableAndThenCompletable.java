package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class CompletableAndThenCompletable extends Completable {

    /* renamed from: e */
    public final CompletableSource f95203e;

    /* renamed from: f */
    public final CompletableSource f95204f;

    /* loaded from: classes10.dex */
    public static final class SourceObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = -4101678820158072998L;
        final CompletableObserver actualObserver;
        final CompletableSource next;

        public SourceObserver(CompletableObserver actualObserver, CompletableSource next) {
            this.actualObserver = actualObserver;
            this.next = next;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.next.subscribe(new C17304a(this, this.actualObserver));
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            this.actualObserver.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.setOnce(this, d)) {
                this.actualObserver.onSubscribe(this);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableAndThenCompletable$a */
    /* loaded from: classes10.dex */
    public static final class C17304a implements CompletableObserver {

        /* renamed from: e */
        public final AtomicReference<Disposable> f95205e;

        /* renamed from: f */
        public final CompletableObserver f95206f;

        public C17304a(AtomicReference<Disposable> parent, CompletableObserver downstream) {
            this.f95205e = parent;
            this.f95206f = downstream;
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f95206f.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            this.f95206f.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            DisposableHelper.replace(this.f95205e, d);
        }
    }

    public CompletableAndThenCompletable(CompletableSource source, CompletableSource next) {
        this.f95203e = source;
        this.f95204f = next;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        this.f95203e.subscribe(new SourceObserver(observer, this.f95204f));
    }
}
