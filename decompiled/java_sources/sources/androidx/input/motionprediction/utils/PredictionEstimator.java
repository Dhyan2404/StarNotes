package androidx.input.motionprediction.utils;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.view.Display;
import android.view.MotionEvent;
import android.view.WindowManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class PredictionEstimator {

    /* renamed from: c */
    public static final int f7796c = 32;

    /* renamed from: d */
    public static final int f7797d = 16;

    /* renamed from: e */
    public static final int f7798e = 1000;

    /* renamed from: a */
    public long f7799a = -1;

    /* renamed from: b */
    public final float f7800b;

    @RequiresApi(21)
    /* renamed from: androidx.input.motionprediction.utils.PredictionEstimator$a */
    /* loaded from: classes3.dex */
    public static class C1130a {
        @DoNotInline
        /* renamed from: a */
        public static float m4865a(Display display) {
            float[] supportedRefreshRates = display.getSupportedRefreshRates();
            float f = supportedRefreshRates[0];
            for (int i = 1; i < supportedRefreshRates.length; i++) {
                float f2 = supportedRefreshRates[i];
                if (f2 > f) {
                    f = f2;
                }
            }
            return 1000.0f / f;
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.input.motionprediction.utils.PredictionEstimator$b */
    /* loaded from: classes3.dex */
    public static class C1131b {
        @DoNotInline
        /* renamed from: a */
        public static float m4866a(Display display) {
            Display.Mode[] supportedModes = display.getSupportedModes();
            float refreshRate = supportedModes[0].getRefreshRate();
            for (int i = 1; i < supportedModes.length; i++) {
                float refreshRate2 = supportedModes[i].getRefreshRate();
                if (refreshRate2 > refreshRate) {
                    refreshRate = refreshRate2;
                }
            }
            return 1000.0f / refreshRate;
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.input.motionprediction.utils.PredictionEstimator$c */
    /* loaded from: classes3.dex */
    public static class C1132c {
        @DoNotInline
        /* renamed from: a */
        public static Display m4867a(Context context) {
            return context.getDisplay();
        }
    }

    public PredictionEstimator(@NonNull Context context) {
        this.f7800b = m4864b(context);
    }

    /* renamed from: a */
    public final Display m4863a(Context context) {
        return Build.VERSION.SDK_INT >= 30 ? C1132c.m4867a(context) : ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: b */
    public final float m4864b(Context context) {
        return C1131b.m4866a(m4863a(context));
    }

    public int estimate() {
        return this.f7799a <= 0 ? (int) this.f7800b : Math.min(32, (int) (((float) (SystemClock.uptimeMillis() - this.f7799a)) + this.f7800b));
    }

    public void record(@NonNull MotionEvent motionEvent) {
        this.f7799a = motionEvent.getEventTime();
    }
}
