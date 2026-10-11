package androidx.input.motionprediction.kalman;

import android.util.Log;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.input.motionprediction.kalman.matrix.DVector2;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class SinglePointerPredictor implements KalmanPredictor {

    /* renamed from: A */
    public static final float f7755A = 0.0f;

    /* renamed from: B */
    public static final float f7756B = 0.0f;

    /* renamed from: C */
    public static final int f7757C = 20;

    /* renamed from: D */
    public static final int f7758D = 4;

    /* renamed from: q */
    public static final String f7759q = "SinglePointerPredictor";

    /* renamed from: r */
    public static final float f7760r = 0.1f;

    /* renamed from: s */
    public static final float f7761s = 0.5f;

    /* renamed from: t */
    public static final float f7762t = 1.0f;

    /* renamed from: u */
    public static final float f7763u = 0.02f;

    /* renamed from: v */
    public static final float f7764v = 0.2f;

    /* renamed from: w */
    public static final float f7765w = 0.1f;

    /* renamed from: x */
    public static final float f7766x = 0.2f;

    /* renamed from: y */
    public static final float f7767y = 0.0f;

    /* renamed from: z */
    public static final float f7768z = 2.0f;

    /* renamed from: a */
    public final PointerKalmanFilter f7769a;

    /* renamed from: b */
    public final DVector2 f7770b;

    /* renamed from: c */
    public long f7771c;

    /* renamed from: d */
    public long f7772d;

    /* renamed from: e */
    public List<Float> f7773e;

    /* renamed from: f */
    public int f7774f;

    /* renamed from: g */
    public float f7775g;

    /* renamed from: h */
    public final DVector2 f7776h;

    /* renamed from: i */
    public final DVector2 f7777i;

    /* renamed from: j */
    public final DVector2 f7778j;

    /* renamed from: k */
    public final DVector2 f7779k;

    /* renamed from: l */
    public int f7780l;

    /* renamed from: m */
    public int f7781m;

    /* renamed from: n */
    public double f7782n;

    /* renamed from: o */
    public double f7783o;

    /* renamed from: p */
    public double f7784p;

    public SinglePointerPredictor(int i, int i2) {
        PointerKalmanFilter pointerKalmanFilter = new PointerKalmanFilter(0.01d, 1.0d);
        this.f7769a = pointerKalmanFilter;
        this.f7770b = new DVector2();
        this.f7773e = new LinkedList();
        this.f7774f = -1;
        this.f7775g = 0.0f;
        this.f7776h = new DVector2();
        this.f7777i = new DVector2();
        this.f7778j = new DVector2();
        this.f7779k = new DVector2();
        this.f7782n = 0.0d;
        this.f7783o = 0.0d;
        this.f7784p = 0.0d;
        pointerKalmanFilter.reset();
        this.f7771c = 0L;
        this.f7772d = 0L;
        this.f7780l = i;
        this.f7781m = i2;
    }

    /* renamed from: a */
    public final double m4858a(double d, double d2, double d3) {
        return Math.min(1.0d, Math.max((d - d2) / (d3 - d2), 0.0d));
    }

    @Nullable
    public MotionEvent appendPredictedEvent(@Nullable MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        for (int historySize = motionEvent == null ? 0 : motionEvent.getHistorySize(); historySize < this.f7774f; historySize++) {
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            MotionEvent.PointerCoords[] pointerCoordsArr = {pointerCoords};
            DVector2 dVector2 = this.f7776h;
            pointerCoords.x = (float) dVector2.f7785a1;
            pointerCoords.y = (float) dVector2.f7786a2;
            pointerCoords.pressure = (float) this.f7782n;
            if (motionEvent2 == null) {
                MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
                pointerProperties.id = this.f7780l;
                pointerProperties.toolType = this.f7781m;
                motionEvent2 = MotionEvent.obtain(0L, 0L, 2, 1, new MotionEvent.PointerProperties[]{pointerProperties}, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0);
            } else {
                motionEvent2.addBatch(0L, pointerCoordsArr, 0);
            }
        }
        return motionEvent2;
    }

    /* renamed from: b */
    public final void m4859b(float f, float f2, float f3, float f4, float f5, long j) {
        double d = f;
        DVector2 dVector2 = this.f7770b;
        if (d == dVector2.f7785a1 && f2 == dVector2.f7786a2 && j <= this.f7771c + 20) {
            return;
        }
        this.f7769a.update(f, f2, f3);
        DVector2 dVector22 = this.f7770b;
        dVector22.f7785a1 = d;
        dVector22.f7786a2 = f2;
        this.f7783o = f4;
        this.f7784p = f5;
        List<Float> list = this.f7773e;
        if (list != null && list.size() < 20) {
            long j2 = this.f7771c;
            if (j2 > 0) {
                this.f7773e.add(Float.valueOf((float) (j - j2)));
                Iterator<Float> it2 = this.f7773e.iterator();
                float f6 = 0.0f;
                while (it2.hasNext()) {
                    f6 += it2.next().floatValue();
                }
                this.f7775g = f6 / this.f7773e.size();
            }
        }
        this.f7771c = j;
    }

    /* renamed from: c */
    public final boolean m4860c() {
        return this.f7781m != 1;
    }

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 3) {
            this.f7769a.reset();
            this.f7771c = 0L;
            return false;
        }
        int findPointerIndex = motionEvent.findPointerIndex(this.f7780l);
        if (findPointerIndex == -1) {
            Log.i("SinglePointerPredictor", String.format(Locale.ROOT, "onTouchEvent: Cannot find pointerId=%d in motionEvent=%s", Integer.valueOf(this.f7780l), motionEvent));
            return false;
        }
        this.f7772d = motionEvent.getDownTime();
        Iterator<BatchedMotionEvent> it2 = BatchedMotionEvent.iterate(motionEvent).iterator();
        while (it2.hasNext()) {
            BatchedMotionEvent next = it2.next();
            MotionEvent.PointerCoords pointerCoords = next.coords[findPointerIndex];
            m4859b(pointerCoords.x, pointerCoords.y, pointerCoords.pressure, pointerCoords.orientation, pointerCoords.getAxisValue(25), next.timeMs);
        }
        return true;
    }

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    @Nullable
    public MotionEvent predict(int i) {
        float f;
        float f2;
        long j;
        if (this.f7773e == null) {
            this.f7774f = (int) Math.ceil(i / this.f7775g);
        }
        MotionEvent motionEvent = null;
        if (this.f7774f == -1 && this.f7769a.getNumIterations() < 4) {
            return null;
        }
        this.f7776h.set(this.f7770b);
        this.f7777i.set(this.f7769a.getVelocity());
        this.f7778j.set(this.f7769a.getAcceleration());
        this.f7779k.set(this.f7769a.getJank());
        this.f7782n = this.f7769a.getPressure();
        double pressureChange = this.f7769a.getPressureChange();
        double magnitude = this.f7777i.magnitude() / this.f7775g;
        if (m4860c()) {
            f2 = 0.1f;
            f = 0.0f;
        } else {
            f = 2.0f;
            f2 = 0.02f;
        }
        double m4858a = m4858a(magnitude, 0.0f, f) * (1.0d - m4858a(this.f7779k.magnitude(), f2, 0.2f));
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        MotionEvent.PointerProperties[] pointerPropertiesArr = {pointerProperties};
        pointerProperties.id = this.f7780l;
        pointerProperties.toolType = this.f7781m;
        int ceil = (int) Math.ceil((i / this.f7775g) * m4858a);
        int i2 = this.f7774f;
        if (i2 != -1 && ceil > i2) {
            ceil = i2;
        }
        long round = this.f7771c + Math.round(this.f7775g);
        int i3 = 0;
        while (i3 < ceil) {
            DVector2 dVector2 = this.f7778j;
            double d = dVector2.f7785a1;
            DVector2 dVector22 = this.f7779k;
            MotionEvent.PointerProperties[] pointerPropertiesArr2 = pointerPropertiesArr;
            double d2 = d + (dVector22.f7785a1 * 0.10000000149011612d);
            dVector2.f7785a1 = d2;
            double d3 = dVector2.f7786a2 + (dVector22.f7786a2 * 0.10000000149011612d);
            dVector2.f7786a2 = d3;
            DVector2 dVector23 = this.f7777i;
            int i4 = ceil;
            double d4 = dVector23.f7785a1 + (d2 * 0.5d);
            dVector23.f7785a1 = d4;
            double d5 = dVector23.f7786a2 + (d3 * 0.5d);
            dVector23.f7786a2 = d5;
            DVector2 dVector24 = this.f7776h;
            long j2 = round;
            dVector24.f7785a1 += d4 * 1.0d;
            dVector24.f7786a2 += d5 * 1.0d;
            double d6 = this.f7782n + pressureChange;
            this.f7782n = d6;
            if (d6 < 0.1d) {
                break;
            }
            this.f7782n = Math.min(d6, 1.0d);
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            MotionEvent.PointerCoords[] pointerCoordsArr = {pointerCoords};
            DVector2 dVector25 = this.f7776h;
            pointerCoords.x = (float) dVector25.f7785a1;
            pointerCoords.y = (float) dVector25.f7786a2;
            pointerCoords.pressure = (float) this.f7782n;
            pointerCoords.orientation = (float) this.f7783o;
            pointerCoords.setAxisValue(25, (float) this.f7784p);
            if (motionEvent == null) {
                motionEvent = MotionEvent.obtain(this.f7772d, j2, 2, 1, pointerPropertiesArr2, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0);
                j = j2;
            } else {
                j = j2;
                motionEvent.addBatch(j, pointerCoordsArr, 0);
            }
            i3++;
            ceil = i4;
            pointerPropertiesArr = pointerPropertiesArr2;
            round = j + Math.round(this.f7775g);
        }
        return motionEvent;
    }

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    public void setReportRate(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("reportRateMs should always be a strictlypositive number");
        }
        this.f7775g = i;
        this.f7773e = null;
    }
}
