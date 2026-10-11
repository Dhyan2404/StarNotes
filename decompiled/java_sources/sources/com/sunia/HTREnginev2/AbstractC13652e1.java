package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.sunia.calculatorv2.ink.graphics.BoundBox;

/* renamed from: com.sunia.HTREnginev2.e1 */
/* loaded from: classes10.dex */
public abstract class AbstractC13652e1 extends AbstractC13961k {

    /* renamed from: e */
    public final String f68460e;

    /* renamed from: f */
    public final String f68461f;

    /* renamed from: g */
    public final float f68462g;

    /* renamed from: h */
    public final float f68463h;

    /* renamed from: i */
    public float f68464i;

    /* renamed from: j */
    public Path f68465j;

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Path m53899a(float r22) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.AbstractC13652e1.m53899a(float):android.graphics.Path");
    }

    /* renamed from: d */
    public abstract C14376s1 mo53369d();

    /* renamed from: e */
    public abstract double mo53370e();

    /* renamed from: f */
    public abstract C14376s1 mo53371f();

    /* renamed from: g */
    public abstract double mo53372g();

    /* renamed from: h */
    public abstract Path mo53373h();

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: a */
    public void mo52910a(Paint paint, Canvas canvas, float f) {
        canvas.drawPath(m53899a(f), paint);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: a */
    public BoundBox mo52909a() {
        RectF rectF = new RectF();
        mo53373h().computeBounds(rectF, false);
        return new BoundBox(rectF.left, rectF.right, rectF.top, rectF.bottom);
    }
}
