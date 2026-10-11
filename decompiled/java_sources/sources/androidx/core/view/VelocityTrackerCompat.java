package androidx.core.view;

import android.os.Build;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.sunia.HTREnginev2.r0o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class VelocityTrackerCompat {

    /* renamed from: a */
    public static Map<VelocityTracker, r0o> f5867a = Collections.synchronizedMap(new WeakHashMap());

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface VelocityTrackableMotionEventAxis {
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.view.VelocityTrackerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0779a {
        @DoNotInline
        /* renamed from: a */
        public static float m3367a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getAxisVelocity(i);
        }

        @DoNotInline
        /* renamed from: b */
        public static float m3368b(VelocityTracker velocityTracker, int i, int i2) {
            return velocityTracker.getAxisVelocity(i, i2);
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m3369c(VelocityTracker velocityTracker, int i) {
            return velocityTracker.isAxisSupported(i);
        }
    }

    @Nullable
    /* renamed from: a */
    public static r0o m3365a(VelocityTracker velocityTracker) {
        return f5867a.get(velocityTracker);
    }

    public static void addMovement(@NonNull VelocityTracker velocityTracker, @NonNull MotionEvent motionEvent) {
        velocityTracker.addMovement(motionEvent);
        if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
            if (!f5867a.containsKey(velocityTracker)) {
                f5867a.put(velocityTracker, new r0o());
            }
            f5867a.get(velocityTracker).m56870a(motionEvent);
        }
    }

    /* renamed from: b */
    public static void m3366b(VelocityTracker velocityTracker) {
        f5867a.remove(velocityTracker);
    }

    public static void clear(@NonNull VelocityTracker velocityTracker) {
        velocityTracker.clear();
        m3366b(velocityTracker);
    }

    public static void computeCurrentVelocity(@NonNull VelocityTracker velocityTracker, int i, float f) {
        velocityTracker.computeCurrentVelocity(i, f);
        r0o m3365a = m3365a(velocityTracker);
        if (m3365a != null) {
            m3365a.m56873d(i, f);
        }
    }

    public static float getAxisVelocity(@NonNull VelocityTracker velocityTracker, int i) {
        if (Build.VERSION.SDK_INT >= 34) {
            return C0779a.m3367a(velocityTracker, i);
        }
        if (i == 0) {
            return velocityTracker.getXVelocity();
        }
        if (i == 1) {
            return velocityTracker.getYVelocity();
        }
        r0o m3365a = m3365a(velocityTracker);
        if (m3365a != null) {
            return m3365a.m56874e(i);
        }
        return 0.0f;
    }

    @Deprecated
    public static float getXVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    @Deprecated
    public static float getYVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }

    public static boolean isAxisSupported(@NonNull VelocityTracker velocityTracker, int i) {
        return Build.VERSION.SDK_INT >= 34 ? C0779a.m3369c(velocityTracker, i) : i == 26 || i == 0 || i == 1;
    }

    public static void recycle(@NonNull VelocityTracker velocityTracker) {
        velocityTracker.recycle();
        m3366b(velocityTracker);
    }

    public static void computeCurrentVelocity(@NonNull VelocityTracker velocityTracker, int i) {
        computeCurrentVelocity(velocityTracker, i, Float.MAX_VALUE);
    }

    public static float getAxisVelocity(@NonNull VelocityTracker velocityTracker, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 34) {
            return C0779a.m3368b(velocityTracker, i, i2);
        }
        if (i == 0) {
            return velocityTracker.getXVelocity(i2);
        }
        if (i == 1) {
            return velocityTracker.getYVelocity(i2);
        }
        return 0.0f;
    }
}
