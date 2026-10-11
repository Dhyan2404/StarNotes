package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.IDevice;
import com.onyx.android.sdk.rxgesture.RxGesture;
import com.onyx.android.sdk.rxgesture.palm.PalmGestureDetector;
import com.onyx.android.sdk.rxgesture.palm.PalmType;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.disposables.Disposable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\b\u0010\"\u001a\u00020\u0004H\u0002J\b\u0010#\u001a\u00020\u0004H\u0002J\b\u0010$\u001a\u00020\u0004H\u0002J\b\u0010%\u001a\u00020\u001bH\u0002J\u0016\u0010'\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020&J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u001bJ\u000e\u0010*\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010,\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020+2\u0006\u0010\u0012\u001a\u00020\u0011J\b\u0010-\u001a\u00020\u0004H\u0016J\b\u0010.\u001a\u00020\u001bH\u0016J\u0006\u0010/\u001a\u00020\u0004J\u0006\u00100\u001a\u00020\u0004J\u0016\u00101\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020+2\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u00102\u001a\u00020\u001bR\u0017\u00106\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b%\u00103\u001a\u0004\b4\u00105R*\u0010=\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u0001078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010C\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010J\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR$\u0010Q\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR$\u0010X\u001a\u0004\u0018\u00010R8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR$\u0010_\u001a\u0004\u0018\u00010Y8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R$\u0010f\u001a\u0004\u0018\u00010`8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR$\u0010m\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010h\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR$\u0010t\u001a\u0004\u0018\u00010n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010o\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR$\u0010{\u001a\u0004\u0018\u00010u8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010v\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR'\u0010\u0082\u0001\u001a\u0004\u0018\u00010|8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\f\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R*\u0010\u0088\u0001\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u001d\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R*\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0018\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001\"\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0017\u0010\u0091\u0001\u001a\u00030\u008f\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u001a\u0010\u0090\u0001R\u001b\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\"\u0010\u0093\u0001¨\u0006\u0097\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxGesture;", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;", AbstractLogger.CONFIG, "", C6999h.f39688c, GoogleApiAvailabilityLight.f29016b, "i", C4921e.f26528e, C4921e.f26537n, "j", "l", "p", "m", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "b", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "A", C6997f.f39671c, "d", "", "action", "r", "w", "s", "", C6998g.f39679a, "q", "motionEvent", "y", "z", "x", "t", "u", "v", "e", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "subscribe", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "setPenActive", "dispatchTouchEvent", "Landroid/view/View;", "onTouchEvent", "dispose", "isDisposed", "onPause", "onResume", "onHover", "isCancelled", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "getGestureContext", "()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "getEmitter", "()Lio/reactivex/rxjava3/core/ObservableEmitter;", "setEmitter", "(Lio/reactivex/rxjava3/core/ObservableEmitter;)V", "emitter", "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;", "getGestureConfig", "()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;", "setGestureConfig", "(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V", "gestureConfig", "Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;", "Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;", "getMoveGesture", "()Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;", "setMoveGesture", "(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V", "moveGesture", "Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;", "Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;", "getMoveTwoFingerGesture", "()Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;", "setMoveTwoFingerGesture", "(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V", "moveTwoFingerGesture", "Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;", "Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;", "getClickMultiFingerGesture", "()Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;", "setClickMultiFingerGesture", "(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V", "clickMultiFingerGesture", "Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;", "Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;", "getFlingGesture", "()Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;", "setFlingGesture", "(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V", "flingGesture", "Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;", "Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;", "getLongPressGesture", "()Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;", "setLongPressGesture", "(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;)V", "longPressGesture", "Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;", "Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;", "getScaleGesture", "()Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;", "setScaleGesture", "(Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;)V", "scaleGesture", "Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;", "Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;", "getCommonGesture", "()Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;", "setCommonGesture", "(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V", "commonGesture", "Lcom/onyx/android/sdk/rxgesture/RxNoGesture;", "Lcom/onyx/android/sdk/rxgesture/RxNoGesture;", "getNoGesture", "()Lcom/onyx/android/sdk/rxgesture/RxNoGesture;", "setNoGesture", "(Lcom/onyx/android/sdk/rxgesture/RxNoGesture;)V", "noGesture", "Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;", "Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;", "getScaleGestureDetector", "()Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;", "setScaleGestureDetector", "(Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;)V", "scaleGestureDetector", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "getListener", "()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "setListener", "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lio/reactivex/rxjava3/disposables/Disposable;", "getDisposable", "()Lio/reactivex/rxjava3/disposables/Disposable;", "setDisposable", "(Lio/reactivex/rxjava3/disposables/Disposable;)V", "disposable", "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;", "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;", "palmGestureDetector", "Lcom/onyx/android/sdk/device/IDevice;", "Lcom/onyx/android/sdk/device/IDevice;", "deviceGestureFilter", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRxGesture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxGesture.kt\ncom/onyx/android/sdk/rxgesture/RxGesture\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"})
/* loaded from: classes8.dex */
public final class RxGesture implements Disposable {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ObservableEmitter<RxGestureContext> emitter;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public RxMoveGesture moveGesture;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public RxMoveTwoFingerGesture moveTwoFingerGesture;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public RxBaseClickMultiFingerGesture clickMultiFingerGesture;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public RxFlingGesture flingGesture;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public RxLongPressGesture longPressGesture;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public RxScaleGesture scaleGesture;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public RxCommonGesture commonGesture;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public RxNoGesture noGesture;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public RxScaleGestureDetector scaleGestureDetector;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public RxGestureListener listener;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public IDevice deviceGestureFilter;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final RxGestureContext gestureContext = new RxGestureContext();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public RxGestureConfig gestureConfig = new RxGestureConfig();

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final PalmGestureDetector palmGestureDetector = PalmGestureDetector.INSTANCE.getInstance();

    /* renamed from: c */
    public static final void m35941c(RxGesture this$0, ObservableEmitter e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "e");
        this$0.emitter = e;
    }

    /* renamed from: A */
    public final void m35942A(MotionEvent event) {
        RxGestureLog rxGestureLog = RxGestureLog.INSTANCE;
        if (rxGestureLog.isDebugLog()) {
            rxGestureLog.m35974v(RxGesture.class, "event = " + event);
        }
    }

    /* renamed from: b */
    public final Observable<RxGestureContext> m35943b() {
        Observable<RxGestureContext> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.bwl
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                RxGesture.m35941c(RxGesture.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    /* renamed from: d */
    public final void m35944d(MotionEvent event) {
        RxScaleGestureDetector rxScaleGestureDetector = this.scaleGestureDetector;
        if (rxScaleGestureDetector == null || !this.gestureConfig.getIsEnableScaleGesture()) {
            return;
        }
        rxScaleGestureDetector.onTouchEvent(event);
    }

    public final void dispatchTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.gestureConfig.getIsEnabledMultiTouch()) {
            IDevice iDevice = this.deviceGestureFilter;
            if (iDevice != null && iDevice.filterByDispatchTouchEvent(event)) {
                IDevice iDevice2 = this.deviceGestureFilter;
                if (iDevice2 != null && iDevice2.filterByDispatchPointerDown(event)) {
                    this.gestureContext.updatePointerDownPoint(event);
                }
                RxBaseClickMultiFingerGesture rxBaseClickMultiFingerGesture = this.clickMultiFingerGesture;
                if (rxBaseClickMultiFingerGesture != null) {
                    rxBaseClickMultiFingerGesture.onNext(this.gestureContext);
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
        RxMoveGesture rxMoveGesture = this.moveGesture;
        if (rxMoveGesture != null) {
            rxMoveGesture.dispose();
        }
        RxMoveTwoFingerGesture rxMoveTwoFingerGesture = this.moveTwoFingerGesture;
        if (rxMoveTwoFingerGesture != null) {
            rxMoveTwoFingerGesture.dispose();
        }
        RxFlingGesture rxFlingGesture = this.flingGesture;
        if (rxFlingGesture != null) {
            rxFlingGesture.dispose();
        }
        RxLongPressGesture rxLongPressGesture = this.longPressGesture;
        if (rxLongPressGesture != null) {
            rxLongPressGesture.dispose();
        }
        RxCommonGesture rxCommonGesture = this.commonGesture;
        if (rxCommonGesture != null) {
            rxCommonGesture.dispose();
        }
        RxBaseClickMultiFingerGesture rxBaseClickMultiFingerGesture = this.clickMultiFingerGesture;
        if (rxBaseClickMultiFingerGesture != null) {
            rxBaseClickMultiFingerGesture.dispose();
        }
        RxNoGesture rxNoGesture = this.noGesture;
        if (rxNoGesture != null) {
            rxNoGesture.dispose();
        }
    }

    /* renamed from: e */
    public final boolean m35945e() {
        if (!this.gestureContext.getIsHover()) {
            return false;
        }
        RxGestureLog.INSTANCE.m35974v(RxGesture.class, "filter by hover");
        return true;
    }

    /* renamed from: f */
    public final void m35946f(MotionEvent event) {
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.gestureContext.updateDownPoint(event);
            m35959s();
            m35965y(event);
        } else if (actionMasked == 1) {
            if (this.gestureContext.isActivePoint(event)) {
                this.gestureContext.updateActiveUpPoint(event);
            }
            this.gestureContext.updateUpPoint(event);
            m35959s();
            m35966z(event);
        } else if (actionMasked == 2) {
            this.gestureContext.updateMovePoint(event);
        } else if (actionMasked == 3) {
            this.gestureContext.updateCancelPoint(event);
            m35959s();
            m35964x(event);
        } else if (actionMasked == 5) {
            this.gestureContext.updatePointerDownPoint(event);
        } else if (actionMasked != 6) {
            m35959s();
        } else {
            if (this.gestureContext.isActivePoint(event)) {
                this.gestureContext.updateActiveUpPoint(event);
            }
            this.gestureContext.updatePointerUpPoint(event);
            m35959s();
        }
        m35944d(event);
        m35963w();
    }

    /* renamed from: g */
    public final boolean m35947g(MotionEvent event) {
        return event.getPointerCount() > 2;
    }

    @Nullable
    public final RxBaseClickMultiFingerGesture getClickMultiFingerGesture() {
        return this.clickMultiFingerGesture;
    }

    @Nullable
    public final RxCommonGesture getCommonGesture() {
        return this.commonGesture;
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
    public final RxFlingGesture getFlingGesture() {
        return this.flingGesture;
    }

    @NotNull
    public final RxGestureConfig getGestureConfig() {
        return this.gestureConfig;
    }

    @NotNull
    public final RxGestureContext getGestureContext() {
        return this.gestureContext;
    }

    @Nullable
    public final RxGestureListener getListener() {
        return this.listener;
    }

    @Nullable
    public final RxLongPressGesture getLongPressGesture() {
        return this.longPressGesture;
    }

    @Nullable
    public final RxMoveGesture getMoveGesture() {
        return this.moveGesture;
    }

    @Nullable
    public final RxMoveTwoFingerGesture getMoveTwoFingerGesture() {
        return this.moveTwoFingerGesture;
    }

    @Nullable
    public final RxNoGesture getNoGesture() {
        return this.noGesture;
    }

    @Nullable
    public final RxScaleGesture getScaleGesture() {
        return this.scaleGesture;
    }

    @Nullable
    public final RxScaleGestureDetector getScaleGestureDetector() {
        return this.scaleGestureDetector;
    }

    /* renamed from: h */
    public final void m35948h(RxGestureConfig config) {
        this.gestureConfig = config;
        this.deviceGestureFilter = DeviceFactory.INSTANCE.getDevice();
        m35952l();
        m35956p();
        m35953m();
        m35950j();
        m35951k();
        m35955o();
        m35949i();
        m35954n();
        this.gestureContext.setConfig(config);
    }

    /* renamed from: i */
    public final void m35949i() {
        RxCommonGesture rxCommonGesture = new RxCommonGesture();
        rxCommonGesture.setListener(this.listener);
        this.commonGesture = rxCommonGesture.subscribe();
    }

    public final boolean isCancelled() {
        return this.gestureContext.getIsCancelled();
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
    public final void m35950j() {
        RxFlingGesture rxFlingGesture = new RxFlingGesture();
        rxFlingGesture.setListener(this.listener);
        this.flingGesture = rxFlingGesture.subscribe();
    }

    /* renamed from: k */
    public final void m35951k() {
        RxLongPressGesture rxLongPressGesture = new RxLongPressGesture();
        rxLongPressGesture.setListener(this.listener);
        this.longPressGesture = rxLongPressGesture.subscribe();
    }

    /* renamed from: l */
    public final void m35952l() {
        RxMoveGesture rxMoveGesture = new RxMoveGesture();
        rxMoveGesture.setListener(this.listener);
        this.moveGesture = rxMoveGesture.subscribe();
    }

    /* renamed from: m */
    public final void m35953m() {
        IDevice iDevice = this.deviceGestureFilter;
        Intrinsics.checkNotNull(iDevice);
        RxClickMultiFingerGesture rxClickMultiFingerGesture = new RxClickMultiFingerGesture(iDevice);
        rxClickMultiFingerGesture.setListener(this.listener);
        this.clickMultiFingerGesture = rxClickMultiFingerGesture.subscribe();
    }

    /* renamed from: n */
    public final void m35954n() {
        RxNoGesture rxNoGesture = new RxNoGesture();
        rxNoGesture.setListener(this.listener);
        this.noGesture = rxNoGesture.subscribe();
    }

    /* renamed from: o */
    public final void m35955o() {
        RxScaleGesture rxScaleGesture = new RxScaleGesture();
        rxScaleGesture.setGestureContext(this.gestureContext);
        rxScaleGesture.setListener(this.listener);
        this.scaleGestureDetector = new RxScaleGestureDetector(ResManager.INSTANCE.getAppContext(), rxScaleGesture);
        this.scaleGesture = rxScaleGesture;
    }

    public final boolean onHover(@NotNull View v, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        int actionMasked = event.getActionMasked();
        if (actionMasked == 7) {
            m35962v();
            return true;
        }
        if (actionMasked == 9) {
            m35960t();
            return true;
        }
        if (actionMasked != 10) {
            return true;
        }
        m35961u();
        return true;
    }

    public final void onPause() {
        this.gestureContext.setHover(false);
        RxGestureLog.INSTANCE.m35974v(RxGesture.class, "onPause");
    }

    public final void onResume() {
        this.gestureContext.setHover(false);
        RxGestureLog.INSTANCE.m35974v(RxGesture.class, "onResume");
    }

    public final boolean onTouchEvent(@NotNull View v, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        m35942A(event);
        if (this.gestureConfig.getIsEnableFilterOnHover() && m35945e()) {
            return false;
        }
        if (!this.gestureConfig.getIsEnabledMultiTouch() && m35957q(event)) {
            RxGestureLog.INSTANCE.m35974v(RxGesture.class, "filter multi touch by config");
            return false;
        }
        if (m35947g(event) && event.getActionMasked() != 3) {
            this.gestureContext.setMorePointer(true);
        }
        if (!this.gestureContext.isDisabledPenTouch(event)) {
            if (this.gestureConfig.getIsEnabledPalmReject()) {
                PalmType onTouchEvent = this.palmGestureDetector.onTouchEvent(v, event);
                if (onTouchEvent.isPalmPress()) {
                    this.gestureContext.onPalmPressed();
                }
                if (onTouchEvent.isBigPalmPress()) {
                    this.gestureContext.onBigPalmPressed();
                }
            }
            m35946f(event);
            return true;
        }
        RxGestureLog rxGestureLog = RxGestureLog.INSTANCE;
        if (rxGestureLog.isDebugLog()) {
            rxGestureLog.m35974v(RxGesture.class, "filter by pen touch");
        }
        int actionMasked = event.getActionMasked();
        if (!MotionEventKt.isPenTouchType(event) && (actionMasked == 0 || actionMasked == 1 || actionMasked == 6 || actionMasked == 3)) {
            m35958r(event, actionMasked);
        }
        return false;
    }

    /* renamed from: p */
    public final void m35956p() {
        RxMoveTwoFingerGesture rxMoveTwoFingerGesture = new RxMoveTwoFingerGesture();
        rxMoveTwoFingerGesture.setListener(this.listener);
        this.moveTwoFingerGesture = rxMoveTwoFingerGesture.subscribe();
    }

    /* renamed from: q */
    public final boolean m35957q(MotionEvent event) {
        return event.getPointerCount() > 1;
    }

    /* renamed from: r */
    public final void m35958r(MotionEvent event, int action) {
        if (action == 0) {
            this.gestureContext.reset();
        } else if (action == 1) {
            if (this.gestureContext.isActivePoint(event)) {
                this.gestureContext.updateUpPoint(event);
            }
            m35959s();
            m35966z(event);
        } else if (action == 3) {
            this.gestureContext.updateCancelPoint(event);
            m35959s();
            m35964x(event);
        } else if (action != 6) {
            m35959s();
        } else {
            if (this.gestureContext.isActivePoint(event)) {
                this.gestureContext.updateUpPoint(event);
            }
            m35959s();
        }
        m35944d(event);
        m35963w();
    }

    /* renamed from: s */
    public final void m35959s() {
        RxFlingGesture rxFlingGesture;
        if (!this.gestureConfig.getIsEnableFlingGesture() || (rxFlingGesture = this.flingGesture) == null) {
            return;
        }
        rxFlingGesture.onNext(this.gestureContext);
    }

    public final void setClickMultiFingerGesture(@Nullable RxBaseClickMultiFingerGesture rxBaseClickMultiFingerGesture) {
        this.clickMultiFingerGesture = rxBaseClickMultiFingerGesture;
    }

    public final void setCommonGesture(@Nullable RxCommonGesture rxCommonGesture) {
        this.commonGesture = rxCommonGesture;
    }

    public final void setDisposable(@Nullable Disposable disposable) {
        this.disposable = disposable;
    }

    public final void setEmitter(@Nullable ObservableEmitter<RxGestureContext> observableEmitter) {
        this.emitter = observableEmitter;
    }

    public final void setFlingGesture(@Nullable RxFlingGesture rxFlingGesture) {
        this.flingGesture = rxFlingGesture;
    }

    public final void setGestureConfig(@NotNull RxGestureConfig rxGestureConfig) {
        Intrinsics.checkNotNullParameter(rxGestureConfig, "<set-?>");
        this.gestureConfig = rxGestureConfig;
    }

    public final void setListener(@Nullable RxGestureListener rxGestureListener) {
        this.listener = rxGestureListener;
    }

    public final void setLongPressGesture(@Nullable RxLongPressGesture rxLongPressGesture) {
        this.longPressGesture = rxLongPressGesture;
    }

    public final void setMoveGesture(@Nullable RxMoveGesture rxMoveGesture) {
        this.moveGesture = rxMoveGesture;
    }

    public final void setMoveTwoFingerGesture(@Nullable RxMoveTwoFingerGesture rxMoveTwoFingerGesture) {
        this.moveTwoFingerGesture = rxMoveTwoFingerGesture;
    }

    public final void setNoGesture(@Nullable RxNoGesture rxNoGesture) {
        this.noGesture = rxNoGesture;
    }

    @NotNull
    public final RxGesture setPenActive(boolean active) {
        this.gestureContext.setPenActive(active);
        return this;
    }

    public final void setScaleGesture(@Nullable RxScaleGesture rxScaleGesture) {
        this.scaleGesture = rxScaleGesture;
    }

    public final void setScaleGestureDetector(@Nullable RxScaleGestureDetector rxScaleGestureDetector) {
        this.scaleGestureDetector = rxScaleGestureDetector;
    }

    public final void subscribe(@NotNull RxGestureConfig config, @NotNull RxGestureListener l) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(l, "l");
        this.listener = new CatchThrowableRxGestureListener(l);
        m35948h(config);
        this.disposable = m35943b().subscribe();
    }

    /* renamed from: t */
    public final void m35960t() {
        this.gestureContext.setHover(true);
        RxGestureLog.INSTANCE.m35974v(RxGesture.class, "onHover: ENTER");
    }

    /* renamed from: u */
    public final void m35961u() {
        this.gestureContext.setHover(false);
        RxGestureLog.INSTANCE.m35974v(RxGesture.class, "onHover: EXIT");
    }

    /* renamed from: v */
    public final void m35962v() {
        boolean isHover = this.gestureContext.getIsHover();
        this.gestureContext.setHover(true);
        if (isHover) {
            return;
        }
        RxGestureLog.INSTANCE.m35974v(RxGesture.class, "onHover: MOVE ENTER");
    }

    /* renamed from: w */
    public final void m35963w() {
        RxNoGesture rxNoGesture;
        RxCommonGesture rxCommonGesture;
        RxLongPressGesture rxLongPressGesture;
        RxMoveTwoFingerGesture rxMoveTwoFingerGesture;
        RxBaseClickMultiFingerGesture rxBaseClickMultiFingerGesture;
        RxMoveGesture rxMoveGesture;
        ObservableEmitter<RxGestureContext> observableEmitter = this.emitter;
        if (observableEmitter != null) {
            observableEmitter.onNext(this.gestureContext);
        }
        if (this.gestureConfig.getIsEnableMoveGesture() && (rxMoveGesture = this.moveGesture) != null) {
            rxMoveGesture.onNext(this.gestureContext);
        }
        if (this.gestureConfig.getIsEnableMultiClick() && (rxBaseClickMultiFingerGesture = this.clickMultiFingerGesture) != null) {
            rxBaseClickMultiFingerGesture.onNext(this.gestureContext);
        }
        if (this.gestureConfig.getIsEnableTwoMoveGesture() && (rxMoveTwoFingerGesture = this.moveTwoFingerGesture) != null) {
            rxMoveTwoFingerGesture.onNext(this.gestureContext);
        }
        if (this.gestureConfig.getIsEnableLongPressGesture() && (rxLongPressGesture = this.longPressGesture) != null) {
            rxLongPressGesture.onNext(this.gestureContext);
        }
        if (this.gestureConfig.getIsEnableCommonGesture() && (rxCommonGesture = this.commonGesture) != null) {
            rxCommonGesture.onNext(this.gestureContext);
        }
        if (!this.gestureConfig.getIsEnableNoGesture() || (rxNoGesture = this.noGesture) == null) {
            return;
        }
        rxNoGesture.onNext(this.gestureContext);
    }

    /* renamed from: x */
    public final void m35964x(MotionEvent motionEvent) {
        RxGestureLog.INSTANCE.m35971d(RxGesture.class, "onTouchCancel");
        RxGestureListener rxGestureListener = this.listener;
        if (rxGestureListener != null) {
            rxGestureListener.onTouchCancel(this.gestureContext, motionEvent);
        }
    }

    /* renamed from: y */
    public final void m35965y(MotionEvent motionEvent) {
        RxGestureLog.INSTANCE.m35971d(RxGesture.class, "onTouchDown");
        RxGestureListener rxGestureListener = this.listener;
        if (rxGestureListener != null) {
            rxGestureListener.onTouchDown(this.gestureContext, motionEvent);
        }
    }

    /* renamed from: z */
    public final void m35966z(MotionEvent motionEvent) {
        RxGestureLog.INSTANCE.m35971d(RxGesture.class, "onTouchUp");
        RxGestureListener rxGestureListener = this.listener;
        if (rxGestureListener != null) {
            rxGestureListener.onTouchUp(this.gestureContext, motionEvent);
        }
    }
}
