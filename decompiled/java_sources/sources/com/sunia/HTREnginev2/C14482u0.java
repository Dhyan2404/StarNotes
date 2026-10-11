package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;

/* renamed from: com.sunia.HTREnginev2.u0 */
/* loaded from: classes10.dex */
public class C14482u0 extends AbstractC13961k {

    /* renamed from: e */
    public final BoundBox f85962e;

    public C14482u0(BoundBox boundBox) {
        this.f85962e = boundBox;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: a */
    public void mo52910a(Paint paint, Canvas canvas, float f) {
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: c */
    public String mo52911c() {
        return IStyleSheet.CLASS_PLACEHOLDER;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13961k
    /* renamed from: a */
    public BoundBox mo52909a() {
        return this.f85962e;
    }
}
