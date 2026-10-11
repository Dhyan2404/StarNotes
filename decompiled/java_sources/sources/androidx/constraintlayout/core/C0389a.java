package androidx.constraintlayout.core;

/* renamed from: androidx.constraintlayout.core.a */
/* loaded from: classes3.dex */
public final class C0389a {

    /* renamed from: a */
    public static final boolean f2668a = false;

    /* renamed from: androidx.constraintlayout.core.a$a */
    /* loaded from: classes3.dex */
    public interface a<T> {
        /* renamed from: a */
        void mo1414a(T[] tArr, int i);

        T acquire();

        boolean release(T t);
    }

    /* renamed from: androidx.constraintlayout.core.a$b */
    /* loaded from: classes3.dex */
    public static class b<T> implements a<T> {

        /* renamed from: a */
        public final Object[] f2669a;

        /* renamed from: b */
        public int f2670b;

        public b(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f2669a = new Object[i];
        }

        @Override // androidx.constraintlayout.core.C0389a.a
        /* renamed from: a */
        public void mo1414a(T[] tArr, int i) {
            if (i > tArr.length) {
                i = tArr.length;
            }
            for (int i2 = 0; i2 < i; i2++) {
                T t = tArr[i2];
                int i3 = this.f2670b;
                Object[] objArr = this.f2669a;
                if (i3 < objArr.length) {
                    objArr[i3] = t;
                    this.f2670b = i3 + 1;
                }
            }
        }

        @Override // androidx.constraintlayout.core.C0389a.a
        public T acquire() {
            int i = this.f2670b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f2669a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f2670b = i - 1;
            return t;
        }

        /* renamed from: b */
        public final boolean m1415b(T t) {
            for (int i = 0; i < this.f2670b; i++) {
                if (this.f2669a[i] == t) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.C0389a.a
        public boolean release(T t) {
            int i = this.f2670b;
            Object[] objArr = this.f2669a;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f2670b = i + 1;
            return true;
        }
    }
}
