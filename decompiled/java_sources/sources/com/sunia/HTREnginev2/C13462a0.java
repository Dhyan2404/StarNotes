package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.onyx.android.sdk.hwr.data.bean.HWRItem;
import com.sunia.calculatorv2.ink.graphics.BoundBox;

/* renamed from: com.sunia.HTREnginev2.a0 */
/* loaded from: classes10.dex */
public class C13462a0 extends AbstractC13961k {

    /* renamed from: e */
    public final String f64128e;

    /* renamed from: f */
    public final C14376s1 f64129f;

    /* renamed from: g */
    public final float f64130g;

    /* renamed from: h */
    public final BoundBox f64131h;

    public C13462a0(String str, C14376s1 c14376s1, float f, BoundBox boundBox) {
        this.f64128e = str;
        this.f64129f = c14376s1;
        this.f64130g = f;
        this.f64131h = boundBox;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: a */
    public void mo52910a(Paint paint, Canvas canvas, float f) {
        Matrix matrix = new Matrix();
        float m57119b = this.f64129f.m57119b();
        float m57120c = this.f64129f.m57120c();
        Paint paint2 = new Paint(paint);
        paint2.setStrokeWidth(paint2.getStrokeWidth() / this.f64130g);
        float f2 = this.f64130g;
        matrix.postScale(f2, f2, m57119b, m57120c);
        canvas.save();
        canvas.concat(matrix);
        canvas.drawText(this.f64128e, m57119b, m57120c, paint2);
        canvas.restore();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: c */
    public String mo52911c() {
        return HWRItem.TYPE_GLYPH;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: a */
    public BoundBox mo52909a() {
        return this.f64131h;
    }
}
