package com.sunia.HTREnginev2;

import android.graphics.Matrix;
import android.graphics.Path;

/* renamed from: com.sunia.HTREnginev2.c */
/* loaded from: classes10.dex */
public class C13545c extends AbstractC13652e1 {

    /* renamed from: k */
    public final float f66302k;

    /* renamed from: l */
    public final float f66303l;

    /* renamed from: m */
    public final float f66304m;

    /* renamed from: n */
    public final float f66305n;

    /* renamed from: o */
    public final float f66306o;

    /* renamed from: p */
    public final float f66307p;

    /* renamed from: q */
    public final float f66308q;

    /* renamed from: a */
    public C14376s1 m53368a(double d) {
        double cos = Math.cos(this.f66306o);
        double sin = Math.sin(this.f66306o);
        double cos2 = this.f66304m * Math.cos(d);
        double sin2 = this.f66305n * Math.sin(d);
        return new C14376s1((float) ((this.f66302k + (cos2 * cos)) - (sin2 * sin)), (float) (this.f66303l + (cos2 * sin) + (sin2 * cos)));
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: c */
    public String mo52911c() {
        return "arc";
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: d */
    public C14376s1 mo53369d() {
        return m53368a(this.f66307p + this.f66308q);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: e */
    public double mo53370e() {
        return Math.atan2(this.f66305n * Math.cos(this.f66307p + this.f66308q), (-this.f66304m) * Math.sin(this.f66307p + this.f66308q)) + (this.f66308q > 0.0f ? 3.141592653589793d : 0.0d) + this.f66306o;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: f */
    public C14376s1 mo53371f() {
        return m53368a(this.f66307p);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: g */
    public double mo53372g() {
        return Math.atan2(this.f66305n * Math.cos(this.f66307p), (-this.f66304m) * Math.sin(this.f66307p)) + (this.f66308q > 0.0f ? 0.0d : 3.141592653589793d) + this.f66306o;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13652e1
    /* renamed from: h */
    public Path mo53373h() {
        Matrix matrix = new Matrix();
        matrix.postRotate((float) ((this.f66306o * 180.0f) / 3.141592653589793d));
        matrix.postTranslate(this.f66302k, this.f66303l);
        Path path = new Path();
        float f = (float) ((this.f66307p * 180.0f) / 3.141592653589793d);
        float f2 = (float) ((this.f66308q * 180.0f) / 3.141592653589793d);
        if (f2 > 359.0f || f2 < -359.0f) {
            float f3 = this.f66304m;
            float f4 = this.f66305n;
            path.addOval(-f3, -f4, f3, f4, Path.Direction.CCW);
        } else {
            float f5 = this.f66304m;
            float f6 = this.f66305n;
            path.arcTo(-f5, -f6, f5, f6, f, f2, true);
        }
        Path path2 = new Path();
        path2.addPath(path, matrix);
        return path2;
    }

    /* renamed from: i */
    public float m53374i() {
        return this.f66307p;
    }

    /* renamed from: j */
    public float m53375j() {
        return this.f66308q;
    }
}
