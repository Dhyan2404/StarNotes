package com.chad.library.adapter4.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/chad/library/adapter4/animation/SlideInBottomAnimation;", "Lcom/chad/library/adapter4/animation/ItemAnimator;", "Landroid/view/View;", "view", "Landroid/animation/Animator;", "animator", "", "a", "J", "duration", "Landroid/view/animation/DecelerateInterpolator;", "b", "Landroid/view/animation/DecelerateInterpolator;", "interpolator", Constants.CONSTRUCTOR_NAME, "(J)V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public final class SlideInBottomAnimation implements ItemAnimator {

    /* renamed from: a, reason: from kotlin metadata */
    public final long duration;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final DecelerateInterpolator interpolator;

    @JvmOverloads
    public SlideInBottomAnimation() {
        this(0L, 1, null);
    }

    @Override // com.chad.library.adapter4.animation.ItemAnimator
    @NotNull
    public Animator animator(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator animator = ObjectAnimator.ofFloat(view, "translationY", view.getMeasuredHeight(), 0.0f);
        animator.setDuration(this.duration);
        animator.setInterpolator(this.interpolator);
        Intrinsics.checkNotNullExpressionValue(animator, "animator");
        return animator;
    }

    @JvmOverloads
    public SlideInBottomAnimation(long j) {
        this.duration = j;
        this.interpolator = new DecelerateInterpolator(1.3f);
    }

    public /* synthetic */ SlideInBottomAnimation(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 400L : j);
    }
}
