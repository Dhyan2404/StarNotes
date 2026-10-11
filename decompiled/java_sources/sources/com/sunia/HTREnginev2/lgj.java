package com.sunia.HTREnginev2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.transition.platform.VisibilityAnimatorProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes6.dex */
public abstract class lgj<P extends VisibilityAnimatorProvider> extends Visibility {

    /* renamed from: e */
    public final P f76450e;

    /* renamed from: f */
    @Nullable
    public VisibilityAnimatorProvider f76451f;

    /* renamed from: g */
    public final List<VisibilityAnimatorProvider> f76452g = new ArrayList();

    public lgj(P p, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f76450e = p;
        this.f76451f = visibilityAnimatorProvider;
    }

    /* renamed from: a */
    public static void m55425a(List<Animator> list, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider, ViewGroup viewGroup, View view, boolean z) {
        if (visibilityAnimatorProvider == null) {
            return;
        }
        Animator createAppear = z ? visibilityAnimatorProvider.createAppear(viewGroup, view) : visibilityAnimatorProvider.createDisappear(viewGroup, view);
        if (createAppear != null) {
            list.add(createAppear);
        }
    }

    public void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f76452g.add(visibilityAnimatorProvider);
    }

    /* renamed from: b */
    public final Animator m55426b(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        m55425a(arrayList, this.f76450e, viewGroup, view, z);
        m55425a(arrayList, this.f76451f, viewGroup, view, z);
        Iterator<VisibilityAnimatorProvider> it2 = this.f76452g.iterator();
        while (it2.hasNext()) {
            m55425a(arrayList, it2.next(), viewGroup, view, z);
        }
        m55427f(viewGroup.getContext(), z);
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    @NonNull
    /* renamed from: c */
    public TimeInterpolator mo25633c(boolean z) {
        return AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
    }

    public void clearAdditionalAnimatorProvider() {
        this.f76452g.clear();
    }

    @AttrRes
    /* renamed from: d */
    public int mo25634d(boolean z) {
        return 0;
    }

    @AttrRes
    /* renamed from: e */
    public int mo25635e(boolean z) {
        return 0;
    }

    /* renamed from: f */
    public final void m55427f(@NonNull Context context, boolean z) {
        jnn.m55002s(this, context, mo25634d(z));
        jnn.m55003t(this, context, mo25635e(z), mo25633c(z));
    }

    @NonNull
    public P getPrimaryAnimatorProvider() {
        return this.f76450e;
    }

    @Nullable
    public VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return this.f76451f;
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m55426b(viewGroup, view, true);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m55426b(viewGroup, view, false);
    }

    public boolean removeAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return this.f76452g.remove(visibilityAnimatorProvider);
    }

    public void setSecondaryAnimatorProvider(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f76451f = visibilityAnimatorProvider;
    }
}
