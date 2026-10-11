package com.bumptech.glide.request.transition;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes3.dex */
public class DrawableCrossFadeTransition implements Transition<Drawable> {

    /* renamed from: a */
    public final int f15441a;

    /* renamed from: b */
    public final boolean f15442b;

    public DrawableCrossFadeTransition(int i, boolean z) {
        this.f15441a = i;
        this.f15442b = z;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public boolean transition(Drawable drawable, Transition.ViewAdapter viewAdapter) {
        Drawable currentDrawable = viewAdapter.getCurrentDrawable();
        if (currentDrawable == null) {
            currentDrawable = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{currentDrawable, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f15442b);
        transitionDrawable.startTransition(this.f15441a);
        viewAdapter.setDrawable(transitionDrawable);
        return true;
    }
}
