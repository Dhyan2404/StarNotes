package com.google.android.material.transition.platform;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.RequiresApi;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.transition.platform.MaterialContainerTransform;
import com.sunia.HTREnginev2.jnn;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.a */
/* loaded from: classes6.dex */
public class C5481a {

    /* renamed from: a */
    public final Path f33339a = new Path();

    /* renamed from: b */
    public final Path f33340b = new Path();

    /* renamed from: c */
    public final Path f33341c = new Path();

    /* renamed from: d */
    public final ShapeAppearancePathProvider f33342d = ShapeAppearancePathProvider.getInstance();

    /* renamed from: e */
    public ShapeAppearanceModel f33343e;

    /* renamed from: a */
    public void m25647a(Canvas canvas) {
        canvas.clipPath(this.f33339a);
    }

    /* renamed from: b */
    public void m25648b(float f, ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.ProgressThresholds progressThresholds) {
        ShapeAppearanceModel m55000q = jnn.m55000q(shapeAppearanceModel, shapeAppearanceModel2, rectF, rectF3, progressThresholds.getStart(), progressThresholds.getEnd(), f);
        this.f33343e = m55000q;
        this.f33342d.calculatePath(m55000q, 1.0f, rectF2, this.f33340b);
        this.f33342d.calculatePath(this.f33343e, 1.0f, rectF3, this.f33341c);
        this.f33339a.op(this.f33340b, this.f33341c, Path.Op.UNION);
    }

    /* renamed from: c */
    public ShapeAppearanceModel m25649c() {
        return this.f33343e;
    }

    /* renamed from: d */
    public Path m25650d() {
        return this.f33339a;
    }
}
