package com.onyx.android.sdk.rxgesture;

import android.view.ScaleGestureDetector;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0007H\u0002R\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0019\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;", "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;", "Landroid/view/ScaleGestureDetector;", "detector", "", "onScale", "onScaleBegin", "", "onScaleEnd", "a", "b", "c", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "getGestureContext", "()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "setGestureContext", "(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "getListener", "()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "setListener", "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "F", "lastScaleFactor", "", "J", "lastScaleTime", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxScaleGesture implements ScaleGestureDetector.OnScaleGestureListener {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public RxGestureListener listener;

    /* renamed from: b, reason: from kotlin metadata */
    public float lastScaleFactor;

    /* renamed from: c, reason: from kotlin metadata */
    public long lastScaleTime;
    public RxGestureContext gestureContext;

    public RxScaleGesture() {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.lastScaleFactor = FLOAT_ONE.floatValue();
        this.lastScaleTime = System.currentTimeMillis();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
    
        if ((r7 == 0.0f) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        if ((r1 == 0.0f) == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0047, code lost:
    
        return false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m36010a() {
        /*
            r7 = this;
            com.onyx.android.sdk.rxgesture.RxGestureContext r0 = r7.getGestureContext()
            float r0 = r0.moveToDownSpanX()
            com.onyx.android.sdk.rxgesture.RxGestureContext r1 = r7.getGestureContext()
            float r1 = r1.pointerMoveToDownSpanX()
            com.onyx.android.sdk.rxgesture.RxGestureContext r2 = r7.getGestureContext()
            float r2 = r2.moveToDownSpanY()
            com.onyx.android.sdk.rxgesture.RxGestureContext r7 = r7.getGestureContext()
            float r7 = r7.pointerMoveToDownSpanY()
            r3 = 0
            int r4 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            r5 = 1
            r6 = 0
            if (r4 != 0) goto L29
            r4 = r5
            goto L2a
        L29:
            r4 = r6
        L2a:
            if (r4 == 0) goto L35
            int r4 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r4 != 0) goto L32
            r4 = r5
            goto L33
        L32:
            r4 = r6
        L33:
            if (r4 != 0) goto L47
        L35:
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 != 0) goto L3b
            r4 = r5
            goto L3c
        L3b:
            r4 = r6
        L3c:
            if (r4 == 0) goto L48
            int r4 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r4 != 0) goto L44
            r4 = r5
            goto L45
        L44:
            r4 = r6
        L45:
            if (r4 == 0) goto L48
        L47:
            return r6
        L48:
            float r0 = r0 * r1
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 > 0) goto L54
            float r7 = r7 * r2
            int r7 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r7 <= 0) goto L53
            goto L54
        L53:
            return r5
        L54:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.rxgesture.RxScaleGesture.m36010a():boolean");
    }

    /* renamed from: b */
    public final boolean m36011b(ScaleGestureDetector detector) {
        float abs = Math.abs(detector.getScaleFactor() - this.lastScaleFactor);
        if (Float.compare(abs, getGestureContext().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getScaleFactorIntervalThreshold()) <= 0) {
            RxGestureLog.INSTANCE.m35974v(RxScaleGesture.class, "filter scale by scale factor small :" + abs);
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.lastScaleTime;
        if (currentTimeMillis >= getGestureContext().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getScaleIntervalTimeMs()) {
            return getGestureContext().getIsBigPalmPressed();
        }
        RxGestureLog.INSTANCE.m35974v(RxScaleGesture.class, "filter scale by scale time short : " + currentTimeMillis);
        return true;
    }

    /* renamed from: c */
    public final void m36012c() {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.lastScaleFactor = FLOAT_ONE.floatValue();
        this.lastScaleTime = System.currentTimeMillis();
    }

    @NotNull
    public final RxGestureContext getGestureContext() {
        RxGestureContext rxGestureContext = this.gestureContext;
        if (rxGestureContext != null) {
            return rxGestureContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gestureContext");
        return null;
    }

    @Nullable
    public final RxGestureListener getListener() {
        return this.listener;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (m36011b(detector)) {
            return false;
        }
        getGestureContext().setScale(true);
        RxGestureListener rxGestureListener = this.listener;
        if (rxGestureListener != null) {
            rxGestureListener.onScaling(detector);
        }
        this.lastScaleFactor = detector.getScaleFactor();
        this.lastScaleTime = System.currentTimeMillis();
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (!getGestureContext().getIsHasMultiplePoint() || getGestureContext().getIsMorePointer() || getGestureContext().getIsBigPalmPressed()) {
            return false;
        }
        if (getGestureContext().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getIsEnableScaleSpanCheck() && !m36010a()) {
            return false;
        }
        m36012c();
        RxGestureLog.INSTANCE.m35971d(RxScaleGesture.class, "onScaleBegin");
        RxGestureListener rxGestureListener = this.listener;
        if (rxGestureListener == null) {
            return true;
        }
        rxGestureListener.onScaleBegin(detector);
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        RxGestureLog.INSTANCE.m35971d(RxScaleGesture.class, "onScaleEnd");
        RxGestureListener rxGestureListener = this.listener;
        if (rxGestureListener != null) {
            rxGestureListener.onScaleEnd(detector);
        }
    }

    public final void setGestureContext(@NotNull RxGestureContext rxGestureContext) {
        Intrinsics.checkNotNullParameter(rxGestureContext, "<set-?>");
        this.gestureContext = rxGestureContext;
    }

    public final void setListener(@Nullable RxGestureListener rxGestureListener) {
        this.listener = rxGestureListener;
    }
}
