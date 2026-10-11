package androidx.input.motionprediction.kalman;

import android.content.Context;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.input.motionprediction.MotionEventPredictor;
import androidx.input.motionprediction.utils.PredictionEstimator;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class KalmanMotionEventPredictor implements MotionEventPredictor {

    /* renamed from: a */
    public final MultiPointerPredictor f7734a = new MultiPointerPredictor();

    /* renamed from: b */
    public final PredictionEstimator f7735b;

    public KalmanMotionEventPredictor(@NonNull Context context) {
        this.f7735b = new PredictionEstimator(context);
    }

    @Override // androidx.input.motionprediction.MotionEventPredictor
    @Nullable
    public MotionEvent predict() {
        return this.f7734a.predict(this.f7735b.estimate());
    }

    @Override // androidx.input.motionprediction.MotionEventPredictor
    public void record(@NonNull MotionEvent motionEvent) {
        this.f7735b.record(motionEvent);
        this.f7734a.onTouchEvent(motionEvent);
    }
}
