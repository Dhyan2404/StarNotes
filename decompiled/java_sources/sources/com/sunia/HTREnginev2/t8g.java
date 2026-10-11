package com.sunia.HTREnginev2;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes6.dex */
public class t8g {

    /* renamed from: a */
    public static final q8g f84985a = new C14440a();

    /* renamed from: b */
    public static final q8g f84986b = new C14441b();

    /* renamed from: c */
    public static final q8g f84987c = new C14442c();

    /* renamed from: d */
    public static final q8g f84988d = new C14443d();

    /* renamed from: com.sunia.HTREnginev2.t8g$a */
    /* loaded from: classes6.dex */
    public class C14440a implements q8g {
        @Override // com.sunia.HTREnginev2.q8g
        /* renamed from: a */
        public u8g mo56658a(float f, float f2, float f3, float f4) {
            return u8g.m57555a(255, jnn.m54999p(0, 255, f2, f3, f));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.t8g$b */
    /* loaded from: classes6.dex */
    public class C14441b implements q8g {
        @Override // com.sunia.HTREnginev2.q8g
        /* renamed from: a */
        public u8g mo56658a(float f, float f2, float f3, float f4) {
            return u8g.m57556b(jnn.m54999p(255, 0, f2, f3, f), 255);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.t8g$c */
    /* loaded from: classes6.dex */
    public class C14442c implements q8g {
        @Override // com.sunia.HTREnginev2.q8g
        /* renamed from: a */
        public u8g mo56658a(float f, float f2, float f3, float f4) {
            return u8g.m57556b(jnn.m54999p(255, 0, f2, f3, f), jnn.m54999p(0, 255, f2, f3, f));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.t8g$d */
    /* loaded from: classes6.dex */
    public class C14443d implements q8g {
        @Override // com.sunia.HTREnginev2.q8g
        /* renamed from: a */
        public u8g mo56658a(float f, float f2, float f3, float f4) {
            float f5 = ((f3 - f2) * f4) + f2;
            return u8g.m57556b(jnn.m54999p(255, 0, f2, f5, f), jnn.m54999p(0, 255, f5, f3, f));
        }
    }

    /* renamed from: a */
    public static q8g m57309a(int i, boolean z) {
        if (i == 0) {
            return z ? f84985a : f84986b;
        }
        if (i == 1) {
            return z ? f84986b : f84985a;
        }
        if (i == 2) {
            return f84987c;
        }
        if (i == 3) {
            return f84988d;
        }
        throw new IllegalArgumentException("Invalid fade mode: " + i);
    }
}
