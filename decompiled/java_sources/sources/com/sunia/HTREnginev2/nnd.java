package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.RequiresApi;
import com.sunia.HTREnginev2.fsl;

@RequiresApi(17)
/* loaded from: classes3.dex */
public class nnd extends pnd {

    /* renamed from: com.sunia.HTREnginev2.nnd$a */
    /* loaded from: classes3.dex */
    public class C14145a implements fsl.InterfaceC13740a {
        public C14145a() {
        }

        @Override // com.sunia.HTREnginev2.fsl.InterfaceC13740a
        /* renamed from: a */
        public void mo54198a(Canvas canvas, RectF rectF, float f, Paint paint) {
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    @Override // com.sunia.HTREnginev2.pnd, com.sunia.HTREnginev2.rnd
    /* renamed from: j */
    public void mo55770j() {
        fsl.f70325s = new C14145a();
    }
}
