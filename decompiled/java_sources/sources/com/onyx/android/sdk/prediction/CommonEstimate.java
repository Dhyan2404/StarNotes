package com.onyx.android.sdk.prediction;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.input.motionprediction.MotionEventPredictor;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.prediction.IEstimate;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\fj\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/CommonEstimate;", "Lcom/onyx/android/sdk/prediction/IEstimate;", "()V", "motionEventPredictor", "Landroidx/input/motionprediction/MotionEventPredictor;", "getMotionEventPredictor", "()Landroidx/input/motionprediction/MotionEventPredictor;", "setMotionEventPredictor", "(Landroidx/input/motionprediction/MotionEventPredictor;)V", "destory", "", "estimate", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/ArrayList;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "init", "", "optView", "Landroid/view/View;", "release", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class CommonEstimate implements IEstimate {
    public MotionEventPredictor motionEventPredictor;

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void destory() {
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    @Nullable
    public ArrayList<TouchPoint> estimate(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!EstimateManager.INSTANCE.isEstimateValid()) {
            return null;
        }
        try {
            getMotionEventPredictor().record(event);
            if (event.getAction() != 2) {
                return null;
            }
            ArrayList<TouchPoint> arrayList = new ArrayList<>();
            MotionEvent predict = getMotionEventPredictor().predict();
            if (predict == null) {
                return null;
            }
            arrayList.add(new TouchPoint(predict));
            return arrayList;
        } catch (Exception unused) {
            EstimateManager.INSTANCE.setEstimateValid(false);
            return null;
        }
    }

    @NotNull
    public final MotionEventPredictor getMotionEventPredictor() {
        MotionEventPredictor motionEventPredictor = this.motionEventPredictor;
        if (motionEventPredictor != null) {
            return motionEventPredictor;
        }
        Intrinsics.throwUninitializedPropertyAccessException("motionEventPredictor");
        return null;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean init(@NotNull View optView) {
        Intrinsics.checkNotNullParameter(optView, "optView");
        MotionEventPredictor newInstance = MotionEventPredictor.newInstance(optView);
        Intrinsics.checkNotNullExpressionValue(newInstance, "newInstance(...)");
        setMotionEventPredictor(newInstance);
        return true;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean preInit() {
        return IEstimate.DefaultImpls.preInit(this);
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void release() {
    }

    public final void setMotionEventPredictor(@NotNull MotionEventPredictor motionEventPredictor) {
        Intrinsics.checkNotNullParameter(motionEventPredictor, "<set-?>");
        this.motionEventPredictor = motionEventPredictor;
    }
}
