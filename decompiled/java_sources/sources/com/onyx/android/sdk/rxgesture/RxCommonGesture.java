package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u000f\u001a\u00020\u0007H\u0002R$\u0010\u0016\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0017\u0010!\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\f\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;", "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;", "subscribe", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "Lio/reactivex/rxjava3/core/Observable;", "c", "", "d", C6997f.f39671c, "e", C6998g.f39679a, "j", "i", C4921e.f26537n, C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getLastSingleTapUpPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setLastSingleTapUpPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "lastSingleTapUpPoint", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "getRxGestureContext", "()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "setRxGestureContext", "(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V", "rxGestureContext", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "getSingleTapConfirmedTimer", "()Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "singleTapConfirmedTimer", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxCommonGesture extends RxBaseGesture<RxCommonGesture> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public TouchPoint lastSingleTapUpPoint;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public RxGestureContext rxGestureContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final RxTimerUtil.TimerObserver singleTapConfirmedTimer = new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.rxgesture.RxCommonGesture$singleTapConfirmedTimer$1
        @Override // io.reactivex.rxjava3.core.Observer
        public /* bridge */ /* synthetic */ void onNext(Long l) {
            onNext(l.longValue());
        }

        public void onNext(long t) {
            RxGestureContext rxGestureContext = RxCommonGesture.this.getRxGestureContext();
            if (rxGestureContext != null) {
                RxCommonGesture.this.m35911g(rxGestureContext);
            }
        }
    };

    /* renamed from: c */
    public final Observable<RxGestureContext> m35907c(RxGestureContext gestureContext) {
        GestureFilter gestureFilter = new GestureFilter();
        gestureFilter.setClazz(RxCommonGesture.class);
        gestureFilter.setFilterByUpToDownDistance(true);
        gestureFilter.setFilterByUpToDownTime(true);
        gestureFilter.setFilterByCancelCallback(new Function1<MotionEvent, Unit>() { // from class: com.onyx.android.sdk.rxgesture.RxCommonGesture$applyGestureFilter$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                invoke2(motionEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull MotionEvent it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxCommonGesture.this.m35914j();
            }
        });
        return gestureFilter.apply(gestureContext);
    }

    /* renamed from: d */
    public final void m35908d(RxGestureContext gestureContext) {
        MotionEvent curMotionEvent;
        if (gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getIsEnableDoubleGesture() && (curMotionEvent = gestureContext.getCurMotionEvent()) != null && curMotionEvent.getActionMasked() == 0) {
            m35914j();
        }
    }

    /* renamed from: e */
    public final RxGestureContext m35909e(RxGestureContext gestureContext) {
        RxGestureListener listener;
        if (this.lastSingleTapUpPoint == null || TouchPointKt.obtainTimestamp(gestureContext.getUpPoint()) - TouchPointKt.obtainTimestamp(this.lastSingleTapUpPoint) > gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getDoubleTapTimeMsThreshold() || RxGestureContext.INSTANCE.distance(this.lastSingleTapUpPoint, gestureContext.getUpPoint()) > gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getDoubleTapDistanceThreshold() || !gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getIsEnableDoubleGesture()) {
            return gestureContext;
        }
        RxGestureLog.INSTANCE.m35971d(RxCommonGesture.class, "onDoubleTap");
        m35914j();
        gestureContext.onDoubleTap();
        m35912h();
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent != null && (listener = getListener()) != null) {
            listener.onDoubleTap(gestureContext, curMotionEvent);
        }
        return gestureContext;
    }

    /* renamed from: f */
    public final RxGestureContext m35910f(RxGestureContext gestureContext) {
        RxGestureListener listener;
        if (gestureContext.getIsDoubleTap() || gestureContext.getIsPalmPressed()) {
            return gestureContext;
        }
        this.rxGestureContext = gestureContext;
        if (gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getIsEnableDoubleGesture()) {
            m35914j();
            m35913i();
        }
        RxGestureLog.INSTANCE.m35971d(RxCommonGesture.class, "onSingleTap");
        m35915k(gestureContext);
        gestureContext.onSingleTap();
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent != null && (listener = getListener()) != null) {
            listener.onSingleTap(gestureContext, curMotionEvent);
        }
        return gestureContext;
    }

    /* renamed from: g */
    public final void m35911g(RxGestureContext gestureContext) {
        RxGestureListener listener;
        RxGestureLog.INSTANCE.m35971d(RxCommonGesture.class, "onSingleTapConfirmed");
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent == null || (listener = getListener()) == null) {
            return;
        }
        listener.onSingleTapConfirmed(gestureContext, curMotionEvent);
    }

    @Nullable
    public final TouchPoint getLastSingleTapUpPoint() {
        return this.lastSingleTapUpPoint;
    }

    @Nullable
    public final RxGestureContext getRxGestureContext() {
        return this.rxGestureContext;
    }

    @NotNull
    public final RxTimerUtil.TimerObserver getSingleTapConfirmedTimer() {
        return this.singleTapConfirmedTimer;
    }

    /* renamed from: h */
    public final void m35912h() {
        this.lastSingleTapUpPoint = null;
    }

    /* renamed from: i */
    public final void m35913i() {
        RxGestureContext rxGestureContext = this.rxGestureContext;
        if (rxGestureContext != null) {
            RxTimerUtil.INSTANCE.timer(rxGestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleTapConfirmedTimeMsThreshold(), this.singleTapConfirmedTimer);
        }
    }

    /* renamed from: j */
    public final void m35914j() {
        RxTimerUtil.INSTANCE.cancel(this.singleTapConfirmedTimer);
    }

    /* renamed from: k */
    public final void m35915k(RxGestureContext gestureContext) {
        this.lastSingleTapUpPoint = gestureContext.getUpPoint();
    }

    public final void setLastSingleTapUpPoint(@Nullable TouchPoint touchPoint) {
        this.lastSingleTapUpPoint = touchPoint;
    }

    public final void setRxGestureContext(@Nullable RxGestureContext rxGestureContext) {
        this.rxGestureContext = rxGestureContext;
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseGesture
    @NotNull
    public RxCommonGesture subscribe() {
        setDisposable(createObservable().doOnNext(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxCommonGesture.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxCommonGesture.this.m35908d(p0);
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.rxgesture.RxCommonGesture.b
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<RxGestureContext> apply(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxCommonGesture.this.m35907c(p0);
            }
        }).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxCommonGesture.c
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxCommonGesture.this.m35909e(p0);
            }
        }).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxCommonGesture.d
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxCommonGesture.this.m35910f(p0);
            }
        }).doOnError(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxCommonGesture.e
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxCommonGesture.this.onError(p0);
            }
        }).subscribe());
        return this;
    }
}
