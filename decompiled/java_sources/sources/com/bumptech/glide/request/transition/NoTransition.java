package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes3.dex */
public class NoTransition<R> implements Transition<R> {

    /* renamed from: a */
    public static final NoTransition<?> f15443a = new NoTransition<>();

    /* renamed from: b */
    public static final TransitionFactory<?> f15444b = new NoAnimationFactory();

    /* loaded from: classes3.dex */
    public static class NoAnimationFactory<R> implements TransitionFactory<R> {
        @Override // com.bumptech.glide.request.transition.TransitionFactory
        public Transition<R> build(DataSource dataSource, boolean z) {
            return NoTransition.f15443a;
        }
    }

    public static <R> Transition<R> get() {
        return f15443a;
    }

    public static <R> TransitionFactory<R> getFactory() {
        return (TransitionFactory<R>) f15444b;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public boolean transition(Object obj, Transition.ViewAdapter viewAdapter) {
        return false;
    }
}
