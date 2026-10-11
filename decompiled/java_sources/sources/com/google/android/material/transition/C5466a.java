package com.google.android.material.transition;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.transition.MaterialContainerTransform;
import com.sunia.HTREnginev2.knn;

/* renamed from: com.google.android.material.transition.a */
/* loaded from: classes6.dex */
public class C5466a {

    /* renamed from: a */
    public final Path f33180a = new Path();

    /* renamed from: b */
    public final Path f33181b = new Path();

    /* renamed from: c */
    public final Path f33182c = new Path();

    /* renamed from: d */
    public final ShapeAppearancePathProvider f33183d = ShapeAppearancePathProvider.getInstance();

    /* renamed from: e */
    public ShapeAppearanceModel f33184e;

    /* renamed from: a */
    public void m25579a(Canvas canvas) {
        canvas.clipPath(this.f33180a);
    }

    /* renamed from: b */
    public void m25580b(float f, ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.ProgressThresholds progressThresholds) {
        ShapeAppearanceModel m55270q = knn.m55270q(shapeAppearanceModel, shapeAppearanceModel2, rectF, rectF3, progressThresholds.getStart(), progressThresholds.getEnd(), f);
        this.f33184e = m55270q;
        this.f33183d.calculatePath(m55270q, 1.0f, rectF2, this.f33181b);
        this.f33183d.calculatePath(this.f33184e, 1.0f, rectF3, this.f33182c);
        this.f33180a.op(this.f33181b, this.f33182c, Path.Op.UNION);
    }

    /* renamed from: c */
    public ShapeAppearanceModel m25581c() {
        return this.f33184e;
    }

    /* renamed from: d */
    public Path m25582d() {
        return this.f33180a;
    }
}
