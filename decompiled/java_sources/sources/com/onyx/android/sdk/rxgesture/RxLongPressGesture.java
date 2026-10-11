package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\b\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002R$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;", "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;", "subscribe", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "rxGestureContext", "", "d", "gestureContext", "", "c", C6998g.f39679a, C6997f.f39671c, "e", C6999h.f39688c, "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "getRxGestureContext", "()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "setRxGestureContext", "(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "i", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "longPressTimer", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxLongPressGesture extends RxBaseGesture<RxLongPressGesture> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public RxGestureContext rxGestureContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final RxTimerUtil.TimerObserver longPressTimer = new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.rxgesture.RxLongPressGesture$longPressTimer$1
        @Override // io.reactivex.rxjava3.core.Observer
        public /* bridge */ /* synthetic */ void onNext(Long l) {
            onNext(l.longValue());
        }

        public void onNext(long aLong) {
            RxGestureContext rxGestureContext = RxLongPressGesture.this.getRxGestureContext();
            if (rxGestureContext != null) {
                RxLongPressGesture.this.m35977e(rxGestureContext);
            }
        }
    };

    /* renamed from: c */
    public final boolean m35975c(RxGestureContext gestureContext) {
        boolean z = gestureContext.moveToDownDistance() >= ((float) gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getLongPressMoveDistanceThreshold());
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(RxLongPressGesture.class, "filter by start move distance");
        }
        return z;
    }

    /* renamed from: d */
    public final void m35976d(RxGestureContext rxGestureContext) {
        MotionEvent curMotionEvent = rxGestureContext.getCurMotionEvent();
        if (curMotionEvent == null) {
            return;
        }
        this.rxGestureContext = rxGestureContext;
        int actionMasked = curMotionEvent.getActionMasked();
        if (actionMasked == 0) {
            m35979g();
            m35978f();
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (rxGestureContext.getIsShortMoved() || rxGestureContext.hasMoved() || rxGestureContext.getIsPalmPressed()) {
                    m35979g();
                }
                if (rxGestureContext.getIsLongPress() && m35975c(rxGestureContext) && !rxGestureContext.getIsLongPressExit()) {
                    RxGestureListener listener = getListener();
                    if (listener != null) {
                        listener.onExitLongPress();
                    }
                    rxGestureContext.onExitLongPress();
                    return;
                }
                return;
            }
            if (actionMasked != 3) {
                m35979g();
                return;
            }
        }
        m35979g();
    }

    /* renamed from: e */
    public final void m35977e(RxGestureContext gestureContext) {
        RxGestureListener listener;
        RxGestureLog.INSTANCE.m35971d(RxLongPressGesture.class, "onLongPress");
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent != null && (listener = getListener()) != null) {
            listener.onLongPress(gestureContext, curMotionEvent);
        }
        gestureContext.onLongPress();
    }

    /* renamed from: f */
    public final void m35978f() {
        RxGestureContext rxGestureContext = this.rxGestureContext;
        if (rxGestureContext != null) {
            RxTimerUtil.INSTANCE.timer(rxGestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getLongPressTime(), this.longPressTimer);
        }
    }

    /* renamed from: g */
    public final void m35979g() {
        RxTimerUtil.INSTANCE.cancel(this.longPressTimer);
    }

    @Nullable
    public final RxGestureContext getRxGestureContext() {
        return this.rxGestureContext;
    }

    public final void setRxGestureContext(@Nullable RxGestureContext rxGestureContext) {
        this.rxGestureContext = rxGestureContext;
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseGesture
    @NotNull
    public RxLongPressGesture subscribe() {
        setDisposable(createObservable().doOnNext(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxLongPressGesture.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxLongPressGesture.this.m35976d(p0);
            }
        }).doOnError(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxLongPressGesture.b
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxLongPressGesture.this.onError(p0);
            }
        }).subscribe());
        return this;
    }
}
