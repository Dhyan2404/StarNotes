package com.onyx.android.sdk.rxgesture;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.rxgesture.RxBaseGesture;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.disposables.Disposable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\b&\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002B\u0007¢\u0006\u0004\b(\u0010)J\u000f\u0010\u0003\u001a\u00028\u0000H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0004J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\nH\u0016J\b\u0010\u000e\u001a\u00020\u0007H\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016R*\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;", "T", "Lio/reactivex/rxjava3/disposables/Disposable;", "subscribe", "()Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;", "", "throwable", "", "onError", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "createObservable", "gestureContext", "onNext", "dispose", "", "isDisposed", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "e", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "getEmitter", "()Lio/reactivex/rxjava3/core/ObservableEmitter;", "setEmitter", "(Lio/reactivex/rxjava3/core/ObservableEmitter;)V", "emitter", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", C6997f.f39671c, "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "getListener", "()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "setListener", "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, C6998g.f39679a, "Lio/reactivex/rxjava3/disposables/Disposable;", "getDisposable", "()Lio/reactivex/rxjava3/disposables/Disposable;", "setDisposable", "(Lio/reactivex/rxjava3/disposables/Disposable;)V", "disposable", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class RxBaseGesture<T extends RxBaseGesture<T>> implements Disposable {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ObservableEmitter<RxGestureContext> emitter;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public RxGestureListener listener;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    /* renamed from: b */
    public static final void m35906b(RxBaseGesture this$0, ObservableEmitter e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "e");
        this$0.emitter = e;
    }

    @NotNull
    public final Observable<RxGestureContext> createObservable() {
        Observable<RxGestureContext> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.wvl
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                RxBaseGesture.m35906b(RxBaseGesture.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.listener = null;
        this.emitter = null;
    }

    @Nullable
    public final Disposable getDisposable() {
        return this.disposable;
    }

    @Nullable
    public final ObservableEmitter<RxGestureContext> getEmitter() {
        return this.emitter;
    }

    @Nullable
    public final RxGestureListener getListener() {
        return this.listener;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            return disposable.isDisposed();
        }
        return true;
    }

    public void onError(@NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        subscribe();
    }

    public void onNext(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        ObservableEmitter<RxGestureContext> observableEmitter = this.emitter;
        if (observableEmitter != null) {
            observableEmitter.onNext(gestureContext);
        }
    }

    public final void setDisposable(@Nullable Disposable disposable) {
        this.disposable = disposable;
    }

    public final void setEmitter(@Nullable ObservableEmitter<RxGestureContext> observableEmitter) {
        this.emitter = observableEmitter;
    }

    public final void setListener(@Nullable RxGestureListener rxGestureListener) {
        this.listener = rxGestureListener;
    }

    @NotNull
    public abstract T subscribe();
}
