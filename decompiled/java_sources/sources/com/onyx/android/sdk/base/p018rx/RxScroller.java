package com.onyx.android.sdk.base.p018rx;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FlingAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RangeKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.p018rx.RxScroller;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0007J\b\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R)\u0010\u001d\u001a\u0015\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u00050\u00050\u0018¢\u0006\u0002\b\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxScroller;", "", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "args", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;", "fling", "", "stop", "l", "e", C6999h.f39688c, "", NotificationCompat.CATEGORY_MESSAGE, C4921e.f26537n, "Landroidx/dynamicanimation/animation/FlingAnimation;", "a", "Landroidx/dynamicanimation/animation/FlingAnimation;", "animatorX", "b", "animatorY", "c", "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;", "scrollerInfo", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "d", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "publishSubject", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RxScroller {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    public static boolean f40800e;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public FlingAnimation animatorX;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public FlingAnimation animatorY;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public RxScrollerInfo scrollerInfo = new RxScrollerInfo();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public PublishSubject<RxScrollerInfo> publishSubject;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxScroller$Companion;", "", "()V", "DEBUG_LOG", "", "getDEBUG_LOG", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setDEBUG_LOG", "(Z)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getDEBUG_LOG() {
            return RxScroller.f40800e;
        }

        public final void setDEBUG_LOG(boolean z) {
            RxScroller.f40800e = z;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.base.rx.RxScroller$a */
    /* loaded from: classes7.dex */
    public static final class C7136a<T> implements Consumer {
        public C7136a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(RxScrollerInfo rxScrollerInfo) {
            RxScroller.this.m32000k("fling, value: x = " + rxScrollerInfo.getNewX() + ", y = " + rxScrollerInfo.getNewY());
        }
    }

    public RxScroller() {
        PublishSubject<RxScrollerInfo> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publishSubject = create;
    }

    /* renamed from: f */
    public static final void m31994f(RxScroller this$0, DynamicAnimation dynamicAnimation, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m32000k("x, update value " + f + "  vel: " + f2 + " running: " + dynamicAnimation.isRunning());
        this$0.scrollerInfo.setNewX(f);
        this$0.m32001l();
    }

    /* renamed from: g */
    public static final void m31995g(RxScroller this$0, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m32000k("x, end value " + f + "  vel: " + f2 + " finished, canceled: " + z);
        this$0.scrollerInfo.setNewX(f);
        this$0.scrollerInfo.setXFinished(true);
        this$0.m32001l();
    }

    /* renamed from: i */
    public static final void m31996i(RxScroller this$0, DynamicAnimation dynamicAnimation, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m32000k("y, update value " + f + "  vel: " + f2 + " running: " + dynamicAnimation.isRunning());
        this$0.scrollerInfo.setNewY(f);
        this$0.m32001l();
    }

    /* renamed from: j */
    public static final void m31997j(RxScroller this$0, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m32000k("y, end value " + f + "  vel: " + f2 + " finished, canceled: " + z);
        this$0.scrollerInfo.setNewY(f);
        this$0.scrollerInfo.setYFinished(true);
        this$0.m32001l();
    }

    /* renamed from: e */
    public final void m31998e(RxScrollerArgs args) {
        float velocityX = args.getVelocityX();
        Range<Float> rangeX = RectKt.toRangeX(args.getLimitRect());
        Intrinsics.checkNotNull(rangeX);
        Float f = (Float) RangeKt.clamp(rangeX, Float.valueOf(args.getStartX()));
        Intrinsics.checkNotNull(f);
        FlingAnimation flingAnimation = new FlingAnimation(new FloatValueHolder(f.floatValue()));
        flingAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.sunia.HTREnginev2.swl
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                RxScroller.m31994f(RxScroller.this, dynamicAnimation, f2, f3);
            }
        });
        flingAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.sunia.HTREnginev2.twl
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f2, float f3) {
                RxScroller.m31995g(RxScroller.this, dynamicAnimation, z, f2, f3);
            }
        });
        flingAnimation.setStartVelocity(velocityX);
        Float minimum = rangeX.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        flingAnimation.setMinValue(minimum.floatValue());
        Float maximum = rangeX.getMaximum();
        Intrinsics.checkNotNullExpressionValue(maximum, "getMaximum(...)");
        flingAnimation.setMaxValue(maximum.floatValue());
        flingAnimation.setFriction(args.getFrictionX());
        flingAnimation.start();
        this.animatorX = flingAnimation;
    }

    @NotNull
    public final Observable<RxScrollerInfo> fling(@NotNull RxScrollerArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        RxScrollerInfo rxScrollerInfo = new RxScrollerInfo();
        this.scrollerInfo = rxScrollerInfo;
        rxScrollerInfo.setNewX(args.getStartX());
        this.scrollerInfo.setNewY(args.getStartY());
        m31998e(args);
        m31999h(args);
        PublishSubject<RxScrollerInfo> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publishSubject = create;
        Observable<RxScrollerInfo> doOnNext = create.doOnNext(new C7136a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: h */
    public final void m31999h(RxScrollerArgs args) {
        float velocityY = args.getVelocityY();
        Range<Float> rangeY = RectKt.toRangeY(args.getLimitRect());
        Intrinsics.checkNotNull(rangeY);
        Float f = (Float) RangeKt.clamp(rangeY, Float.valueOf(args.getStartY()));
        Intrinsics.checkNotNull(f);
        FlingAnimation flingAnimation = new FlingAnimation(new FloatValueHolder(f.floatValue()));
        flingAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.sunia.HTREnginev2.uwl
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                RxScroller.m31996i(RxScroller.this, dynamicAnimation, f2, f3);
            }
        });
        flingAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.sunia.HTREnginev2.vwl
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f2, float f3) {
                RxScroller.m31997j(RxScroller.this, dynamicAnimation, z, f2, f3);
            }
        });
        flingAnimation.setStartVelocity(velocityY);
        Float minimum = rangeY.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        flingAnimation.setMinValue(minimum.floatValue());
        Float maximum = rangeY.getMaximum();
        Intrinsics.checkNotNullExpressionValue(maximum, "getMaximum(...)");
        flingAnimation.setMaxValue(maximum.floatValue());
        flingAnimation.setFriction(args.getFrictionY());
        flingAnimation.start();
        this.animatorY = flingAnimation;
    }

    /* renamed from: k */
    public final void m32000k(String msg) {
        if (f40800e) {
            Log.d(AnyKt.toSimpleNameString(this), msg);
        }
    }

    /* renamed from: l */
    public final void m32001l() {
        this.publishSubject.onNext(this.scrollerInfo);
        if (this.scrollerInfo.isFinished()) {
            this.publishSubject.onComplete();
        }
    }

    public final void stop() {
        FlingAnimation flingAnimation = this.animatorX;
        if (flingAnimation != null) {
            flingAnimation.cancel();
        }
        this.animatorX = null;
        FlingAnimation flingAnimation2 = this.animatorY;
        if (flingAnimation2 != null) {
            flingAnimation2.cancel();
        }
        this.animatorY = null;
    }
}
