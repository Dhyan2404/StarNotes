package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.rxgesture.RxFlingGesture;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0006\u0010\u0002\u001a\u00020\u0000J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0003H\u0002J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015H\u0002J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002R\u001e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0019R$\u0010!\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;", "Lio/reactivex/rxjava3/disposables/Disposable;", "subscribe", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "", "onNext", "dispose", "", "isDisposed", "", "throwable", "j", C6999h.f39688c, "e", "d", C6998g.f39679a, C6997f.f39671c, C4921e.f26537n, "rxGestureContext", "i", "Lio/reactivex/rxjava3/core/Observable;", "b", "l", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "emitter", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "getListener", "()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "setListener", "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxFlingGesture implements Disposable {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ObservableEmitter<RxGestureContext> emitter;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public RxGestureListener listener;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    /* renamed from: c */
    public static final void m35922c(RxFlingGesture this$0, ObservableEmitter e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "e");
        this$0.emitter = e;
    }

    /* renamed from: b */
    public final Observable<RxGestureContext> m35923b() {
        Observable<RxGestureContext> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.zvl
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                RxFlingGesture.m35922c(RxFlingGesture.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    /* renamed from: d */
    public final boolean m35924d(RxGestureContext gestureContext) {
        if (!gestureContext.getIsLongPress()) {
            return true;
        }
        RxGestureLog.INSTANCE.m35974v(RxFlingGesture.class, "filter by longPress");
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: e */
    public final boolean m35925e(RxGestureContext gestureContext) {
        if (!gestureContext.getIsScale()) {
            return true;
        }
        RxGestureLog.INSTANCE.m35974v(RxFlingGesture.class, "filter by scale");
        return false;
    }

    /* renamed from: f */
    public final boolean m35926f(RxGestureContext gestureContext) {
        boolean isSinglePointTouch = gestureContext.isSinglePointTouch();
        if (!isSinglePointTouch) {
            RxGestureLog.INSTANCE.m35974v(RxFlingGesture.class, "filter by single touch, hasSingleMoved = " + gestureContext.hasSingleMoved() + ", hasMultipleMoved = " + gestureContext.getIsHasMultipleMove());
            m35931k(gestureContext);
        }
        return isSinglePointTouch;
    }

    /* renamed from: g */
    public final boolean m35927g(RxGestureContext gestureContext) {
        return gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getIsEnableTwoMoveGesture() ? !gestureContext.isSinglePointTouch() : m35926f(gestureContext);
    }

    @Nullable
    public final RxGestureListener getListener() {
        return this.listener;
    }

    /* renamed from: h */
    public final boolean m35928h(RxGestureContext gestureContext) {
        return gestureContext.hasMoved();
    }

    /* renamed from: i */
    public final boolean m35929i(RxGestureContext rxGestureContext) {
        MotionEvent curMotionEvent = rxGestureContext.getCurMotionEvent();
        return curMotionEvent != null && curMotionEvent.getActionMasked() == 1;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            return disposable.isDisposed();
        }
        return true;
    }

    /* renamed from: j */
    public final void m35930j(Throwable throwable) {
        subscribe();
    }

    /* renamed from: k */
    public final void m35931k(RxGestureContext gestureContext) {
        MotionEvent curMotionEvent;
        if (m35929i(gestureContext) && gestureContext.hasSingleMoved() && (curMotionEvent = gestureContext.getCurMotionEvent()) != null) {
            RxGestureListener rxGestureListener = this.listener;
            if (rxGestureListener != null) {
                rxGestureListener.onExitSingleMove(gestureContext, curMotionEvent);
            }
            RxGestureLog.INSTANCE.m35971d(RxFlingGesture.class, "onExitSingleMove ");
        }
    }

    /* renamed from: l */
    public final RxGestureContext m35932l(RxGestureContext gestureContext) {
        MotionEvent downMotionEvent;
        gestureContext.onFling();
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent == null || (downMotionEvent = gestureContext.getDownMotionEvent()) == null) {
            return gestureContext;
        }
        long eventTime = curMotionEvent.getEventTime() - downMotionEvent.getEventTime();
        float x = curMotionEvent.getX() - downMotionEvent.getX();
        float y = curMotionEvent.getY() - downMotionEvent.getY();
        RxGestureLog.INSTANCE.m35971d(RxFlingGesture.class, "onFling, duration = " + eventTime + ", distanceX = " + x + ", distanceY = " + y);
        RxGestureListener rxGestureListener = this.listener;
        if (rxGestureListener != null) {
            rxGestureListener.onFling(gestureContext, curMotionEvent);
        }
        return gestureContext;
    }

    public final void onNext(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        ObservableEmitter<RxGestureContext> observableEmitter = this.emitter;
        if (observableEmitter != null) {
            observableEmitter.onNext(gestureContext);
        }
    }

    public final void setListener(@Nullable RxGestureListener rxGestureListener) {
        this.listener = rxGestureListener;
    }

    @NotNull
    public final RxFlingGesture subscribe() {
        this.disposable = m35923b().filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxFlingGesture.a
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxFlingGesture.this.m35925e(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxFlingGesture.b
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxFlingGesture.this.m35924d(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxFlingGesture.c
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxFlingGesture.this.m35927g(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxFlingGesture.d
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxFlingGesture.this.m35928h(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxFlingGesture.e
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxFlingGesture.this.m35929i(p0);
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.rxgesture.RxFlingGesture.f
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final RxGestureContext apply(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxFlingGesture.this.m35932l(p0);
            }
        }).doOnError(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxFlingGesture.g
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxFlingGesture.this.m35930j(p0);
            }
        }).subscribe();
        return this;
    }
}
