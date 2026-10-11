package androidx.input.motionprediction.kalman;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.input.motionprediction.kalman.matrix.DVector2;
import androidx.input.motionprediction.kalman.matrix.Matrix;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class PointerKalmanFilter {

    /* renamed from: j */
    public double f7749j;

    /* renamed from: k */
    public double f7750k;

    /* renamed from: d */
    public final DVector2 f7743d = new DVector2();

    /* renamed from: e */
    public final DVector2 f7744e = new DVector2();

    /* renamed from: f */
    public final DVector2 f7745f = new DVector2();

    /* renamed from: g */
    public final DVector2 f7746g = new DVector2();

    /* renamed from: h */
    public double f7747h = 0.0d;

    /* renamed from: i */
    public double f7748i = 0.0d;

    /* renamed from: l */
    public int f7751l = 0;

    /* renamed from: m */
    public final Matrix f7752m = new Matrix(1, 1);

    /* renamed from: n */
    public final Matrix f7753n = new Matrix(1, 1);

    /* renamed from: o */
    public final Matrix f7754o = new Matrix(1, 1);

    /* renamed from: a */
    public final KalmanFilter f7740a = m4857a();

    /* renamed from: b */
    public final KalmanFilter f7741b = m4857a();

    /* renamed from: c */
    public final KalmanFilter f7742c = m4857a();

    public PointerKalmanFilter(double d, double d2) {
        this.f7749j = d;
        this.f7750k = d2;
    }

    /* renamed from: a */
    public final KalmanFilter m4857a() {
        KalmanFilter kalmanFilter = new KalmanFilter(4, 1);
        kalmanFilter.f7719F = new Matrix(4, new double[]{1.0d, 1.0d, 0.5d, 0.16d, 0.0d, 1.0d, 1.0d, 0.5d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d});
        Matrix matrix = new Matrix(1, new double[]{0.16d, 0.5d, 1.0d, 1.0d});
        matrix.dotTranspose(matrix, kalmanFilter.f7722Q);
        kalmanFilter.f7722Q.scale(this.f7749j);
        kalmanFilter.f7720H = new Matrix(4, new double[]{1.0d, 0.0d, 0.0d, 0.0d});
        kalmanFilter.f7723R.put(0, 0, this.f7750k);
        return kalmanFilter;
    }

    @NonNull
    public DVector2 getAcceleration() {
        return this.f7745f;
    }

    @NonNull
    public DVector2 getJank() {
        return this.f7746g;
    }

    public int getNumIterations() {
        return this.f7751l;
    }

    @NonNull
    public DVector2 getPosition() {
        return this.f7743d;
    }

    public double getPressure() {
        return this.f7747h;
    }

    public double getPressureChange() {
        return this.f7748i;
    }

    @NonNull
    public DVector2 getVelocity() {
        return this.f7744e;
    }

    public void reset() {
        this.f7740a.reset();
        this.f7741b.reset();
        this.f7742c.reset();
        this.f7751l = 0;
    }

    public void update(float f, float f2, float f3) {
        if (this.f7751l == 0) {
            this.f7740a.f7733x.put(0, 0, f);
            this.f7741b.f7733x.put(0, 0, f2);
            this.f7742c.f7733x.put(0, 0, f3);
        } else {
            this.f7752m.put(0, 0, f);
            this.f7740a.predict();
            this.f7740a.update(this.f7752m);
            this.f7753n.put(0, 0, f2);
            this.f7741b.predict();
            this.f7741b.update(this.f7753n);
            this.f7754o.put(0, 0, f3);
            this.f7742c.predict();
            this.f7742c.update(this.f7754o);
        }
        this.f7751l++;
        this.f7743d.f7785a1 = this.f7740a.f7733x.get(0, 0);
        this.f7743d.f7786a2 = this.f7741b.f7733x.get(0, 0);
        this.f7744e.f7785a1 = this.f7740a.f7733x.get(1, 0);
        this.f7744e.f7786a2 = this.f7741b.f7733x.get(1, 0);
        this.f7745f.f7785a1 = this.f7740a.f7733x.get(2, 0);
        this.f7745f.f7786a2 = this.f7741b.f7733x.get(2, 0);
        this.f7746g.f7785a1 = this.f7740a.f7733x.get(3, 0);
        this.f7746g.f7786a2 = this.f7741b.f7733x.get(3, 0);
        this.f7747h = this.f7742c.f7733x.get(0, 0);
        this.f7748i = this.f7742c.f7733x.get(1, 0);
    }
}
