package com.sunia.HTREnginev2;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* loaded from: classes3.dex */
public class jzk<T> extends Property<T, Float> {

    /* renamed from: a */
    public final Property<T, PointF> f74845a;

    /* renamed from: b */
    public final PathMeasure f74846b;

    /* renamed from: c */
    public final float f74847c;

    /* renamed from: d */
    public final float[] f74848d;

    /* renamed from: e */
    public final PointF f74849e;

    /* renamed from: f */
    public float f74850f;

    public jzk(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f74848d = new float[2];
        this.f74849e = new PointF();
        this.f74845a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f74846b = pathMeasure;
        this.f74847c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(T t) {
        return Float.valueOf(this.f74850f);
    }

    @Override // android.util.Property
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(T t, Float f) {
        this.f74850f = f.floatValue();
        this.f74846b.getPosTan(this.f74847c * f.floatValue(), this.f74848d, null);
        PointF pointF = this.f74849e;
        float[] fArr = this.f74848d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f74845a.set(t, pointF);
    }
}
