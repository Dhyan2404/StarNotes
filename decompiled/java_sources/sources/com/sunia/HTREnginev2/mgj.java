package com.sunia.HTREnginev2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.transition.VisibilityAnimatorProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public abstract class mgj<P extends VisibilityAnimatorProvider> extends Visibility {

    /* renamed from: V0 */
    public final P f77573V0;

    /* renamed from: W0 */
    @Nullable
    public VisibilityAnimatorProvider f77574W0;

    /* renamed from: X0 */
    public final List<VisibilityAnimatorProvider> f77575X0 = new ArrayList();

    public mgj(P p, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f77573V0 = p;
        this.f77574W0 = visibilityAnimatorProvider;
    }

    /* renamed from: N */
    public static void m55618N(List<Animator> list, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider, ViewGroup viewGroup, View view, boolean z) {
        if (visibilityAnimatorProvider == null) {
            return;
        }
        Animator createAppear = z ? visibilityAnimatorProvider.createAppear(viewGroup, view) : visibilityAnimatorProvider.createDisappear(viewGroup, view);
        if (createAppear != null) {
            list.add(createAppear);
        }
    }

    /* renamed from: O */
    public final Animator m55619O(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        m55618N(arrayList, this.f77573V0, viewGroup, view, z);
        m55618N(arrayList, this.f77574W0, viewGroup, view, z);
        Iterator<VisibilityAnimatorProvider> it2 = this.f77575X0.iterator();
        while (it2.hasNext()) {
            m55618N(arrayList, it2.next(), viewGroup, view, z);
        }
        m55620S(viewGroup.getContext(), z);
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }

    @NonNull
    /* renamed from: P */
    public TimeInterpolator mo25565P(boolean z) {
        return AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
    }

    @AttrRes
    /* renamed from: Q */
    public int mo25566Q(boolean z) {
        return 0;
    }

    @AttrRes
    /* renamed from: R */
    public int mo25567R(boolean z) {
        return 0;
    }

    /* renamed from: S */
    public final void m55620S(@NonNull Context context, boolean z) {
        knn.m55272s(this, context, mo25566Q(z));
        knn.m55273t(this, context, mo25567R(z), mo25565P(z));
    }

    public void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f77575X0.add(visibilityAnimatorProvider);
    }

    public void clearAdditionalAnimatorProvider() {
        this.f77575X0.clear();
    }

    @NonNull
    public P getPrimaryAnimatorProvider() {
        return this.f77573V0;
    }

    @Nullable
    public VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return this.f77574W0;
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m55619O(viewGroup, view, true);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m55619O(viewGroup, view, false);
    }

    public boolean removeAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return this.f77575X0.remove(visibilityAnimatorProvider);
    }

    public void setSecondaryAnimatorProvider(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f77574W0 = visibilityAnimatorProvider;
    }
}
