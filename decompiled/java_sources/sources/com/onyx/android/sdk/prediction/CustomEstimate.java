package com.onyx.android.sdk.prediction;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.prediction.IEstimate;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\fH\u0016R\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/CustomEstimate;", "Lcom/onyx/android/sdk/prediction/IEstimate;", "Landroid/view/View;", "optView", "", "init", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Lkotlin/collections/ArrayList;", "estimate", "", "release", "destory", "Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;", "a", "Lcom/onyx/android/sdk/prediction/SinglePointerPredictor;", "customPredictor", Constants.CONSTRUCTOR_NAME, "()V", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CustomEstimate implements IEstimate {

    /* renamed from: a, reason: from kotlin metadata */
    public SinglePointerPredictor customPredictor;

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public void destory() {
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    @Nullable
    public ArrayList<TouchPoint> estimate(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ArrayList<TouchPoint> arrayList = new ArrayList<>();
        SinglePointerPredictor singlePointerPredictor = this.customPredictor;
        if (singlePointerPredictor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customPredictor");
            singlePointerPredictor = null;
        }
        singlePointerPredictor.onTouchEvent(event);
        SinglePointerPredictor singlePointerPredictor2 = this.customPredictor;
        if (singlePointerPredictor2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customPredictor");
            singlePointerPredictor2 = null;
        }
        MotionEvent predict = singlePointerPredictor2.predict(32);
        if (predict == null) {
            return null;
        }
        arrayList.add(new TouchPoint(predict));
        return arrayList;
    }

    @Override // com.onyx.android.sdk.prediction.IEstimate
    public boolean init(@NotNull View optView) {
        Intrinsics.checkNotNullParameter(optView, "optView");
        this.customPredictor = new SinglePointerPredictor(0, 2);
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
