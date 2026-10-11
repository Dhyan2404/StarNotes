package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0004J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0004J\u001a\u0010\n\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\bH\u0004J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0004J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u001a\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;", "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;", "subscribe", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "", "filterByScale", "filterByLongPress", "", "distance", "filterByStartMoveDistanceShort", "filterByMoveTime", "", "onNext", "Lio/reactivex/rxjava3/core/Observable;", "c", "filterByPalm", "e", "d", C6998g.f39679a, Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class RxMoveGesture extends RxBaseGesture<RxMoveGesture> {
    /* renamed from: f */
    public static /* synthetic */ boolean m35982f(RxMoveGesture rxMoveGesture, RxGestureContext rxGestureContext, float f, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: filterByStartMoveDistance");
        }
        if ((i & 2) != 0) {
            f = rxGestureContext.moveToDownDistance();
        }
        return rxMoveGesture.m35985e(rxGestureContext, f);
    }

    public static /* synthetic */ boolean filterByStartMoveDistanceShort$default(RxMoveGesture rxMoveGesture, RxGestureContext rxGestureContext, float f, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: filterByStartMoveDistanceShort");
        }
        if ((i & 2) != 0) {
            f = rxGestureContext.moveToDownDistance();
        }
        return rxMoveGesture.filterByStartMoveDistanceShort(rxGestureContext, f);
    }

    /* renamed from: c */
    public final Observable<RxGestureContext> m35983c(RxGestureContext gestureContext) {
        GestureFilter gestureFilter = new GestureFilter();
        gestureFilter.setClazz(getClass());
        gestureFilter.setFilterTouchUpEvent(true);
        gestureFilter.setFilterTouchUpPoint(false);
        gestureFilter.setFilterFling(false);
        return gestureFilter.apply(gestureContext);
    }

    /* renamed from: d */
    public final boolean m35984d(RxGestureContext gestureContext) {
        float moveToMoveDistance = gestureContext.moveToMoveDistance();
        boolean z = !gestureContext.hasSingleMoved() || moveToMoveDistance >= ((float) gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getMoveDistanceThreshold());
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(getClass(), "filter by move distance = " + moveToMoveDistance);
        }
        return z;
    }

    /* renamed from: e */
    public final boolean m35985e(RxGestureContext gestureContext, float distance) {
        if (distance >= gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleMoveDistanceThresholdShort()) {
            gestureContext.onShortMoved();
        }
        boolean z = gestureContext.hasSingleMoved() || distance >= ((float) gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleMoveDistanceThreshold());
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(getClass(), "filter by start move distance");
        }
        return z;
    }

    public final boolean filterByLongPress(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        if (!gestureContext.getIsLongPress()) {
            return true;
        }
        RxGestureLog.INSTANCE.m35974v(getClass(), "filter by longPress");
        return false;
    }

    public final boolean filterByMoveTime(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        boolean z = System.currentTimeMillis() - gestureContext.getLastMoveTime() >= gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getMoveIntervalTimeMs();
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(getClass(), "filter by move time");
        }
        return z;
    }

    public final boolean filterByPalm(RxGestureContext gestureContext) {
        return gestureContext.getIsHasMultiplePoint() ? !gestureContext.getIsBigPalmPressed() : !gestureContext.getIsPalmPressed();
    }

    public final boolean filterByScale(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        if (!gestureContext.getIsScale()) {
            return true;
        }
        RxGestureLog.INSTANCE.m35974v(getClass(), "filter by scale");
        return false;
    }

    public final boolean filterByStartMoveDistanceShort(@NotNull RxGestureContext gestureContext, float distance) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        boolean z = distance >= ((float) gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleMoveDistanceThresholdShort());
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(getClass(), "filter by start move short distance");
        }
        return z;
    }

    /* renamed from: g */
    public final void m35986g(RxGestureContext gestureContext) {
        RxGestureListener listener;
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent != null && (listener = getListener()) != null) {
            listener.onMoving(gestureContext, curMotionEvent);
        }
        gestureContext.onMoved();
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseGesture
    public void onNext(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        if (isDisposed()) {
            RxGestureLog.INSTANCE.m35973i(getClass(), "isDisposed!");
        }
        super.onNext(gestureContext);
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseGesture
    @NotNull
    public RxMoveGesture subscribe() {
        setDisposable(createObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.rxgesture.RxMoveGesture.a
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<RxGestureContext> apply(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveGesture.this.m35983c(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxMoveGesture.b
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveGesture.this.filterByPalm(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxMoveGesture.c
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveGesture.m35982f(RxMoveGesture.this, p0, 0.0f, 2, null);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxMoveGesture.d
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveGesture.this.m35984d(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxMoveGesture.e
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveGesture.this.filterByMoveTime(p0);
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.rxgesture.RxMoveGesture.f
            /* renamed from: a */
            public final void m35992a(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxMoveGesture.this.m35986g(p0);
            }

            @Override // io.reactivex.rxjava3.functions.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                m35992a((RxGestureContext) obj);
                return Unit.INSTANCE;
            }
        }).doOnError(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxMoveGesture.g
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxMoveGesture.this.onError(p0);
            }
        }).subscribe());
        return this;
    }
}
