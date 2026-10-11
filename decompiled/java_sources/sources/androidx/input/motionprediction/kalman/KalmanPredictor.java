package androidx.input.motionprediction.kalman;

import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public interface KalmanPredictor {
    boolean onTouchEvent(@NonNull MotionEvent motionEvent);

    @Nullable
    MotionEvent predict(int i);

    void setReportRate(int i);
}
