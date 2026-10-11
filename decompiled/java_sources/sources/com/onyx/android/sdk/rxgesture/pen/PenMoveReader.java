package com.onyx.android.sdk.rxgesture.pen;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.rxgesture.pen.PenMoveReader;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 42\u00020\u00012\u00020\u0002:\u00014B\u000f\u0012\u0006\u00101\u001a\u000200¢\u0006\u0004\b2\u00103J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J$\u0010\u0014\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0016H\u0002J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0016H\u0002J\b\u0010\u001c\u001a\u00020\u0016H\u0016J\b\u0010\u001d\u001a\u00020\u0016H\u0016J\u0006\u0010\u001e\u001a\u00020\u0000J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0010\u0010\"\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001fH\u0016J\b\u0010$\u001a\u00020\u0016H\u0016J\b\u0010%\u001a\u00020\fH\u0016R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010.¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;", "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "b", "point", "j", C4921e.f26537n, "m", "l", "curPoint", "", "e", "d", "i", C6997f.f39671c, "lastPoint", "", "limitTime", C6998g.f39679a, "touchPoint", "", "p", GoogleApiAvailabilityLight.f29016b, "r", "q", C4921e.f26528e, "onActivate", "onDeactivate", "subscribe", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "data", "onDown", "onMove", "onUp", "dispose", "isDisposed", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "emitter", "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "pausePoint", Constants.HASIDCALL_INDEX_SIG, "longPressed", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "penGesture", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V", "Companion", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenMoveReader extends PenReader implements Disposable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ObservableEmitter<TouchPoint> emitter;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public TouchPoint pausePoint;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean longPressed;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;", "", "()V", "isMoving", "", "lastPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "currentPoint", "limitDistance", "", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ boolean isMoving$default(Companion companion, TouchPoint touchPoint, TouchPoint touchPoint2, int i, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                i = 2;
            }
            return companion.isMoving(touchPoint, touchPoint2, i);
        }

        public final boolean isMoving(@NotNull TouchPoint lastPoint, @NotNull TouchPoint currentPoint, int limitDistance) {
            Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
            Intrinsics.checkNotNullParameter(currentPoint, "currentPoint");
            float f = limitDistance;
            return Math.abs(currentPoint.getX() - TouchPointKt.obtainX(lastPoint)) > f || Math.abs(currentPoint.getY() - TouchPointKt.obtainY(lastPoint)) > f;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.rxgesture.pen.PenMoveReader$c */
    /* loaded from: classes8.dex */
    public static final class C7988c<T> implements Predicate {
        public C7988c() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TouchPoint it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PenMoveReader.this.pausePoint == null;
        }
    }

    /* renamed from: com.onyx.android.sdk.rxgesture.pen.PenMoveReader$e */
    /* loaded from: classes8.dex */
    public static final class C7990e<T> implements Predicate {
        public C7990e() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TouchPoint it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PenMoveReader penMoveReader = PenMoveReader.this;
            return penMoveReader.m36033g(penMoveReader.getPenGesture().getDownPoint(), it2, 500L);
        }
    }

    /* renamed from: com.onyx.android.sdk.rxgesture.pen.PenMoveReader$f */
    /* loaded from: classes8.dex */
    public static final class C7991f<T> implements Consumer {
        public C7991f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchPoint it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PenMoveReader.this.m36040o();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenMoveReader(@NotNull RxPenGesture penGesture) {
        super(penGesture);
        Intrinsics.checkNotNullParameter(penGesture, "penGesture");
    }

    /* renamed from: c */
    public static final void m36027c(PenMoveReader this$0, ObservableEmitter e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "e");
        this$0.emitter = e;
    }

    /* renamed from: h */
    public static /* synthetic */ boolean m36028h(PenMoveReader penMoveReader, TouchPoint touchPoint, TouchPoint touchPoint2, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = 400;
        }
        return penMoveReader.m36033g(touchPoint, touchPoint2, j);
    }

    /* renamed from: b */
    public final Observable<TouchPoint> m36029b() {
        Observable<TouchPoint> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.a2l
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                PenMoveReader.m36027c(PenMoveReader.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    /* renamed from: d */
    public final boolean m36030d(TouchPoint curPoint) {
        TouchPoint touchPoint = this.pausePoint;
        if (touchPoint == null) {
            this.pausePoint = curPoint;
            return false;
        }
        Companion companion = INSTANCE;
        Intrinsics.checkNotNull(touchPoint);
        if (!Companion.isMoving$default(companion, touchPoint, curPoint, 0, 4, null)) {
            return true;
        }
        this.pausePoint = curPoint;
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
    public final boolean m36031e(TouchPoint curPoint) {
        TouchPoint touchPoint = this.pausePoint;
        if (touchPoint == null) {
            this.pausePoint = curPoint;
            return false;
        }
        Companion companion = INSTANCE;
        Intrinsics.checkNotNull(touchPoint);
        if (Companion.isMoving$default(companion, touchPoint, curPoint, 0, 4, null)) {
            this.pausePoint = curPoint;
            return true;
        }
        this.pausePoint = curPoint;
        return false;
    }

    /* renamed from: f */
    public final boolean m36032f(TouchPoint curPoint) {
        return m36028h(this, this.pausePoint, curPoint, 0L, 4, null);
    }

    /* renamed from: g */
    public final boolean m36033g(TouchPoint lastPoint, TouchPoint curPoint, long limitTime) {
        return lastPoint != null && curPoint.getTimestamp() - lastPoint.getTimestamp() > limitTime;
    }

    /* renamed from: i */
    public final boolean m36034i(TouchPoint curPoint) {
        if (!INSTANCE.isMoving(getPenGesture().getDownPoint(), curPoint, RxPenGesture.INSTANCE.getLONG_PRESS_LIMIT_DISTANCE())) {
            return true;
        }
        this.pausePoint = curPoint;
        return false;
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
    public final Observable<TouchPoint> m36035j(TouchPoint point) {
        if (!isLongPressure()) {
            return isHolding() ? m36036k(point) : (this.pausePoint != null || this.longPressed) ? m36038m(point) : m36037l(point);
        }
        Observable<TouchPoint> just = Observable.just(point);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: k */
    public final Observable<TouchPoint> m36036k(TouchPoint point) {
        Observable<TouchPoint> map = Observable.just(point).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.pen.PenMoveReader.a
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull TouchPoint p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return PenMoveReader.this.m36031e(p0);
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.rxgesture.pen.PenMoveReader.b
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final TouchPoint apply(@NotNull TouchPoint p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return PenMoveReader.this.m36042q(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<TouchPoint> m36037l(TouchPoint point) {
        Observable<TouchPoint> doOnNext = Observable.just(point).filter(new C7988c()).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.pen.PenMoveReader.d
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull TouchPoint p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return PenMoveReader.this.m36034i(p0);
            }
        }).filter(new C7990e()).doOnNext(new C7991f());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<TouchPoint> m36038m(TouchPoint point) {
        Observable<TouchPoint> map = Observable.just(point).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.pen.PenMoveReader.g
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull TouchPoint p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return PenMoveReader.this.m36030d(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.pen.PenMoveReader.h
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull TouchPoint p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return PenMoveReader.this.m36032f(p0);
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.rxgesture.pen.PenMoveReader.i
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final TouchPoint apply(@NotNull TouchPoint p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return PenMoveReader.this.m36039n(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final TouchPoint m36039n(TouchPoint touchPoint) {
        if (isUp()) {
            return touchPoint;
        }
        Debug.INSTANCE.m32035d(PenMoveReader.class, "pen onHold", new Object[0]);
        m36043r();
        getPenGesture().postEvent();
        return touchPoint;
    }

    /* renamed from: o */
    public final void m36040o() {
        Debug.INSTANCE.m32035d(PenMoveReader.class, "pen onLongPress", new Object[0]);
        getPenGesture().setActiveReader(4);
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onActivate() {
        super.onActivate();
        subscribe();
        this.longPressed = isLongPressure();
        getPenGesture().getPenStatusBean().setPenStatus(PenStatus.MOVING);
        getPenGesture().postEvent();
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onDeactivate() {
        super.onDeactivate();
        dispose();
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onDown(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        getPenGesture().setDownPoint(data.getTouchPoint().copy());
        getPenGesture().setActiveReader(1);
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onMove(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (!getPenGesture().isInLimitRect((int) data.getTouchPoint().getX(), (int) data.getTouchPoint().getY())) {
            onUp(data);
            return;
        }
        TouchPoint touchPoint = new TouchPoint(data.getTouchPoint().getX(), data.getTouchPoint().getY());
        touchPoint.setTimestamp(data.getTouchPoint().getTimestamp());
        m36041p(touchPoint);
    }

    @Override // com.onyx.android.sdk.rxgesture.pen.PenReader
    public void onUp(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Debug.INSTANCE.m32035d(PenMoveReader.class, "pen onUp", new Object[0]);
        getPenGesture().setActiveReader(3);
    }

    /* renamed from: p */
    public final void m36041p(TouchPoint touchPoint) {
        ObservableEmitter<TouchPoint> observableEmitter = this.emitter;
        if (observableEmitter != null) {
            observableEmitter.onNext(touchPoint);
        }
    }

    /* renamed from: q */
    public final TouchPoint m36042q(TouchPoint touchPoint) {
        Debug.INSTANCE.m32035d(PenMoveReader.class, "pen onReleaseHold", new Object[0]);
        penStatusBean().setPenStatus(PenStatus.MOVING);
        getPenGesture().postEvent();
        return touchPoint;
    }

    /* renamed from: r */
    public final void m36043r() {
        Debug.INSTANCE.m32035d(PenMoveReader.class, "pen onHold", new Object[0]);
        penStatusBean().holdCountIncrease();
        getPenGesture().postEvent(PenStatus.HOLDING);
    }

    @NotNull
    public final PenMoveReader subscribe() {
        this.pausePoint = null;
        this.disposable = m36029b().flatMap(new Function() { // from class: com.onyx.android.sdk.rxgesture.pen.PenMoveReader.j
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<TouchPoint> apply(@NotNull TouchPoint p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return PenMoveReader.this.m36035j(p0);
            }
        }).subscribe();
        return this;
    }
}
