package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.fsl;

/* loaded from: classes3.dex */
public class pnd implements rnd {

    /* renamed from: a */
    public final RectF f80996a = new RectF();

    /* renamed from: com.sunia.HTREnginev2.pnd$a */
    /* loaded from: classes3.dex */
    public class C14254a implements fsl.InterfaceC13740a {
        public C14254a() {
        }

        @Override // com.sunia.HTREnginev2.fsl.InterfaceC13740a
        /* renamed from: a */
        public void mo54198a(Canvas canvas, RectF rectF, float f, Paint paint) {
            float f2 = 2.0f * f;
            float width = (rectF.width() - f2) - 1.0f;
            float height = (rectF.height() - f2) - 1.0f;
            if (f >= 1.0f) {
                float f3 = f + 0.5f;
                float f4 = -f3;
                pnd.this.f80996a.set(f4, f4, f3, f3);
                int save = canvas.save();
                canvas.translate(rectF.left + f3, rectF.top + f3);
                canvas.drawArc(pnd.this.f80996a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(pnd.this.f80996a, 180.0f, 90.0f, true, paint);
                canvas.translate(height, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(pnd.this.f80996a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(pnd.this.f80996a, 180.0f, 90.0f, true, paint);
                canvas.restoreToCount(save);
                float f5 = (rectF.left + f3) - 1.0f;
                float f6 = rectF.top;
                canvas.drawRect(f5, f6, (rectF.right - f3) + 1.0f, f6 + f3, paint);
                float f7 = (rectF.left + f3) - 1.0f;
                float f8 = rectF.bottom;
                canvas.drawRect(f7, f8 - f3, (rectF.right - f3) + 1.0f, f8, paint);
            }
            canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
        }
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: a */
    public float mo56109a(qnd qndVar) {
        return m56331q(qndVar).m54184g();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: b */
    public float mo56110b(qnd qndVar) {
        return m56331q(qndVar).m54186i();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: c */
    public float mo56111c(qnd qndVar) {
        return m56331q(qndVar).m54188k();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: d */
    public void mo56112d(qnd qndVar, float f) {
        m56331q(qndVar).m54195r(f);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: e */
    public void mo56113e(qnd qndVar) {
        m56331q(qndVar).m54190m(qndVar.mo1300d());
        mo56116h(qndVar);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: f */
    public float mo56114f(qnd qndVar) {
        return m56331q(qndVar).m54187j();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: g */
    public void mo56115g(qnd qndVar, @Nullable ColorStateList colorStateList) {
        m56331q(qndVar).m54192o(colorStateList);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: h */
    public void mo56116h(qnd qndVar) {
        Rect rect = new Rect();
        m56331q(qndVar).m54185h(rect);
        qndVar.mo1297a((int) Math.ceil(mo56111c(qndVar)), (int) Math.ceil(mo56114f(qndVar)));
        qndVar.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: i */
    public void mo56117i(qnd qndVar) {
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: j */
    public void mo55770j() {
        fsl.f70325s = new C14254a();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: k */
    public void mo56118k(qnd qndVar, float f) {
        m56331q(qndVar).m54193p(f);
        mo56116h(qndVar);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: l */
    public void mo56119l(qnd qndVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        fsl m56330p = m56330p(context, colorStateList, f, f2, f3);
        m56330p.m54190m(qndVar.mo1300d());
        qndVar.mo1298b(m56330p);
        mo56116h(qndVar);
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: m */
    public float mo56120m(qnd qndVar) {
        return m56331q(qndVar).m54189l();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: n */
    public ColorStateList mo56121n(qnd qndVar) {
        return m56331q(qndVar).m54183f();
    }

    @Override // com.sunia.HTREnginev2.rnd
    /* renamed from: o */
    public void mo56122o(qnd qndVar, float f) {
        m56331q(qndVar).m54194q(f);
        mo56116h(qndVar);
    }

    /* renamed from: p */
    public final fsl m56330p(Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        return new fsl(context.getResources(), colorStateList, f, f2, f3);
    }

    /* renamed from: q */
    public final fsl m56331q(qnd qndVar) {
        return (fsl) qndVar.mo1299c();
    }
}
