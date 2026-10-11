package com.onyx.android.sdk.prediction;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\"\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\f\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0004R\u0016\u0010\u000b\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/EstimateHolder;", "", "Landroid/view/View;", "optView", "", "init", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/ArrayList;", "estimate", "release", "destory", "Lcom/onyx/android/sdk/prediction/IEstimate;", "a", "Lcom/onyx/android/sdk/prediction/IEstimate;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/prediction/IEstimate;)V", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EstimateHolder {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public IEstimate estimate;

    public EstimateHolder(@NotNull IEstimate estimate) {
        Intrinsics.checkNotNullParameter(estimate, "estimate");
        this.estimate = estimate;
    }

    public final void destory() {
        this.estimate.destory();
    }

    @Nullable
    public final ArrayList<TouchPoint> estimate(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return this.estimate.estimate(event);
    }

    public final void init(@NotNull View optView) {
        Intrinsics.checkNotNullParameter(optView, "optView");
        this.estimate.init(optView);
    }

    public final void release() {
        this.estimate.release();
    }
}
