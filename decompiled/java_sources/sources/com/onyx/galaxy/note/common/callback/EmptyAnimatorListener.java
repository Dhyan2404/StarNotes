package com.onyx.galaxy.note.common.callback;

import android.animation.Animator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/callback/EmptyAnimatorListener;", "Landroid/animation/Animator$AnimatorListener;", "onAnimationCancel", "", GlideExecutor.f14795k, "Landroid/animation/Animator;", "onAnimationEnd", "onAnimationRepeat", "onAnimationStart", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface EmptyAnimatorListener extends Animator.AnimatorListener {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class DefaultImpls {
        public static void onAnimationCancel(@NotNull EmptyAnimatorListener emptyAnimatorListener, @NotNull Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }

        public static void onAnimationEnd(@NotNull EmptyAnimatorListener emptyAnimatorListener, @NotNull Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }

        public static void onAnimationRepeat(@NotNull EmptyAnimatorListener emptyAnimatorListener, @NotNull Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }

        public static void onAnimationStart(@NotNull EmptyAnimatorListener emptyAnimatorListener, @NotNull Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    void onAnimationCancel(@NotNull Animator animation);

    @Override // android.animation.Animator.AnimatorListener
    void onAnimationEnd(@NotNull Animator animation);

    @Override // android.animation.Animator.AnimatorListener
    void onAnimationRepeat(@NotNull Animator animation);

    @Override // android.animation.Animator.AnimatorListener
    void onAnimationStart(@NotNull Animator animation);
}
