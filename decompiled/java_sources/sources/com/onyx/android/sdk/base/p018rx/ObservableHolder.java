package com.onyx.android.sdk.base.p018rx;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.ObservableHolder;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u001e\u0010\u001fB\u0017\b\u0016\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\u001e\u0010 J\u001b\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007J\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\n\u001a\u00020\tJ\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\u0012J\b\u0010\u0015\u001a\u00020\u0010H\u0002R\u001c\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u001aR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "", "T", "t", "onNext", "(Ljava/lang/Object;)Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "onComplete", "Lio/reactivex/rxjava3/core/Observable;", "getObservable", "Lio/reactivex/rxjava3/core/Scheduler;", "scheduler", "subscribeOn", "observeOn", "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", "setDisposable", "", "dispose", "", "isDisposed", "isEmitterDipsosed", "b", "a", "Lio/reactivex/rxjava3/core/Observable;", "observable", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "emitter", "c", "Lio/reactivex/rxjava3/disposables/Disposable;", Constants.CONSTRUCTOR_NAME, "()V", "(Lio/reactivex/rxjava3/core/Observable;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class ObservableHolder<T> {

    /* renamed from: a, reason: from kotlin metadata */
    public Observable<T> observable;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public ObservableEmitter<T> emitter;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    public ObservableHolder() {
        m31965b();
    }

    /* renamed from: c */
    public static final void m31964c(ObservableHolder this$0, ObservableEmitter e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "e");
        this$0.emitter = e;
    }

    /* renamed from: b */
    public final void m31965b() {
        Observable<T> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.iek
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                ObservableHolder.m31964c(ObservableHolder.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.observable = create;
    }

    public final void dispose() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    @NotNull
    public final Observable<T> getObservable() {
        Observable<T> observable = this.observable;
        if (observable != null) {
            return observable;
        }
        Intrinsics.throwUninitializedPropertyAccessException("observable");
        return null;
    }

    public final boolean isDisposed() {
        return RxjavaKt.isDisposed(this.disposable);
    }

    public final boolean isEmitterDipsosed() {
        ObservableEmitter<T> observableEmitter = this.emitter;
        if (observableEmitter != null) {
            return observableEmitter.isDisposed();
        }
        return true;
    }

    @NotNull
    public final Observable<T> observeOn(@NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Observable<T> observeOn = getObservable().observeOn(scheduler);
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final ObservableHolder<T> onComplete() {
        ObservableEmitter<T> observableEmitter = this.emitter;
        if (observableEmitter != null) {
            observableEmitter.onComplete();
        }
        return this;
    }

    @NotNull
    public final ObservableHolder<T> onNext(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "t");
        ObservableEmitter<T> observableEmitter = this.emitter;
        if (observableEmitter != null) {
            observableEmitter.onNext(t);
        }
        return this;
    }

    @NotNull
    public final ObservableHolder<T> setDisposable(@Nullable Disposable disposable) {
        this.disposable = disposable;
        return this;
    }

    @NotNull
    public final Observable<T> subscribeOn(@NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Observable<T> subscribeOn = getObservable().subscribeOn(scheduler);
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "subscribeOn(...)");
        return subscribeOn;
    }

    public ObservableHolder(@NotNull Observable<T> observable) {
        Intrinsics.checkNotNullParameter(observable, "observable");
        this.observable = observable;
    }
}
