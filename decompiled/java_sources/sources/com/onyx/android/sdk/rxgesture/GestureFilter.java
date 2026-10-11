package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bL\u0010MJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\f\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0002J\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0002R(\u0010\u001a\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010 \u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010#\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u001b\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR\"\u0010&\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u001b\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001fR\"\u0010)\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u001b\u001a\u0004\b'\u0010\u001d\"\u0004\b(\u0010\u001fR\"\u0010,\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u001b\u001a\u0004\b*\u0010\u001d\"\u0004\b+\u0010\u001fR\"\u0010/\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u001b\u001a\u0004\b-\u0010\u001d\"\u0004\b.\u0010\u001fR\"\u00102\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u001b\u001a\u0004\b0\u0010\u001d\"\u0004\b1\u0010\u001fR\"\u00105\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u001b\u001a\u0004\b3\u0010\u001d\"\u0004\b4\u0010\u001fR\"\u00108\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u001b\u001a\u0004\b6\u0010\u001d\"\u0004\b7\u0010\u001fR\"\u0010;\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b9\u0010\u001d\"\u0004\b:\u0010\u001fR.\u0010D\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020>0<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010G\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u001b\u001a\u0004\bE\u0010\u001d\"\u0004\bF\u0010\u001fR\"\u0010K\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010\u001b\u001a\u0004\bI\u0010\u001d\"\u0004\bJ\u0010\u001f¨\u0006N"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/GestureFilter;", "", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "", "l", C6999h.f39688c, C4921e.f26537n, "i", "j", "b", "a", "c", "e", "d", C6997f.f39671c, C6998g.f39679a, "Ljava/lang/Class;", "m", "Lio/reactivex/rxjava3/core/Observable;", "apply", "Ljava/lang/Class;", "getClazz", "()Ljava/lang/Class;", "setClazz", "(Ljava/lang/Class;)V", "clazz", Constants.HASIDCALL_INDEX_SIG, "getFilterLongPress", Constants.BOOLEAN_VALUE_SIG, "setFilterLongPress", "(Z)V", "filterLongPress", "getFilterScale", "setFilterScale", "filterScale", "getFilterMove", "setFilterMove", "filterMove", "getFilterSingleTouch", "setFilterSingleTouch", "filterSingleTouch", "getFilterTouchUpPoint", "setFilterTouchUpPoint", "filterTouchUpPoint", "getFilterTouchUpEvent", "setFilterTouchUpEvent", "filterTouchUpEvent", "getFilterFling", "setFilterFling", "filterFling", "getFilterSingleTap", "setFilterSingleTap", "filterSingleTap", "getFilterDoubleTap", "setFilterDoubleTap", "filterDoubleTap", "getFilterByCancel", "setFilterByCancel", "filterByCancel", "Lkotlin/Function1;", "Landroid/view/MotionEvent;", "", "Lkotlin/jvm/functions/Function1;", "getFilterByCancelCallback", "()Lkotlin/jvm/functions/Function1;", "setFilterByCancelCallback", "(Lkotlin/jvm/functions/Function1;)V", "filterByCancelCallback", "getFilterByUpToDownDistance", "setFilterByUpToDownDistance", "filterByUpToDownDistance", GoogleApiAvailabilityLight.f29016b, "getFilterByUpToDownTime", "setFilterByUpToDownTime", "filterByUpToDownTime", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GestureFilter {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Class<?> clazz;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean filterMove;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean filterTouchUpEvent;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean filterSingleTap;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean filterDoubleTap;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean filterByUpToDownDistance;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean filterByUpToDownTime;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean filterLongPress = true;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean filterScale = true;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean filterSingleTouch = true;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean filterTouchUpPoint = true;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean filterFling = true;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean filterByCancel = true;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Function1<? super MotionEvent, Unit> filterByCancelCallback = new Function1<MotionEvent, Unit>() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter$filterByCancelCallback$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull MotionEvent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
            invoke2(motionEvent);
            return Unit.INSTANCE;
        }
    };

    /* renamed from: a */
    public final boolean m35868a(RxGestureContext gestureContext) {
        if (!this.filterByCancel) {
            return true;
        }
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent == null) {
            RxGestureLog.INSTANCE.m35974v(m35880m(), "filter by not has current motion");
            return false;
        }
        if (curMotionEvent.getActionMasked() != 3) {
            return true;
        }
        this.filterByCancelCallback.invoke(curMotionEvent);
        RxGestureLog.INSTANCE.m35974v(m35880m(), "filter by cancel");
        return false;
    }

    @NotNull
    public final Observable<RxGestureContext> apply(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Observable<RxGestureContext> filter = Observable.just(gestureContext).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.d
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35868a(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.e
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35872e(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.f
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35871d(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.g
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35870c(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.h
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35873f(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.i
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35874g(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.j
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35869b(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.k
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35878k(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.l
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35876i(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.a
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35877j(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.b
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35879l(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.GestureFilter.c
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return GestureFilter.this.m35875h(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(filter, "filter(...)");
        return filter;
    }

    /* renamed from: b */
    public final boolean m35869b(RxGestureContext gestureContext) {
        if (!this.filterScale || !gestureContext.getIsScale()) {
            return true;
        }
        RxGestureLog.INSTANCE.m35974v(m35880m(), "filter by scale");
        return false;
    }

    /* renamed from: c */
    public final boolean m35870c(RxGestureContext gestureContext) {
        boolean z = !this.filterSingleTouch || gestureContext.isSinglePointTouch();
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(GestureFilter.class, "filter by single touch");
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m35871d(RxGestureContext gestureContext) {
        if (!this.filterTouchUpEvent) {
            return true;
        }
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent == null) {
            RxGestureLog.INSTANCE.m35974v(m35880m(), "filter by not has current motion");
            return false;
        }
        if (curMotionEvent.getActionMasked() != 1) {
            return true;
        }
        RxGestureLog.INSTANCE.m35974v(m35880m(), "filter by up");
        return false;
    }

    /* renamed from: e */
    public final boolean m35872e(RxGestureContext gestureContext) {
        return (this.filterTouchUpPoint && gestureContext.getUpPoint() == null) ? false : true;
    }

    /* renamed from: f */
    public final boolean m35873f(RxGestureContext gestureContext) {
        boolean z = !this.filterByUpToDownDistance || gestureContext.getMaxMoveDistance() < ((float) gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleTapDistanceThreshold());
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(m35880m(), "filter by up to down distance");
        }
        return z;
    }

    /* renamed from: g */
    public final boolean m35874g(RxGestureContext gestureContext) {
        if (!this.filterByUpToDownTime) {
            return true;
        }
        long upToDownTime = gestureContext.upToDownTime();
        boolean z = upToDownTime > gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleTapTimeMsMin() && upToDownTime < gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleTapTimeMsMax();
        if (!z) {
            RxGestureLog.INSTANCE.m35974v(m35880m(), "filter by up to down time:" + upToDownTime);
        }
        return z;
    }

    @Nullable
    public final Class<?> getClazz() {
        return this.clazz;
    }

    public final boolean getFilterByCancel() {
        return this.filterByCancel;
    }

    @NotNull
    public final Function1<MotionEvent, Unit> getFilterByCancelCallback() {
        return this.filterByCancelCallback;
    }

    public final boolean getFilterByUpToDownDistance() {
        return this.filterByUpToDownDistance;
    }

    public final boolean getFilterByUpToDownTime() {
        return this.filterByUpToDownTime;
    }

    public final boolean getFilterDoubleTap() {
        return this.filterDoubleTap;
    }

    public final boolean getFilterFling() {
        return this.filterFling;
    }

    public final boolean getFilterLongPress() {
        return this.filterLongPress;
    }

    public final boolean getFilterMove() {
        return this.filterMove;
    }

    public final boolean getFilterScale() {
        return this.filterScale;
    }

    public final boolean getFilterSingleTap() {
        return this.filterSingleTap;
    }

    public final boolean getFilterSingleTouch() {
        return this.filterSingleTouch;
    }

    public final boolean getFilterTouchUpEvent() {
        return this.filterTouchUpEvent;
    }

    public final boolean getFilterTouchUpPoint() {
        return this.filterTouchUpPoint;
    }

    /* renamed from: h */
    public final boolean m35875h(RxGestureContext gestureContext) {
        return (this.filterDoubleTap && gestureContext.getIsDoubleTap()) ? false : true;
    }

    /* renamed from: i */
    public final boolean m35876i(RxGestureContext gestureContext) {
        return (this.filterFling && gestureContext.getIsFling()) ? false : true;
    }

    /* renamed from: j */
    public final boolean m35877j(RxGestureContext gestureContext) {
        return (this.filterLongPress && gestureContext.getIsLongPress()) ? false : true;
    }

    /* renamed from: k */
    public final boolean m35878k(RxGestureContext gestureContext) {
        return (this.filterMove && gestureContext.hasMoved()) ? false : true;
    }

    /* renamed from: l */
    public final boolean m35879l(RxGestureContext gestureContext) {
        return (this.filterSingleTap && gestureContext.getIsSingleTap()) ? false : true;
    }

    /* renamed from: m */
    public final Class<?> m35880m() {
        Class<?> cls = this.clazz;
        return cls == null ? GestureFilter.class : cls;
    }

    public final void setClazz(@Nullable Class<?> cls) {
        this.clazz = cls;
    }

    public final void setFilterByCancel(boolean z) {
        this.filterByCancel = z;
    }

    public final void setFilterByCancelCallback(@NotNull Function1<? super MotionEvent, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.filterByCancelCallback = function1;
    }

    public final void setFilterByUpToDownDistance(boolean z) {
        this.filterByUpToDownDistance = z;
    }

    public final void setFilterByUpToDownTime(boolean z) {
        this.filterByUpToDownTime = z;
    }

    public final void setFilterDoubleTap(boolean z) {
        this.filterDoubleTap = z;
    }

    public final void setFilterFling(boolean z) {
        this.filterFling = z;
    }

    public final void setFilterLongPress(boolean z) {
        this.filterLongPress = z;
    }

    public final void setFilterMove(boolean z) {
        this.filterMove = z;
    }

    public final void setFilterScale(boolean z) {
        this.filterScale = z;
    }

    public final void setFilterSingleTap(boolean z) {
        this.filterSingleTap = z;
    }

    public final void setFilterSingleTouch(boolean z) {
        this.filterSingleTouch = z;
    }

    public final void setFilterTouchUpEvent(boolean z) {
        this.filterTouchUpEvent = z;
    }

    public final void setFilterTouchUpPoint(boolean z) {
        this.filterTouchUpPoint = z;
    }
}
