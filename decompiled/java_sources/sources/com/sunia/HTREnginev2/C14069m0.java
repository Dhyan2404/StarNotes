package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.ref.jlatexmath.Box;
import com.sunia.ref.jlatexmath.awt.AndroidGraphics2D;
import com.sunia.ref.jlatexmath.awt.Color;
import java.util.HashMap;

/* renamed from: com.sunia.HTREnginev2.m0 */
/* loaded from: classes10.dex */
public class C14069m0 extends AbstractC13961k {

    /* renamed from: e */
    public final Box f77027e;

    /* renamed from: f */
    public final C14376s1 f77028f;

    /* renamed from: g */
    public final float f77029g;

    /* renamed from: h */
    public final BoundBox f77030h;

    public C14069m0(Box box, C14376s1 c14376s1, float f, BoundBox boundBox) {
        this.f77027e = box;
        this.f77028f = c14376s1;
        this.f77029g = f;
        this.f77030h = boundBox;
        LogUtil.m57656i("math", "Equation scale: " + f);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: a */
    public void mo52910a(Paint paint, Canvas canvas, float f) {
        int save = canvas.save();
        AndroidGraphics2D androidGraphics2D = new AndroidGraphics2D();
        androidGraphics2D.setCanvas(canvas);
        androidGraphics2D.setColor(new Color(paint.getColor()));
        androidGraphics2D.translate(this.f77028f.m57119b(), this.f77028f.m57120c());
        double d = this.f77029g;
        androidGraphics2D.scale(d, d);
        this.f77027e.draw(androidGraphics2D, 0.0f, 0.0f, new HashMap());
        canvas.restoreToCount(save);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: c */
    public String mo52911c() {
        return "math";
    }

    /* renamed from: d */
    public float m55527d() {
        return this.f77029g;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: a */
    public BoundBox mo52909a() {
        return this.f77030h;
    }
}
