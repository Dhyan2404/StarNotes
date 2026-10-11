package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0000H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;", "Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "Lio/reactivex/rxjava3/core/Observable;", "c", "subscribe", "", C6999h.f39688c, "j", "i", C4921e.f26537n, Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxMoveTwoFingerGesture extends RxMoveGesture {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public final Observable<RxGestureContext> m35994c(RxGestureContext gestureContext) {
        GestureFilter gestureFilter = new GestureFilter();
        gestureFilter.setClazz(RxMoveTwoFingerGesture.class);
        gestureFilter.setFilterTouchUpEvent(true);
        gestureFilter.setFilterTouchUpPoint(false);
        gestureFilter.setFilterSingleTouch(false);
        gestureFilter.setFilterFling(false);
        return gestureFilter.apply(gestureContext);
    }

    /* renamed from: h */
    public final boolean m35995h(RxGestureContext gestureContext) {
        boolean z = gestureContext.getIsHasMultiplePoint() && !gestureContext.getIsMorePointer();
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(RxMoveTwoFingerGesture.class, "filter by single touch");
        }
        return z;
    }

    /* renamed from: i */
    public final boolean m35996i(RxGestureContext gestureContext) {
        float pointerMoveToMoveDistance = gestureContext.pointerMoveToMoveDistance();
        boolean z = !gestureContext.getIsHasMultipleMove() || pointerMoveToMoveDistance >= ((float) gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getMoveDistanceThreshold());
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(RxMoveTwoFingerGesture.class, "filter by move distance = " + pointerMoveToMoveDistance);
        }
        return z;
    }

    /* renamed from: j */
    public final boolean m35997j(RxGestureContext gestureContext) {
        float pointerMoveToDownDistance = gestureContext.pointerMoveToDownDistance();
        if (pointerMoveToDownDistance >= gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleMoveDistanceThresholdShort()) {
            gestureContext.onShortMoved();
        }
        boolean z = gestureContext.getIsHasMultipleMove() || pointerMoveToDownDistance >= ((float) gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleMoveDistanceThreshold());
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(RxMoveTwoFingerGesture.class, "filter by start move distance");
        }
        return z;
    }

    /* renamed from: k */
    public final RxGestureContext m35998k(RxGestureContext gestureContext) {
        RxGestureListener listener;
        MotionEvent pointerCurMotionEvent = gestureContext.getPointerCurMotionEvent();
        if (pointerCurMotionEvent != null && (listener = getListener()) != null) {
            listener.onTwoFingerMoving(gestureContext, pointerCurMotionEvent);
        }
        gestureContext.onMultipleMoved();
        return gestureContext;
    }

    @Override // com.onyx.android.sdk.rxgesture.RxMoveGesture, com.onyx.android.sdk.rxgesture.RxBaseGesture
    @NotNull
    public RxMoveGesture subscribe() {
        setDisposable(createObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.rxgesture.RxMoveTwoFingerGesture.a
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<RxGestureContext> apply(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveTwoFingerGesture.this.m35994c(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxMoveTwoFingerGesture.b
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveTwoFingerGesture.this.m35995h(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxMoveTwoFingerGesture.c
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveTwoFingerGesture.this.m35997j(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxMoveTwoFingerGesture.d
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveTwoFingerGesture.this.m35996i(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxMoveTwoFingerGesture.e
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveTwoFingerGesture.this.filterByMoveTime(p0);
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.rxgesture.RxMoveTwoFingerGesture.f
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final RxGestureContext apply(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxMoveTwoFingerGesture.this.m35998k(p0);
            }
        }).subscribe());
        return this;
    }
}
