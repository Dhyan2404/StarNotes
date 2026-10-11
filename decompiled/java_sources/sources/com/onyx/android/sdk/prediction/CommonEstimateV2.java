package com.onyx.android.sdk.prediction;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.oplusos.vfxsdk.forecast.OppoMotionPredictor;
import com.oplusos.vfxsdk.forecast.TouchPointInfo;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000  2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J$\u0010\f\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000b2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J$\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000b2\u0006\u0010\b\u001a\u00020\u0007H\u0002R\"\u0010\u001a\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u001c¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/CommonEstimateV2;", "Lcom/onyx/android/sdk/prediction/IEstimate;", "", "preInit", "Landroid/view/View;", "optView", "init", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/ArrayList;", "estimate", "", "release", "destory", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "b", "a", "", "F", "getMaxPredictTime", "()F", "setMaxPredictTime", "(F)V", "maxPredictTime", "Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;", "Lcom/oplusos/vfxsdk/forecast/OppoMotionPredictor;", "motionPredictor", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class CommonEstimateV2 implements IEstimate {
    public static final float COMMON_MAX_PREDICT_TIME = 46.0f;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    public static final boolean f44321c = BuildKt.isCPUArchitectureSupported(ResManager.INSTANCE.getStringSafely(C7106R.string.cup_abi_arm64_v8a));

    /* renamed from: a, reason: from kotlin metadata */
    public float maxPredictTime = 46.0f;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public OppoMotionPredictor motionPredictor;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/CommonEstimateV2$Companion;", "", "()V", "COMMON_MAX_PREDICT_TIME", "", "isArm64Support", "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isArm64Support() {
            return CommonEstimateV2.f44321c;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final ArrayList<TouchPoint> m34459a(MotionEvent event) {
        ArrayList<TouchPoint> arrayListOf;
        if (event.getHistorySize() > 0) {
            int historySize = event.getHistorySize();
            for (int i = 0; i < historySize; i++) {
                TouchPointInfo touchPointInfo = new TouchPointInfo(event.getHistoricalX(i), event.getHistoricalY(i), event.getHistoricalPressure(i), event.getHistoricalAxisValue(25, i), event.getHistoricalEventTime(i));
                OppoMotionPredictor oppoMotionPredictor = this.motionPredictor;
                if (oppoMotionPredictor != null) {
                    oppoMotionPredictor.pushTouchPoint(touchPointInfo);
                }
            }
        }
        OppoMotionPredictor oppoMotionPredictor2 = this.motionPredictor;
        TouchPointInfo predictTouchPoint = oppoMotionPredictor2 != null ? oppoMotionPredictor2.predictTouchPoint() : null;
        if (predictTouchPoint == null) {
            return null;
        }
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new TouchPoint(predictTouchPoint.f63208x, predictTouchPoint.f63209y, event.getPressure(), 0.0f, 0, 0, 0L, 120, null));
        return arrayListOf;
    }

    /* renamed from: b */
    public final void m34460b(Activity activity) {
        float refreshRate = activity.getWindowManager().getDefaultDisplay().getRefreshRate();
        float f = activity.getResources().getDisplayMetrics().xdpi;
        float f2 = activity.getResources().getDisplayMetrics().ydpi;
        OppoMotionPredictor oppoMotionPredictor = this.motionPredictor;
        if (oppoMotionPredictor != null) {
            oppoMotionPredictor.setRefreshRate(refreshRate);
        }
        OppoMotionPredictor oppoMotionPredictor2 = this.motionPredictor;
        if (oppoMotionPredictor2 != null) {
            oppoMotionPredictor2.setDpi(f, f2);
        }
        OppoMotionPredictor oppoMotionPredictor3 = this.motionPredictor;
        if (oppoMotionPredictor3 != null) {
            oppoMotionPredictor3.setMaxPredictTime(getMaxPredictTime());
        }
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void destory() {
        OppoMotionPredictor oppoMotionPredictor = this.motionPredictor;
        if (oppoMotionPredictor != null) {
            oppoMotionPredictor.destroy();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0018, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // com.onyx.android.sdk.prediction.IEstimate
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.onyx.android.sdk.base.data.TouchPoint> estimate(@org.jetbrains.annotations.NotNull android.view.MotionEvent r4) {
        /*
            r3 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            boolean r0 = com.onyx.android.sdk.prediction.CommonEstimateV2.f44321c
            r1 = 0
            if (r0 != 0) goto Lb
            return r1
        Lb:
            int r0 = r4.getActionMasked()
            if (r0 == 0) goto L28
            r2 = 1
            if (r0 == r2) goto L20
            r2 = 2
            if (r0 == r2) goto L1b
            r4 = 3
            if (r0 == r4) goto L20
            goto L2f
        L1b:
            java.util.ArrayList r3 = r3.m34459a(r4)
            return r3
        L20:
            com.oplusos.vfxsdk.forecast.OppoMotionPredictor r3 = r3.motionPredictor
            if (r3 == 0) goto L2f
            r3.reset()
            goto L2f
        L28:
            com.oplusos.vfxsdk.forecast.OppoMotionPredictor r3 = r3.motionPredictor
            if (r3 == 0) goto L2f
            r3.reset()
        L2f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.prediction.CommonEstimateV2.estimate(android.view.MotionEvent):java.util.ArrayList");
    }

    public float getMaxPredictTime() {
        return this.maxPredictTime;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean init(@NotNull View optView) {
        Intrinsics.checkNotNullParameter(optView, "optView");
        if (!(this.motionPredictor != null ? true : preInit())) {
            return false;
        }
        if (optView.getContext() instanceof Activity) {
            Context context = optView.getContext();
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
            m34460b((Activity) context);
        }
        return true;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean preInit() {
        if (!f44321c) {
            return false;
        }
        try {
            this.motionPredictor = new OppoMotionPredictor();
            return true;
        } catch (LinkageError unused) {
            return false;
        }
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void release() {
        OppoMotionPredictor oppoMotionPredictor = this.motionPredictor;
        if (oppoMotionPredictor != null) {
            oppoMotionPredictor.reset();
        }
    }

    public void setMaxPredictTime(float f) {
        this.maxPredictTime = f;
    }
}
