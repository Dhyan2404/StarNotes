package com.bumptech.glide.request.transition;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;

/* loaded from: classes3.dex */
public class DrawableCrossFadeFactory implements TransitionFactory<Drawable> {

    /* renamed from: a */
    public final int f15435a;

    /* renamed from: b */
    public final boolean f15436b;

    /* renamed from: c */
    public DrawableCrossFadeTransition f15437c;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: c */
        public static final int f15438c = 300;

        /* renamed from: a */
        public final int f15439a;

        /* renamed from: b */
        public boolean f15440b;

        public Builder() {
            this(300);
        }

        public DrawableCrossFadeFactory build() {
            return new DrawableCrossFadeFactory(this.f15439a, this.f15440b);
        }

        public Builder setCrossFadeEnabled(boolean z) {
            this.f15440b = z;
            return this;
        }

        public Builder(int i) {
            this.f15439a = i;
        }
    }

    public DrawableCrossFadeFactory(int i, boolean z) {
        this.f15435a = i;
        this.f15436b = z;
    }

    /* renamed from: a */
    public final Transition<Drawable> m9167a() {
        if (this.f15437c == null) {
            this.f15437c = new DrawableCrossFadeTransition(this.f15435a, this.f15436b);
        }
        return this.f15437c;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<Drawable> build(DataSource dataSource, boolean z) {
        return dataSource == DataSource.MEMORY_CACHE ? NoTransition.get() : m9167a();
    }
}
