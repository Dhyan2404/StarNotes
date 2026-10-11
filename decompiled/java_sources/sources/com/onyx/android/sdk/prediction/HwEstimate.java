package com.onyx.android.sdk.prediction;

import android.app.Activity;
import android.content.Context;
import android.graphics.PointF;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.huawei.stylus.penengine.estimate.HwMotionEventInfo;
import com.huawei.stylus.penengine.estimate.HwMotionEventQueue;
import com.huawei.stylus.penengine.estimate.HwStrokeEstimate;
import com.huawei.stylus.penengine.estimate.IHwRecycleQueue;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.prediction.IEstimate;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J \u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u001fR\u0016\u0010\"\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010!R\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010$R&\u0010'\u001a\u0012\u0012\u0004\u0012\u00020\u00190\bj\b\u0012\u0004\u0012\u00020\u0019`\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010&R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00190(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010)R\u0016\u0010-\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/HwEstimate;", "Lcom/onyx/android/sdk/prediction/IEstimate;", "Landroid/view/View;", "optView", "", "init", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/ArrayList;", "estimate", "", "release", "destory", "Landroid/app/Activity;", Name.REFER, "c", "Landroid/graphics/PointF;", "curP", "scaleP", "", "scale", "a", "", "Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;", "b", "d", "", "i", "e", "Landroid/view/View;", "Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;", "Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;", "eventQueue", "Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;", "Lcom/huawei/stylus/penengine/estimate/HwMotionEventQueue;", "hwMotionEventQueue", "Ljava/util/ArrayList;", "listEvents", "", "Ljava/util/List;", "historyEvents", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isExtensionEnable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHwEstimate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HwEstimate.kt\ncom/onyx/android/sdk/prediction/HwEstimate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n1864#2,3:160\n*S KotlinDebug\n*F\n+ 1 HwEstimate.kt\ncom/onyx/android/sdk/prediction/HwEstimate\n*L\n70#1:160,3\n*E\n"})
/* loaded from: classes8.dex */
public final class HwEstimate implements IEstimate {

    /* renamed from: a, reason: from kotlin metadata */
    public View optView;

    /* renamed from: b, reason: from kotlin metadata */
    public IHwRecycleQueue eventQueue;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public HwMotionEventQueue hwMotionEventQueue = new HwMotionEventQueue();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public ArrayList<HwMotionEventInfo> listEvents = new ArrayList<>();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public List<HwMotionEventInfo> historyEvents = new ArrayList();

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isExtensionEnable;

    /* renamed from: a */
    public final PointF m34465a(PointF curP, PointF scaleP, float scale) {
        float f = curP.x;
        float f2 = scaleP.x;
        float f3 = curP.y;
        float f4 = scaleP.y;
        curP.set(f2 + ((f - f2) * scale), f4 + ((f3 - f4) * scale));
        return curP;
    }

    /* renamed from: b */
    public final List<HwMotionEventInfo> m34466b(MotionEvent event) {
        int historySize = event.getHistorySize();
        if (historySize <= 0) {
            this.historyEvents.add(m34468d(event));
            return this.historyEvents;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < historySize; i++) {
            arrayList.add(m34469e(event, i));
        }
        return arrayList;
    }

    /* renamed from: c */
    public final void m34467c(Activity reference) {
        double refreshRate = reference.getWindowManager().getDefaultDisplay().getRefreshRate();
        BigDecimal valueOf = BigDecimal.valueOf(refreshRate);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        float floor = BigDecimal.ZERO.compareTo(valueOf) != 0 ? (float) (Math.floor(1000 / refreshRate) - 1) : 0.0f;
        if (floor == 0.0f) {
            return;
        }
        HwStrokeEstimate.setRefreshRate(floor);
        Log.d(HwEstimate.class.getSimpleName(), "display frameRate:" + refreshRate + ",estimate minPeriod:" + floor);
    }

    /* renamed from: d */
    public final HwMotionEventInfo m34468d(MotionEvent event) {
        return new HwMotionEventInfo(event.getX(), event.getY(), event.getPressure(), event.getAxisValue(25), event.getEventTime());
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void destory() {
        release();
    }

    /* renamed from: e */
    public final HwMotionEventInfo m34469e(MotionEvent event, int i) {
        float historicalX = event.getHistoricalX(i);
        float historicalY = event.getHistoricalY(i);
        long historicalEventTime = event.getHistoricalEventTime(i);
        float historicalPressure = event.getHistoricalPressure(i);
        float historicalAxisValue = event.getHistoricalAxisValue(25, i);
        View view = this.optView;
        View view2 = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("optView");
            view = null;
        }
        float pivotX = view.getPivotX();
        View view3 = this.optView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("optView");
            view3 = null;
        }
        PointF pointF = new PointF(pivotX, view3.getPivotY());
        PointF pointF2 = new PointF(historicalX, historicalY);
        View view4 = this.optView;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("optView");
        } else {
            view2 = view4;
        }
        PointF m34465a = m34465a(pointF2, pointF, view2.getScaleX());
        return new HwMotionEventInfo(m34465a.x, m34465a.y, historicalPressure, historicalAxisValue, historicalEventTime);
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    @Nullable
    public ArrayList<TouchPoint> estimate(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0) {
            this.historyEvents.add(m34468d(event));
        } else if (action == 1) {
            release();
        } else if (action == 2) {
            List<HwMotionEventInfo> m34466b = m34466b(event);
            View view = null;
            if (m34466b.isEmpty()) {
                return null;
            }
            this.listEvents.clear();
            this.listEvents.addAll(m34466b);
            IHwRecycleQueue iHwRecycleQueue = this.eventQueue;
            if (iHwRecycleQueue == null) {
                Intrinsics.throwUninitializedPropertyAccessException("eventQueue");
                iHwRecycleQueue = null;
            }
            iHwRecycleQueue.fill(this.listEvents);
            this.listEvents.clear();
            IHwRecycleQueue iHwRecycleQueue2 = this.eventQueue;
            if (iHwRecycleQueue2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("eventQueue");
                iHwRecycleQueue2 = null;
            }
            if (HwStrokeEstimate.getEstimateEvent(iHwRecycleQueue2, this.listEvents) != 0 || this.listEvents.size() <= 0) {
                return null;
            }
            ArrayList<TouchPoint> arrayList = new ArrayList<>();
            int i = 0;
            for (Object obj : this.listEvents) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                HwMotionEventInfo hwMotionEventInfo = (HwMotionEventInfo) obj;
                float x = hwMotionEventInfo.getX();
                float y = hwMotionEventInfo.getY();
                View view2 = this.optView;
                if (view2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("optView");
                    view2 = view;
                }
                float pivotX = view2.getPivotX();
                View view3 = this.optView;
                if (view3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("optView");
                    view3 = view;
                }
                PointF pointF = new PointF(pivotX, view3.getPivotY());
                PointF pointF2 = new PointF(x, y);
                float f = 1;
                View view4 = this.optView;
                if (view4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("optView");
                    view4 = view;
                }
                PointF m34465a = m34465a(pointF2, pointF, f / view4.getScaleX());
                arrayList.add(new TouchPoint(hwMotionEventInfo.getX(), hwMotionEventInfo.getY(), event.getPressure(), 1.0f, hwMotionEventInfo.getEventTime()));
                if (this.isExtensionEnable && i == this.listEvents.size() - 1) {
                    float f2 = m34465a.x;
                    float x2 = f2 + ((f2 - event.getX()) * 0.6f);
                    float f3 = m34465a.y;
                    arrayList.add(new TouchPoint(x2, f3 + ((f3 - event.getY()) * 0.6f), hwMotionEventInfo.getPress(), 1.0f, hwMotionEventInfo.getEventTime()));
                }
                i = i2;
                view = null;
            }
            return arrayList;
        }
        return new ArrayList<>();
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean init(@NotNull View optView) {
        Intrinsics.checkNotNullParameter(optView, "optView");
        this.optView = optView;
        if (optView.getContext() instanceof Activity) {
            Context context = optView.getContext();
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
            m34467c((Activity) context);
        }
        IHwRecycleQueue queue = this.hwMotionEventQueue.getQueue();
        Intrinsics.checkNotNullExpressionValue(queue, "getQueue(...)");
        this.eventQueue = queue;
        release();
        return true;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean preInit() {
        return IEstimate.DefaultImpls.preInit(this);
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void release() {
        this.listEvents.clear();
        IHwRecycleQueue iHwRecycleQueue = this.eventQueue;
        if (iHwRecycleQueue == null) {
            Intrinsics.throwUninitializedPropertyAccessException("eventQueue");
            iHwRecycleQueue = null;
        }
        iHwRecycleQueue.clear();
        this.historyEvents.clear();
    }
}
