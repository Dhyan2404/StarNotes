package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.ViewPropertyTransition;

/* loaded from: classes3.dex */
public class ViewPropertyAnimationFactory<R> implements TransitionFactory<R> {

    /* renamed from: a */
    public final ViewPropertyTransition.Animator f15449a;

    /* renamed from: b */
    public ViewPropertyTransition<R> f15450b;

    public ViewPropertyAnimationFactory(ViewPropertyTransition.Animator animator) {
        this.f15449a = animator;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> build(DataSource dataSource, boolean z) {
        if (dataSource == DataSource.MEMORY_CACHE || !z) {
            return NoTransition.get();
        }
        if (this.f15450b == null) {
            this.f15450b = new ViewPropertyTransition<>(this.f15449a);
        }
        return this.f15450b;
    }
}
