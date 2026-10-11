package com.sunia.HTREnginev2;

import android.graphics.RectF;

/* loaded from: classes6.dex */
public class cng {

    /* renamed from: a */
    public static final bng f67002a = new C13574a();

    /* renamed from: b */
    public static final bng f67003b = new C13575b();

    /* renamed from: com.sunia.HTREnginev2.cng$a */
    /* loaded from: classes6.dex */
    public class C13574a implements bng {
        @Override // com.sunia.HTREnginev2.bng
        /* renamed from: a */
        public fng mo53284a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float m55268o = knn.m55268o(f4, f6, f2, f3, f, true);
            float f8 = m55268o / f4;
            float f9 = m55268o / f6;
            return new fng(f8, f9, m55268o, f5 * f8, m55268o, f7 * f9);
        }

        @Override // com.sunia.HTREnginev2.bng
        /* renamed from: b */
        public boolean mo53285b(fng fngVar) {
            return fngVar.f70190d > fngVar.f70192f;
        }

        @Override // com.sunia.HTREnginev2.bng
        /* renamed from: c */
        public void mo53286c(RectF rectF, float f, fng fngVar) {
            rectF.bottom -= Math.abs(fngVar.f70192f - fngVar.f70190d) * f;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.cng$b */
    /* loaded from: classes6.dex */
    public class C13575b implements bng {
        @Override // com.sunia.HTREnginev2.bng
        /* renamed from: a */
        public fng mo53284a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float m55268o = knn.m55268o(f5, f7, f2, f3, f, true);
            float f8 = m55268o / f5;
            float f9 = m55268o / f7;
            return new fng(f8, f9, f4 * f8, m55268o, f6 * f9, m55268o);
        }

        @Override // com.sunia.HTREnginev2.bng
        /* renamed from: b */
        public boolean mo53285b(fng fngVar) {
            return fngVar.f70189c > fngVar.f70191e;
        }

        @Override // com.sunia.HTREnginev2.bng
        /* renamed from: c */
        public void mo53286c(RectF rectF, float f, fng fngVar) {
            float abs = (Math.abs(fngVar.f70191e - fngVar.f70189c) / 2.0f) * f;
            rectF.left += abs;
            rectF.right -= abs;
        }
    }

    /* renamed from: a */
    public static bng m53478a(int i, boolean z, RectF rectF, RectF rectF2) {
        if (i == 0) {
            return m53479b(z, rectF, rectF2) ? f67002a : f67003b;
        }
        if (i == 1) {
            return f67002a;
        }
        if (i == 2) {
            return f67003b;
        }
        throw new IllegalArgumentException("Invalid fit mode: " + i);
    }

    /* renamed from: b */
    public static boolean m53479b(boolean z, RectF rectF, RectF rectF2) {
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
