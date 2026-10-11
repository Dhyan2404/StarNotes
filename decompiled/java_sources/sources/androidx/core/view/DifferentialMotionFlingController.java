package androidx.core.view;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.DifferentialMotionFlingController;

/* loaded from: classes3.dex */
public class DifferentialMotionFlingController {

    /* renamed from: a */
    public final Context f5804a;

    /* renamed from: b */
    public final DifferentialMotionFlingTarget f5805b;

    /* renamed from: c */
    public final InterfaceC0763b f5806c;

    /* renamed from: d */
    public final InterfaceC0762a f5807d;

    /* renamed from: e */
    @Nullable
    public VelocityTracker f5808e;

    /* renamed from: f */
    public float f5809f;

    /* renamed from: g */
    public int f5810g;

    /* renamed from: h */
    public int f5811h;

    /* renamed from: i */
    public int f5812i;

    /* renamed from: j */
    public final int[] f5813j;

    @VisibleForTesting
    /* renamed from: androidx.core.view.DifferentialMotionFlingController$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC0762a {
        /* renamed from: a */
        float mo3295a(VelocityTracker velocityTracker, MotionEvent motionEvent, int i);
    }

    @VisibleForTesting
    /* renamed from: androidx.core.view.DifferentialMotionFlingController$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC0763b {
        /* renamed from: a */
        void mo3296a(Context context, int[] iArr, MotionEvent motionEvent, int i);
    }

    public DifferentialMotionFlingController(@NonNull Context context, @NonNull DifferentialMotionFlingTarget differentialMotionFlingTarget) {
        this(context, differentialMotionFlingTarget, new InterfaceC0763b() { // from class: com.sunia.HTREnginev2.y4f
            @Override // androidx.core.view.DifferentialMotionFlingController.InterfaceC0763b
            /* renamed from: a */
            public final void mo3296a(Context context2, int[] iArr, MotionEvent motionEvent, int i) {
                DifferentialMotionFlingController.m3291c(context2, iArr, motionEvent, i);
            }
        }, new InterfaceC0762a() { // from class: com.sunia.HTREnginev2.z4f
            @Override // androidx.core.view.DifferentialMotionFlingController.InterfaceC0762a
            /* renamed from: a */
            public final float mo3295a(VelocityTracker velocityTracker, MotionEvent motionEvent, int i) {
                float m3292f;
                m3292f = DifferentialMotionFlingController.m3292f(velocityTracker, motionEvent, i);
                return m3292f;
            }
        });
    }

    /* renamed from: c */
    public static void m3291c(Context context, int[] iArr, MotionEvent motionEvent, int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        iArr[0] = ViewConfigurationCompat.getScaledMinimumFlingVelocity(context, viewConfiguration, motionEvent.getDeviceId(), i, motionEvent.getSource());
        iArr[1] = ViewConfigurationCompat.getScaledMaximumFlingVelocity(context, viewConfiguration, motionEvent.getDeviceId(), i, motionEvent.getSource());
    }

    /* renamed from: f */
    public static float m3292f(VelocityTracker velocityTracker, MotionEvent motionEvent, int i) {
        VelocityTrackerCompat.addMovement(velocityTracker, motionEvent);
        VelocityTrackerCompat.computeCurrentVelocity(velocityTracker, 1000);
        return VelocityTrackerCompat.getAxisVelocity(velocityTracker, i);
    }

    /* renamed from: d */
    public final boolean m3293d(MotionEvent motionEvent, int i) {
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        if (this.f5811h == source && this.f5812i == deviceId && this.f5810g == i) {
            return false;
        }
        this.f5806c.mo3296a(this.f5804a, this.f5813j, motionEvent, i);
        this.f5811h = source;
        this.f5812i = deviceId;
        this.f5810g = i;
        return true;
    }

    /* renamed from: e */
    public final float m3294e(MotionEvent motionEvent, int i) {
        if (this.f5808e == null) {
            this.f5808e = VelocityTracker.obtain();
        }
        return this.f5807d.mo3295a(this.f5808e, motionEvent, i);
    }

    public void onMotionEvent(@NonNull MotionEvent motionEvent, int i) {
        boolean m3293d = m3293d(motionEvent, i);
        if (this.f5813j[0] == Integer.MAX_VALUE) {
            VelocityTracker velocityTracker = this.f5808e;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f5808e = null;
                return;
            }
            return;
        }
        float m3294e = m3294e(motionEvent, i) * this.f5805b.getScaledScrollFactor();
        float signum = Math.signum(m3294e);
        if (m3293d || (signum != Math.signum(this.f5809f) && signum != 0.0f)) {
            this.f5805b.stopDifferentialMotionFling();
        }
        float abs = Math.abs(m3294e);
        int[] iArr = this.f5813j;
        if (abs < iArr[0]) {
            return;
        }
        float max = Math.max(-r6, Math.min(m3294e, iArr[1]));
        this.f5809f = this.f5805b.startDifferentialMotionFling(max) ? max : 0.0f;
    }

    @VisibleForTesting
    public DifferentialMotionFlingController(Context context, DifferentialMotionFlingTarget differentialMotionFlingTarget, InterfaceC0763b interfaceC0763b, InterfaceC0762a interfaceC0762a) {
        this.f5810g = -1;
        this.f5811h = -1;
        this.f5812i = -1;
        this.f5813j = new int[]{Integer.MAX_VALUE, 0};
        this.f5804a = context;
        this.f5805b = differentialMotionFlingTarget;
        this.f5806c = interfaceC0763b;
        this.f5807d = interfaceC0762a;
    }
}
