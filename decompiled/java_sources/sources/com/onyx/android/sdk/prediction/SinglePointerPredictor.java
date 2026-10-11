package com.onyx.android.sdk.prediction;

import android.annotation.SuppressLint;
import android.util.Log;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.input.motionprediction.kalman.BatchedMotionEvent;
import androidx.input.motionprediction.kalman.KalmanPredictor;
import androidx.input.motionprediction.kalman.PointerKalmanFilter;
import androidx.input.motionprediction.kalman.matrix.DVector2;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes8.dex */
public class SinglePointerPredictor implements KalmanPredictor {

    /* renamed from: A */
    public static final float f44340A = 0.0f;

    /* renamed from: B */
    public static final float f44341B = 0.0f;

    /* renamed from: C */
    public static final int f44342C = 20;

    /* renamed from: D */
    public static final int f44343D = 4;

    /* renamed from: q */
    public static final String f44344q = "SinglePointerPredictor";

    /* renamed from: r */
    public static final float f44345r = 0.1f;

    /* renamed from: s */
    public static final float f44346s = 0.5f;

    /* renamed from: t */
    public static final float f44347t = 1.0f;

    /* renamed from: u */
    public static final float f44348u = 0.02f;

    /* renamed from: v */
    public static final float f44349v = 0.2f;

    /* renamed from: w */
    public static final float f44350w = 0.1f;

    /* renamed from: x */
    public static final float f44351x = 0.2f;

    /* renamed from: y */
    public static final float f44352y = 0.0f;

    /* renamed from: z */
    public static final float f44353z = 2.0f;

    /* renamed from: a */
    public final PointerKalmanFilter f44354a;

    /* renamed from: b */
    public final DVector2 f44355b;

    /* renamed from: c */
    public long f44356c;

    /* renamed from: d */
    public long f44357d;

    /* renamed from: e */
    public List<Float> f44358e;

    /* renamed from: f */
    public int f44359f;

    /* renamed from: g */
    public float f44360g;

    /* renamed from: h */
    public final DVector2 f44361h;

    /* renamed from: i */
    public final DVector2 f44362i;

    /* renamed from: j */
    public final DVector2 f44363j;

    /* renamed from: k */
    public final DVector2 f44364k;

    /* renamed from: l */
    public int f44365l;

    /* renamed from: m */
    public int f44366m;

    /* renamed from: n */
    public double f44367n;

    /* renamed from: o */
    public double f44368o;

    /* renamed from: p */
    public double f44369p;

    public SinglePointerPredictor(int i, int i2) {
        PointerKalmanFilter pointerKalmanFilter = new PointerKalmanFilter(0.01d, 1.0d);
        this.f44354a = pointerKalmanFilter;
        this.f44355b = new DVector2();
        this.f44358e = new LinkedList();
        this.f44359f = -1;
        this.f44360g = 0.0f;
        this.f44361h = new DVector2();
        this.f44362i = new DVector2();
        this.f44363j = new DVector2();
        this.f44364k = new DVector2();
        this.f44367n = 0.0d;
        this.f44368o = 0.0d;
        this.f44369p = 0.0d;
        pointerKalmanFilter.reset();
        this.f44356c = 0L;
        this.f44357d = 0L;
        this.f44365l = i;
        this.f44366m = i2;
    }

    /* renamed from: a */
    public final double m34470a(double d, double d2, double d3) {
        return Math.min(1.0d, Math.max((d - d2) / (d3 - d2), 0.0d));
    }

    @Nullable
    public MotionEvent appendPredictedEvent(@Nullable MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        for (int historySize = motionEvent == null ? 0 : motionEvent.getHistorySize(); historySize < this.f44359f; historySize++) {
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            MotionEvent.PointerCoords[] pointerCoordsArr = {pointerCoords};
            DVector2 dVector2 = this.f44361h;
            pointerCoords.x = (float) dVector2.f7785a1;
            pointerCoords.y = (float) dVector2.f7786a2;
            pointerCoords.pressure = (float) this.f44367n;
            if (motionEvent2 == null) {
                MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
                pointerProperties.id = this.f44365l;
                pointerProperties.toolType = this.f44366m;
                motionEvent2 = MotionEvent.obtain(0L, 0L, 2, 1, new MotionEvent.PointerProperties[]{pointerProperties}, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0);
            } else {
                motionEvent2.addBatch(0L, pointerCoordsArr, 0);
            }
        }
        return motionEvent2;
    }

    /* renamed from: b */
    public final void m34471b(float f, float f2, float f3, float f4, float f5, long j) {
        double d = f;
        DVector2 dVector2 = this.f44355b;
        if (d == dVector2.f7785a1 && f2 == dVector2.f7786a2 && j <= this.f44356c + 20) {
            return;
        }
        this.f44354a.update(f, f2, f3);
        DVector2 dVector22 = this.f44355b;
        dVector22.f7785a1 = d;
        dVector22.f7786a2 = f2;
        this.f44368o = f4;
        this.f44369p = f5;
        List<Float> list = this.f44358e;
        if (list != null && list.size() < 20) {
            long j2 = this.f44356c;
            if (j2 > 0) {
                this.f44358e.add(Float.valueOf((float) (j - j2)));
                Iterator<Float> it2 = this.f44358e.iterator();
                float f6 = 0.0f;
                while (it2.hasNext()) {
                    f6 += it2.next().floatValue();
                }
                this.f44360g = f6 / this.f44358e.size();
            }
        }
        this.f44356c = j;
    }

    /* renamed from: c */
    public final boolean m34472c() {
        return this.f44366m != 1;
    }

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 3) {
            this.f44354a.reset();
            this.f44356c = 0L;
            return false;
        }
        int findPointerIndex = motionEvent.findPointerIndex(this.f44365l);
        if (findPointerIndex == -1) {
            Log.i("SinglePointerPredictor", String.format(Locale.ROOT, "onTouchEvent: Cannot find pointerId=%d in motionEvent=%s", Integer.valueOf(this.f44365l), motionEvent));
            return false;
        }
        this.f44357d = motionEvent.getDownTime();
        Iterator<BatchedMotionEvent> it2 = BatchedMotionEvent.iterate(motionEvent).iterator();
        while (it2.hasNext()) {
            BatchedMotionEvent next = it2.next();
            MotionEvent.PointerCoords pointerCoords = next.coords[findPointerIndex];
            m34471b(pointerCoords.x, pointerCoords.y, pointerCoords.pressure, pointerCoords.orientation, pointerCoords.getAxisValue(25), next.timeMs);
        }
        return true;
    }

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    @Nullable
    public MotionEvent predict(int i) {
        float f;
        float f2;
        long j;
        if (this.f44358e == null) {
            this.f44359f = (int) Math.ceil(i / this.f44360g);
        }
        MotionEvent motionEvent = null;
        if (this.f44359f == -1 && this.f44354a.getNumIterations() < 4) {
            return null;
        }
        this.f44361h.set(this.f44355b);
        this.f44362i.set(this.f44354a.getVelocity());
        this.f44363j.set(this.f44354a.getAcceleration());
        this.f44364k.set(this.f44354a.getJank());
        this.f44367n = this.f44354a.getPressure();
        double pressureChange = this.f44354a.getPressureChange();
        double magnitude = this.f44362i.magnitude() / this.f44360g;
        if (m34472c()) {
            f2 = 0.1f;
            f = 0.0f;
        } else {
            f = 2.0f;
            f2 = 0.02f;
        }
        double m34470a = m34470a(magnitude, 0.0f, f) * (1.0d - m34470a(this.f44364k.magnitude(), f2, 0.2f));
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        MotionEvent.PointerProperties[] pointerPropertiesArr = {pointerProperties};
        pointerProperties.id = this.f44365l;
        pointerProperties.toolType = this.f44366m;
        int ceil = (int) Math.ceil((i / this.f44360g) * m34470a);
        int i2 = this.f44359f;
        if (i2 != -1 && ceil > i2) {
            ceil = i2;
        }
        long round = this.f44356c + Math.round(this.f44360g);
        int i3 = 0;
        while (i3 < ceil) {
            DVector2 dVector2 = this.f44363j;
            double d = dVector2.f7785a1;
            DVector2 dVector22 = this.f44364k;
            MotionEvent.PointerProperties[] pointerPropertiesArr2 = pointerPropertiesArr;
            double d2 = d + (dVector22.f7785a1 * 0.10000000149011612d);
            dVector2.f7785a1 = d2;
            double d3 = dVector2.f7786a2 + (dVector22.f7786a2 * 0.10000000149011612d);
            dVector2.f7786a2 = d3;
            DVector2 dVector23 = this.f44362i;
            int i4 = ceil;
            double d4 = dVector23.f7785a1 + (d2 * 0.5d);
            dVector23.f7785a1 = d4;
            double d5 = dVector23.f7786a2 + (d3 * 0.5d);
            dVector23.f7786a2 = d5;
            DVector2 dVector24 = this.f44361h;
            long j2 = round;
            dVector24.f7785a1 += d4 * 1.0d;
            dVector24.f7786a2 += d5 * 1.0d;
            double d6 = this.f44367n + pressureChange;
            this.f44367n = d6;
            if (d6 < 0.1d) {
                break;
            }
            this.f44367n = Math.min(d6, 1.0d);
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            MotionEvent.PointerCoords[] pointerCoordsArr = {pointerCoords};
            DVector2 dVector25 = this.f44361h;
            pointerCoords.x = (float) dVector25.f7785a1;
            pointerCoords.y = (float) dVector25.f7786a2;
            pointerCoords.pressure = (float) this.f44367n;
            pointerCoords.orientation = (float) this.f44368o;
            pointerCoords.setAxisValue(25, (float) this.f44369p);
            if (motionEvent == null) {
                motionEvent = MotionEvent.obtain(this.f44357d, j2, 2, 1, pointerPropertiesArr2, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0);
                j = j2;
            } else {
                j = j2;
                motionEvent.addBatch(j, pointerCoordsArr, 0);
            }
            i3++;
            ceil = i4;
            pointerPropertiesArr = pointerPropertiesArr2;
            round = j + Math.round(this.f44360g);
        }
        return motionEvent;
    }

    @Override // androidx.input.motionprediction.kalman.KalmanPredictor
    public void setReportRate(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("reportRateMs should always be a strictlypositive number");
        }
        this.f44360g = i;
        this.f44358e = null;
    }
}
