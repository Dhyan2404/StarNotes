package com.bumptech.glide.util.pool;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public abstract class StateVerifier {

    /* renamed from: a */
    public static final boolean f15513a = false;

    /* renamed from: com.bumptech.glide.util.pool.StateVerifier$b */
    /* loaded from: classes3.dex */
    public static class C2048b extends StateVerifier {

        /* renamed from: b */
        public volatile RuntimeException f15514b;

        public C2048b() {
            super();
        }

        @Override // com.bumptech.glide.util.pool.StateVerifier
        /* renamed from: a */
        public void mo9193a(boolean z) {
            if (z) {
                this.f15514b = new RuntimeException("Released");
            } else {
                this.f15514b = null;
            }
        }

        @Override // com.bumptech.glide.util.pool.StateVerifier
        public void throwIfRecycled() {
            if (this.f15514b != null) {
                throw new IllegalStateException("Already released", this.f15514b);
            }
        }
    }

    /* renamed from: com.bumptech.glide.util.pool.StateVerifier$c */
    /* loaded from: classes3.dex */
    public static class C2049c extends StateVerifier {

        /* renamed from: b */
        public volatile boolean f15515b;

        public C2049c() {
            super();
        }

        @Override // com.bumptech.glide.util.pool.StateVerifier
        /* renamed from: a */
        public void mo9193a(boolean z) {
            this.f15515b = z;
        }

        @Override // com.bumptech.glide.util.pool.StateVerifier
        public void throwIfRecycled() {
            if (this.f15515b) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    @NonNull
    public static StateVerifier newInstance() {
        return new C2049c();
    }

    /* renamed from: a */
    public abstract void mo9193a(boolean z);

    public abstract void throwIfRecycled();

    public StateVerifier() {
    }
}
