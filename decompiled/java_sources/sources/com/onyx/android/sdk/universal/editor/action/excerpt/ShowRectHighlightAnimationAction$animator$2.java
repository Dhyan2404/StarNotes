package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.animation.Animator;
import android.animation.ValueAnimator;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m61528d2 = {"<anonymous>", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShowRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,245:1\n91#2,14:246\n*S KotlinDebug\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2\n*L\n64#1:246,14\n*E\n"})
/* loaded from: classes8.dex */
public final class ShowRectHighlightAnimationAction$animator$2 extends Lambda implements Function0<ValueAnimator> {
    final /* synthetic */ ShowRectHighlightAnimationAction this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowRectHighlightAnimationAction$animator$2(ShowRectHighlightAnimationAction showRectHighlightAnimationAction) {
        super(0);
        this.this$0 = showRectHighlightAnimationAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$3$lambda$0(int i, ShowRectHighlightAnimationAction this$0, ValueAnimator it2) {
        PublishSubject publishSubject;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        int floatValue = (int) (((Float) animatedValue).floatValue() * i);
        this$0.getFillPaint().setAlpha(floatValue);
        this$0.getStrokePaint().setAlpha(this$0.getFillPaint().getAlpha());
        publishSubject = this$0.publishSubject;
        publishSubject.onNext(Integer.valueOf(floatValue));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ValueAnimator invoke() {
        long j;
        final int alpha = this.this$0.getFillPaint().getAlpha();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        final ShowRectHighlightAnimationAction showRectHighlightAnimationAction = this.this$0;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ShowRectHighlightAnimationAction$animator$2.invoke$lambda$3$lambda$0(alpha, showRectHighlightAnimationAction, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofFloat);
        ofFloat.addListener(new Animator.AnimatorListener(showRectHighlightAnimationAction) { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction$animator$2$invoke$lambda$3$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                ShowRectHighlightAnimationAction.this.dispose();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
                ShowRectHighlightAnimationAction.this.m37926m();
            }
        });
        j = showRectHighlightAnimationAction.animationDuration;
        ofFloat.setDuration(j);
        return ofFloat;
    }
}
