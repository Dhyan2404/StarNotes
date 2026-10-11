package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.ViewTransition;

/* loaded from: classes3.dex */
public class ViewAnimationFactory<R> implements TransitionFactory<R> {

    /* renamed from: a */
    public final ViewTransition.InterfaceC2035a f15445a;

    /* renamed from: b */
    public Transition<R> f15446b;

    /* renamed from: com.bumptech.glide.request.transition.ViewAnimationFactory$a */
    /* loaded from: classes3.dex */
    public static class C2033a implements ViewTransition.InterfaceC2035a {

        /* renamed from: a */
        public final Animation f15447a;

        public C2033a(Animation animation) {
            this.f15447a = animation;
        }

        @Override // com.bumptech.glide.request.transition.ViewTransition.InterfaceC2035a
        /* renamed from: a */
        public Animation mo9168a(Context context) {
            return this.f15447a;
        }
    }

    /* renamed from: com.bumptech.glide.request.transition.ViewAnimationFactory$b */
    /* loaded from: classes3.dex */
    public static class C2034b implements ViewTransition.InterfaceC2035a {

        /* renamed from: a */
        public final int f15448a;

        public C2034b(int i) {
            this.f15448a = i;
        }

        @Override // com.bumptech.glide.request.transition.ViewTransition.InterfaceC2035a
        /* renamed from: a */
        public Animation mo9168a(Context context) {
            return AnimationUtils.loadAnimation(context, this.f15448a);
        }
    }

    public ViewAnimationFactory(Animation animation) {
        this(new C2033a(animation));
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> build(DataSource dataSource, boolean z) {
        if (dataSource == DataSource.MEMORY_CACHE || !z) {
            return NoTransition.get();
        }
        if (this.f15446b == null) {
            this.f15446b = new ViewTransition(this.f15445a);
        }
        return this.f15446b;
    }

    public ViewAnimationFactory(int i) {
        this(new C2034b(i));
    }

    public ViewAnimationFactory(ViewTransition.InterfaceC2035a interfaceC2035a) {
        this.f15445a = interfaceC2035a;
    }
}
