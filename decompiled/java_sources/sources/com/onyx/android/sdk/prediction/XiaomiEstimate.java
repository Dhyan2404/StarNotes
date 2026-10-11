package com.onyx.android.sdk.prediction;

import android.app.Activity;
import android.content.Context;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.estimate.MiuiMotionEventInfo;
import com.miui.penengine.estimate.MiuiStrokeEstimate;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.prediction.IEstimate;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\fH\u0016R$\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\bj\b\u0012\u0004\u0012\u00020\u000f`\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R$\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\bj\b\u0012\u0004\u0012\u00020\u000f`\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/XiaomiEstimate;", "Lcom/onyx/android/sdk/prediction/IEstimate;", "Landroid/view/View;", "optView", "", "init", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/ArrayList;", "estimate", "", "release", "destory", "Lcom/miui/penengine/estimate/MiuiMotionEventInfo;", "a", "Ljava/util/ArrayList;", "freshPointList", "b", "predictPointList", Constants.CONSTRUCTOR_NAME, "()V", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class XiaomiEstimate implements IEstimate {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<MiuiMotionEventInfo> freshPointList = new ArrayList<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<MiuiMotionEventInfo> predictPointList = new ArrayList<>();

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void destory() {
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    @Nullable
    public ArrayList<TouchPoint> estimate(@NotNull MotionEvent event) {
        int historySize;
        Object last;
        ArrayList<TouchPoint> arrayListOf;
        Intrinsics.checkNotNullParameter(event, "event");
        MiuiMotionEventInfo createByMotionEvent = MiuiMotionEventInfo.createByMotionEvent(event);
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.freshPointList.add(createByMotionEvent);
            return null;
        }
        if (actionMasked != 2 || (historySize = event.getHistorySize()) <= 0) {
            return null;
        }
        for (int i = 0; i < historySize; i++) {
            this.freshPointList.add(MiuiMotionEventInfo.createByMotionEvent(event, i));
        }
        this.freshPointList.add(createByMotionEvent);
        this.predictPointList.clear();
        int estimateEvent = MiuiStrokeEstimate.getEstimateEvent(this.freshPointList, this.predictPointList);
        this.freshPointList.clear();
        if (estimateEvent != 0) {
            return null;
        }
        Iterator<MiuiMotionEventInfo> it2 = this.predictPointList.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        it2.next();
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.predictPointList);
        MiuiMotionEventInfo miuiMotionEventInfo = (MiuiMotionEventInfo) last;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new TouchPoint(miuiMotionEventInfo.getX(), miuiMotionEventInfo.getY(), event.getPressure(), 0.0f, 0, 0, 0L, 120, null));
        return arrayListOf;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean init(@NotNull View optView) {
        Intrinsics.checkNotNullParameter(optView, "optView");
        Context context = optView.getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        Display defaultDisplay = ((Activity) context).getWindowManager().getDefaultDisplay();
        Intrinsics.checkNotNullExpressionValue(defaultDisplay, "getDefaultDisplay(...)");
        MiuiStrokeEstimate.setRefreshRate(defaultDisplay.getRefreshRate());
        return true;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean preInit() {
        return IEstimate.DefaultImpls.preInit(this);
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void release() {
    }
}
