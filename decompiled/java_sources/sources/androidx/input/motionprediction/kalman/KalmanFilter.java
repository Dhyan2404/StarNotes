package androidx.input.motionprediction.kalman;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.input.motionprediction.kalman.matrix.Matrix;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class KalmanFilter {

    /* renamed from: F */
    @NonNull
    public Matrix f7719F;

    /* renamed from: H */
    @NonNull
    public Matrix f7720H;

    /* renamed from: P */
    @NonNull
    public Matrix f7721P;

    /* renamed from: Q */
    @NonNull
    public Matrix f7722Q;

    /* renamed from: R */
    @NonNull
    public Matrix f7723R;

    /* renamed from: a */
    @NonNull
    public Matrix f7724a;

    /* renamed from: b */
    @NonNull
    public Matrix f7725b;

    /* renamed from: c */
    @NonNull
    public Matrix f7726c;

    /* renamed from: d */
    @NonNull
    public Matrix f7727d;

    /* renamed from: e */
    @NonNull
    public Matrix f7728e;

    /* renamed from: f */
    @NonNull
    public Matrix f7729f;

    /* renamed from: g */
    @NonNull
    public Matrix f7730g;

    /* renamed from: h */
    @NonNull
    public Matrix f7731h;

    /* renamed from: i */
    @NonNull
    public Matrix f7732i;

    /* renamed from: x */
    @NonNull
    public Matrix f7733x;

    public KalmanFilter(int i, int i2) {
        this.f7733x = new Matrix(i, 1);
        this.f7721P = Matrix.identity(i);
        this.f7722Q = Matrix.identity(i);
        this.f7723R = Matrix.identity(i2);
        this.f7719F = new Matrix(i, i);
        this.f7720H = new Matrix(i2, i);
        this.f7727d = new Matrix(i, i2);
        this.f7728e = new Matrix(i, i2);
        this.f7724a = new Matrix(i, 1);
        this.f7725b = new Matrix(i, i);
        this.f7726c = new Matrix(i, i);
        this.f7729f = new Matrix(i2, 1);
        this.f7730g = new Matrix(i2, i);
        this.f7731h = new Matrix(i2, i2);
        this.f7732i = new Matrix(i2, i2 * 2);
    }

    public void predict() {
        Matrix matrix = this.f7733x;
        this.f7733x = this.f7719F.dot(matrix, this.f7724a);
        this.f7724a = matrix;
        this.f7719F.dot(this.f7721P, this.f7725b).dotTranspose(this.f7719F, this.f7721P).plus(this.f7722Q);
    }

    public void reset() {
        this.f7733x.fill(0.0d);
        Matrix.setIdentity(this.f7721P);
    }

    public void update(@NonNull Matrix matrix) {
        matrix.minus(this.f7720H.dot(this.f7733x, this.f7729f));
        this.f7720H.dot(this.f7721P, this.f7730g).dotTranspose(this.f7720H, this.f7731h).plus(this.f7723R).inverse(this.f7732i);
        this.f7721P.dotTranspose(this.f7720H, this.f7728e).dot(this.f7731h, this.f7727d);
        this.f7733x.plus(this.f7727d.dot(matrix, this.f7724a));
        this.f7721P.minus(this.f7727d.dot(this.f7720H, this.f7725b).dot(this.f7721P, this.f7726c));
    }
}
