package com.sunia.HTREnginev2;

import android.graphics.RectF;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes6.dex */
public class dng {

    /* renamed from: a */
    public static final ang f68048a = new C13624a();

    /* renamed from: b */
    public static final ang f68049b = new C13625b();

    /* renamed from: com.sunia.HTREnginev2.dng$a */
    /* loaded from: classes6.dex */
    public class C13624a implements ang {
        @Override // com.sunia.HTREnginev2.ang
        /* renamed from: a */
        public eng mo53051a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float m54998o = jnn.m54998o(f4, f6, f2, f3, f, true);
            float f8 = m54998o / f4;
            float f9 = m54998o / f6;
            return new eng(f8, f9, m54998o, f5 * f8, m54998o, f7 * f9);
        }

        @Override // com.sunia.HTREnginev2.ang
        /* renamed from: b */
        public void mo53052b(RectF rectF, float f, eng engVar) {
            rectF.bottom -= Math.abs(engVar.f69128f - engVar.f69126d) * f;
        }

        @Override // com.sunia.HTREnginev2.ang
        /* renamed from: c */
        public boolean mo53053c(eng engVar) {
            return engVar.f69126d > engVar.f69128f;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.dng$b */
    /* loaded from: classes6.dex */
    public class C13625b implements ang {
        @Override // com.sunia.HTREnginev2.ang
        /* renamed from: a */
        public eng mo53051a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float m54998o = jnn.m54998o(f5, f7, f2, f3, f, true);
            float f8 = m54998o / f5;
            float f9 = m54998o / f7;
            return new eng(f8, f9, f4 * f8, m54998o, f6 * f9, m54998o);
        }

        @Override // com.sunia.HTREnginev2.ang
        /* renamed from: b */
        public void mo53052b(RectF rectF, float f, eng engVar) {
            float abs = (Math.abs(engVar.f69127e - engVar.f69125c) / 2.0f) * f;
            rectF.left += abs;
            rectF.right -= abs;
        }

        @Override // com.sunia.HTREnginev2.ang
        /* renamed from: c */
        public boolean mo53053c(eng engVar) {
            return engVar.f69125c > engVar.f69127e;
        }
    }

    /* renamed from: a */
    public static ang m53680a(int i, boolean z, RectF rectF, RectF rectF2) {
        if (i == 0) {
            return m53681b(z, rectF, rectF2) ? f68048a : f68049b;
        }
        if (i == 1) {
            return f68048a;
        }
        if (i == 2) {
            return f68049b;
        }
        throw new IllegalArgumentException("Invalid fit mode: " + i);
    }

    /* renamed from: b */
    public static boolean m53681b(boolean z, RectF rectF, RectF rectF2) {
        float width = rectF.width();
        float height = rectF.height();
        float width2 = rectF2.width();
        float height2 = rectF2.height();
        float f = (height2 * width) / width2;
        float f2 = (width2 * height) / width;
        if (z) {
            if (f >= height) {
                return true;
            }
        } else if (f2 >= height2) {
            return true;
        }
        return false;
    }
}
