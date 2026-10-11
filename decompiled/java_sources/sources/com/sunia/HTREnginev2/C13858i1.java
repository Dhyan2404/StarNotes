package com.sunia.HTREnginev2;

import android.graphics.Paint;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;

/* renamed from: com.sunia.HTREnginev2.i1 */
/* loaded from: classes10.dex */
public class C13858i1 {

    /* renamed from: a */
    public final Paint f72762a;

    /* renamed from: b */
    public final Paint f72763b;

    /* renamed from: c */
    public final String f72764c;

    /* renamed from: d */
    public final C13963k1 f72765d;

    public C13858i1(float f, C13963k1 c13963k1) {
        this.f72764c = "";
        this.f72765d = c13963k1;
        Paint paint = new Paint();
        this.f72762a = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0);
        Paint paint2 = new Paint();
        this.f72763b = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(-7829368);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        paint2.setStrokeJoin(Paint.Join.ROUND);
        paint2.setStrokeWidth(f);
        paint2.setTextSize(18.0f);
    }

    /* renamed from: a */
    public Paint m54663a() {
        return this.f72762a;
    }

    /* renamed from: b */
    public Paint m54666b() {
        return this.f72763b;
    }

    /* renamed from: c */
    public String m54667c() {
        return this.f72764c;
    }

    /* renamed from: a */
    public C13858i1 m54664a(AbstractC14807f abstractC14807f) {
        return m54665a(abstractC14807f.mo54389j());
    }

    /* renamed from: a */
    public C13858i1 m54665a(String str) {
        return this.f72765d.m55101b(str, this);
    }

    public C13858i1(Paint paint, Paint paint2, String str, C13963k1 c13963k1) {
        this.f72762a = paint;
        this.f72763b = paint2;
        this.f72764c = str;
        this.f72765d = c13963k1;
    }
}
