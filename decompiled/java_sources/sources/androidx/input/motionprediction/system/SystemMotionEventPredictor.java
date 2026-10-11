package androidx.input.motionprediction.system;

import android.content.Context;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.MotionPredictor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.input.motionprediction.MotionEventPredictor;
import androidx.input.motionprediction.kalman.MultiPointerPredictor;
import androidx.input.motionprediction.utils.PredictionEstimator;
import java.util.concurrent.TimeUnit;

@RequiresApi(34)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class SystemMotionEventPredictor implements MotionEventPredictor {

    /* renamed from: b */
    public final MotionPredictor f7791b;

    /* renamed from: c */
    public final PredictionEstimator f7792c;

    /* renamed from: a */
    public MultiPointerPredictor f7790a = null;

    /* renamed from: d */
    public boolean f7793d = true;

    /* renamed from: e */
    public int f7794e = -1;

    /* renamed from: f */
    public int f7795f = -2;

    public SystemMotionEventPredictor(@NonNull Context context) {
        this.f7792c = new PredictionEstimator(context);
        this.f7791b = new MotionPredictor(context);
    }

    @NonNull
    public static SystemMotionEventPredictor newInstance(@NonNull Context context) {
        return new SystemMotionEventPredictor(context);
    }

    /* renamed from: a */
    public final MultiPointerPredictor m4862a() {
        if (this.f7790a == null) {
            this.f7790a = new MultiPointerPredictor();
        }
        return this.f7790a;
    }

    @Override // androidx.input.motionprediction.MotionEventPredictor
    @Nullable
    public MotionEvent predict() {
        int estimate = this.f7792c.estimate();
        return this.f7793d ? this.f7791b.predict(TimeUnit.MILLISECONDS.toNanos(SystemClock.uptimeMillis() + estimate)) : m4862a().predict(estimate);
    }

    @Override // androidx.input.motionprediction.MotionEventPredictor
    public void record(@NonNull MotionEvent motionEvent) {
        this.f7792c.record(motionEvent);
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        if (this.f7794e != source || this.f7795f != deviceId) {
            this.f7793d = this.f7791b.isPredictionAvailable(deviceId, source);
            this.f7795f = deviceId;
            this.f7794e = source;
        }
        if (this.f7793d) {
            this.f7791b.record(motionEvent);
        } else {
            m4862a().onTouchEvent(motionEvent);
        }
    }
}
