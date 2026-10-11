package com.sunia.HTREnginev2;

/* loaded from: classes6.dex */
public class s8g {

    /* renamed from: a */
    public static final r8g f83902a = new C14386a();

    /* renamed from: b */
    public static final r8g f83903b = new C14387b();

    /* renamed from: c */
    public static final r8g f83904c = new C14388c();

    /* renamed from: d */
    public static final r8g f83905d = new C14389d();

    /* renamed from: com.sunia.HTREnginev2.s8g$a */
    /* loaded from: classes6.dex */
    public class C14386a implements r8g {
        @Override // com.sunia.HTREnginev2.r8g
        /* renamed from: a */
        public v8g mo56932a(float f, float f2, float f3, float f4) {
            return v8g.m57754a(255, knn.m55269p(0, 255, f2, f3, f));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.s8g$b */
    /* loaded from: classes6.dex */
    public class C14387b implements r8g {
        @Override // com.sunia.HTREnginev2.r8g
        /* renamed from: a */
        public v8g mo56932a(float f, float f2, float f3, float f4) {
            return v8g.m57755b(knn.m55269p(255, 0, f2, f3, f), 255);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.s8g$c */
    /* loaded from: classes6.dex */
    public class C14388c implements r8g {
        @Override // com.sunia.HTREnginev2.r8g
        /* renamed from: a */
        public v8g mo56932a(float f, float f2, float f3, float f4) {
            return v8g.m57755b(knn.m55269p(255, 0, f2, f3, f), knn.m55269p(0, 255, f2, f3, f));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.s8g$d */
    /* loaded from: classes6.dex */
    public class C14389d implements r8g {
        @Override // com.sunia.HTREnginev2.r8g
        /* renamed from: a */
        public v8g mo56932a(float f, float f2, float f3, float f4) {
            float f5 = ((f3 - f2) * f4) + f2;
            return v8g.m57755b(knn.m55269p(255, 0, f2, f5, f), knn.m55269p(0, 255, f5, f3, f));
        }
    }

    /* renamed from: a */
    public static r8g m57137a(int i, boolean z) {
        if (i == 0) {
            return z ? f83902a : f83903b;
        }
        if (i == 1) {
            return z ? f83903b : f83902a;
        }
        if (i == 2) {
            return f83904c;
        }
        if (i == 3) {
            return f83905d;
        }
        throw new IllegalArgumentException("Invalid fade mode: " + i);
    }
}
