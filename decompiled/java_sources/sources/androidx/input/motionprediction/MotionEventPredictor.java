package androidx.input.motionprediction;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.input.motionprediction.kalman.KalmanMotionEventPredictor;
import androidx.input.motionprediction.system.SystemMotionEventPredictor;

/* loaded from: classes3.dex */
public interface MotionEventPredictor {
    @NonNull
    static MotionEventPredictor newInstance(@NonNull View view) {
        Context context = view.getContext();
        return Build.VERSION.SDK_INT >= 34 ? SystemMotionEventPredictor.newInstance(context) : new KalmanMotionEventPredictor(context);
    }

    @Nullable
    MotionEvent predict();

    void record(@NonNull MotionEvent motionEvent);
}
