package com.onyx.android.sdk.prediction;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.hihonor.android.magicx.app.penengine.estimate.HnMotionEventInfo;
import com.hihonor.android.magicx.app.penengine.estimate.HnMotionEventQueue;
import com.hihonor.android.magicx.app.penengine.estimate.HnStrokeEstimate;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.prediction.IEstimate;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\fH\u0016J$\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011R*\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0013\u0018\u0001`\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/HonorEstimate;", "Lcom/onyx/android/sdk/prediction/IEstimate;", "Landroid/view/View;", "optView", "", "init", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/ArrayList;", "estimate", "", "release", "destory", "a", "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;", "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;", "eventQueue", "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;", "b", "Ljava/util/ArrayList;", "listEvent", Constants.CONSTRUCTOR_NAME, "()V", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HonorEstimate implements IEstimate {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public HnMotionEventQueue eventQueue;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public ArrayList<HnMotionEventInfo> listEvent;

    /* renamed from: a */
    public final ArrayList<TouchPoint> m34464a(MotionEvent event) {
        int historySize;
        Object last;
        ArrayList<TouchPoint> arrayListOf;
        if (this.eventQueue != null && this.listEvent != null && (historySize = event.getHistorySize()) > 0) {
            ArrayList<HnMotionEventInfo> arrayList = this.listEvent;
            Intrinsics.checkNotNull(arrayList);
            arrayList.clear();
            for (int i = 0; i < historySize; i++) {
                HnMotionEventInfo hnMotionEventInfo = new HnMotionEventInfo(event.getHistoricalX(i), event.getHistoricalY(i), event.getHistoricalPressure(i), event.getHistoricalAxisValue(25, i), event.getHistoricalEventTime(i));
                ArrayList<HnMotionEventInfo> arrayList2 = this.listEvent;
                Intrinsics.checkNotNull(arrayList2);
                arrayList2.add(hnMotionEventInfo);
            }
            HnMotionEventQueue hnMotionEventQueue = this.eventQueue;
            Intrinsics.checkNotNull(hnMotionEventQueue);
            hnMotionEventQueue.fill(this.listEvent);
            ArrayList<HnMotionEventInfo> arrayList3 = this.listEvent;
            Intrinsics.checkNotNull(arrayList3);
            arrayList3.clear();
            HnMotionEventQueue hnMotionEventQueue2 = this.eventQueue;
            Intrinsics.checkNotNull(hnMotionEventQueue2);
            if (HnStrokeEstimate.getEstimateEvent(hnMotionEventQueue2.getQueue(), this.listEvent) == 0) {
                ArrayList<HnMotionEventInfo> arrayList4 = this.listEvent;
                Intrinsics.checkNotNull(arrayList4);
                if (arrayList4.size() > 0) {
                    ArrayList<HnMotionEventInfo> arrayList5 = this.listEvent;
                    Intrinsics.checkNotNull(arrayList5);
                    last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList5);
                    HnMotionEventInfo hnMotionEventInfo2 = (HnMotionEventInfo) last;
                    TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
                    touchPoint.setX(hnMotionEventInfo2.getX());
                    touchPoint.setY(hnMotionEventInfo2.getY());
                    touchPoint.setPressure(event.getPressure());
                    arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(touchPoint);
                    return arrayListOf;
                }
            }
        }
        return null;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void destory() {
        this.eventQueue = null;
        this.listEvent = null;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    @Nullable
    public ArrayList<TouchPoint> estimate(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int actionMasked = event.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                return m34464a(event);
            }
            if (actionMasked != 3) {
                return null;
            }
        }
        release();
        return null;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean init(@NotNull View optView) {
        Intrinsics.checkNotNullParameter(optView, "optView");
        this.eventQueue = new HnMotionEventQueue();
        this.listEvent = new ArrayList<>();
        return true;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean preInit() {
        return IEstimate.DefaultImpls.preInit(this);
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void release() {
        HnMotionEventQueue hnMotionEventQueue = this.eventQueue;
        if (hnMotionEventQueue != null) {
            hnMotionEventQueue.clear();
        }
        ArrayList<HnMotionEventInfo> arrayList = this.listEvent;
        if (arrayList != null) {
            arrayList.clear();
        }
    }
}
