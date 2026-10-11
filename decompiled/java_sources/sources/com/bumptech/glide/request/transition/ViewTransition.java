package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes3.dex */
public class ViewTransition<R> implements Transition<R> {

    /* renamed from: a */
    public final InterfaceC2035a f15452a;

    /* renamed from: com.bumptech.glide.request.transition.ViewTransition$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC2035a {
        /* renamed from: a */
        Animation mo9168a(Context context);
    }

    public ViewTransition(InterfaceC2035a interfaceC2035a) {
        this.f15452a = interfaceC2035a;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public boolean transition(R r, Transition.ViewAdapter viewAdapter) {
        View view = viewAdapter.getView();
        if (view == null) {
            return false;
        }
        view.clearAnimation();
        view.startAnimation(this.f15452a.mo9168a(view.getContext()));
        return false;
    }
}
