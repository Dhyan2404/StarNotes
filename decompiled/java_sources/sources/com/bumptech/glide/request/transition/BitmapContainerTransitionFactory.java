package com.bumptech.glide.request.transition;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes3.dex */
public abstract class BitmapContainerTransitionFactory<R> implements TransitionFactory<R> {

    /* renamed from: a */
    public final TransitionFactory<Drawable> f15432a;

    /* renamed from: com.bumptech.glide.request.transition.BitmapContainerTransitionFactory$a */
    /* loaded from: classes3.dex */
    public final class C2032a implements Transition<R> {

        /* renamed from: a */
        public final Transition<Drawable> f15433a;

        public C2032a(Transition<Drawable> transition) {
            this.f15433a = transition;
        }

        @Override // com.bumptech.glide.request.transition.Transition
        public boolean transition(R r, Transition.ViewAdapter viewAdapter) {
            return this.f15433a.transition(new BitmapDrawable(viewAdapter.getView().getResources(), BitmapContainerTransitionFactory.this.getBitmap(r)), viewAdapter);
        }
    }

    public BitmapContainerTransitionFactory(TransitionFactory<Drawable> transitionFactory) {
        this.f15432a = transitionFactory;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> build(DataSource dataSource, boolean z) {
        return new C2032a(this.f15432a.build(dataSource, z));
    }

    public abstract Bitmap getBitmap(R r);
}
