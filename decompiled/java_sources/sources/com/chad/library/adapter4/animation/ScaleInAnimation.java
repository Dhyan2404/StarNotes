package com.chad.library.adapter4.animation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001d\b\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/chad/library/adapter4/animation/ScaleInAnimation;", "Lcom/chad/library/adapter4/animation/ItemAnimator;", "Landroid/view/View;", "view", "Landroid/animation/Animator;", "animator", "", "a", "J", "duration", "", "b", "F", "mFrom", "Landroid/view/animation/DecelerateInterpolator;", "c", "Landroid/view/animation/DecelerateInterpolator;", "interpolator", Constants.CONSTRUCTOR_NAME, "(JF)V", "Companion", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public final class ScaleInAnimation implements ItemAnimator {

    /* renamed from: d */
    public static final float f16197d = 0.5f;

    /* renamed from: a, reason: from kotlin metadata */
    public final long duration;

    /* renamed from: b, reason: from kotlin metadata */
    public final float mFrom;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final DecelerateInterpolator interpolator;

    @JvmOverloads
    public ScaleInAnimation() {
        this(0L, 0.0f, 3, null);
    }

    @Override // com.chad.library.adapter4.animation.ItemAnimator
    @NotNull
    public Animator animator(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", this.mFrom, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", this.mFrom, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(this.duration);
        animatorSet.setInterpolator(this.interpolator);
        animatorSet.play(ofFloat).with(ofFloat2);
        return animatorSet;
    }

    @JvmOverloads
    public ScaleInAnimation(long j) {
        this(j, 0.0f, 2, null);
    }

    @JvmOverloads
    public ScaleInAnimation(long j, float f) {
        this.duration = j;
        this.mFrom = f;
        this.interpolator = new DecelerateInterpolator();
    }

    public /* synthetic */ ScaleInAnimation(long j, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 300L : j, (i & 2) != 0 ? 0.5f : f);
    }
}
