package com.onyx.galaxy.note.common.extension;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import androidx.core.view.ViewGroupKt;
import com.jakewharton.rxbinding4.view.RxView;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.callback.EmptyAnimatorListener;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0006\u001a\u001c\u0010\u0007\u001a\u00020\u0005*\u00020\u00012\u0010\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00050\tj\u0002`\n\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\u0001\u001a6\u0010\r\u001a\u00020\u000e*\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u001a*\u0010\u0015\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\f2\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\t*\n\u0010\u0019\"\u00020\u001a2\u00020\u001a¨\u0006\u001b"}, m61528d2 = {"createDividerView", "Landroid/view/View;", "context", "Landroid/content/Context;", "autoSetDividerAndCorner", "", "Landroid/view/ViewGroup;", "clickWithIdleStateCheck", "onClickHandler", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "isLayoutDirectionRtl", "", "startAlphaAnimation", "Landroid/animation/ObjectAnimator;", gon.f71290o0, "", "end", "duration", "", "onAnimationEnd", "startShowHideAnimation", "dockType", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "show", "UIAnimRes", "Lcom/onyx/android/sdk/ui/R$anim;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExt.kt\ncom/onyx/galaxy/note/common/extension/ViewExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1855#2,2:142\n*S KotlinDebug\n*F\n+ 1 ViewExt.kt\ncom/onyx/galaxy/note/common/extension/ViewExtKt\n*L\n68#1:142,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ViewExtKt {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.extension.ViewExtKt$a */
    /* loaded from: classes9.dex */
    public static final class C11617a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ View f56022e;

        /* renamed from: f */
        public final /* synthetic */ Function0<Unit> f56023f;

        public C11617a(View view, Function0<Unit> function0) {
            this.f56022e = view;
            this.f56023f = function0;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (ViewKt.getIdleStateTag(this.f56022e)) {
                ViewKt.setIdleStateTag(this.f56022e, false);
                this.f56023f.invoke();
            }
        }
    }

    public static final void autoSetDividerAndCorner(@NotNull ViewGroup viewGroup) {
        List<View> list;
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        viewGroup.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.shape_common_popup_bg));
        list = SequencesKt___SequencesKt.toList(ViewGroupKt.getChildren(viewGroup));
        if (list.isEmpty()) {
            return;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        View view = (View) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list);
        View view2 = (View) last;
        if (Intrinsics.areEqual(view, view2)) {
            view.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white_corner));
            return;
        }
        for (View view3 : list) {
            view3.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white));
            int indexInParent = ViewKt.indexInParent(view3);
            Context context = viewGroup.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            View createDividerView = createDividerView(context);
            if (!Intrinsics.areEqual(view3, view2)) {
                viewGroup.addView(createDividerView, indexInParent + 1);
            }
        }
        view.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white_left_corner));
        view2.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white_right_corner));
    }

    public static final void clickWithIdleStateCheck(@NotNull View view, @NotNull Function0<Unit> onClickHandler) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onClickHandler, "onClickHandler");
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Unit> doOnNext = RxView.clicks(view).throttleFirst(500L, TimeUnit.MILLISECONDS).doOnNext(new C11617a(view, onClickHandler));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    @NotNull
    public static final View createDividerView(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        View view = new View(context);
        ViewKt.setLayoutParams(view, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_0_5), -1);
        view.setBackgroundColor(ThemeUtils.getColorById(C7996R.color.theme_divider_color_01));
        return view;
    }

    public static final boolean isLayoutDirectionRtl(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return view.getLayoutDirection() == 1;
    }

    @NotNull
    public static final ObjectAnimator startAlphaAnimation(@NotNull View view, float f, float f2, long j, @NotNull final Function0<Unit> onAnimationEnd) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onAnimationEnd, "onAnimationEnd");
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", f, f2);
        ofFloat.setDuration(j);
        ofFloat.start();
        ofFloat.addListener(new EmptyAnimatorListener() { // from class: com.onyx.galaxy.note.common.extension.ViewExtKt$startAlphaAnimation$2
            @Override // com.onyx.galaxy.note.common.callback.EmptyAnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
                EmptyAnimatorListener.DefaultImpls.onAnimationCancel(this, animator);
            }

            @Override // com.onyx.galaxy.note.common.callback.EmptyAnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                onAnimationEnd.invoke();
            }

            @Override // com.onyx.galaxy.note.common.callback.EmptyAnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
                EmptyAnimatorListener.DefaultImpls.onAnimationRepeat(this, animator);
            }

            @Override // com.onyx.galaxy.note.common.callback.EmptyAnimatorListener, android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
                EmptyAnimatorListener.DefaultImpls.onAnimationStart(this, animator);
            }
        });
        Intrinsics.checkNotNull(ofFloat);
        return ofFloat;
    }

    public static /* synthetic */ ObjectAnimator startAlphaAnimation$default(View view, float f, float f2, long j, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            f = view.getAlpha();
        }
        float f3 = f;
        if ((i & 4) != 0) {
            j = ResManager.INSTANCE.getLong(C10651R.integer.view_alpha_animate_duration);
        }
        long j2 = j;
        if ((i & 8) != 0) {
            function0 = new Function0<Unit>() { // from class: com.onyx.galaxy.note.common.extension.ViewExtKt$startAlphaAnimation$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        return startAlphaAnimation(view, f3, f2, j2, function0);
    }

    public static final void startShowHideAnimation(@NotNull View view, @NotNull DockType dockType, boolean z, @NotNull final Function0<Unit> onAnimationEnd) {
        int i;
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        Intrinsics.checkNotNullParameter(onAnimationEnd, "onAnimationEnd");
        if (z) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
            if (i2 == 1) {
                i = C8037R.anim.slide_in_left;
            } else if (i2 == 2) {
                i = C8037R.anim.slide_in_right;
            } else if (i2 == 3) {
                i = C8037R.anim.slide_in_up;
            } else {
                if (i2 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                i = C8037R.anim.slide_in_down;
            }
        } else {
            int i3 = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
            if (i3 == 1) {
                i = C8037R.anim.slide_out_left;
            } else if (i3 == 2) {
                i = C8037R.anim.slide_out_right;
            } else if (i3 == 3) {
                i = C8037R.anim.slide_out_up;
            } else {
                if (i3 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                i = C8037R.anim.slide_out_down;
            }
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(view.getContext(), i);
        loadAnimation.setInterpolator(z ? new DecelerateInterpolator() : new AccelerateInterpolator());
        loadAnimation.setStartTime(AnimationUtils.currentAnimationTimeMillis());
        loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.onyx.galaxy.note.common.extension.ViewExtKt$startShowHideAnimation$2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(@Nullable Animation animation) {
                if (animation != null) {
                    animation.setAnimationListener(null);
                }
                onAnimationEnd.invoke();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(@Nullable Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(@Nullable Animation animation) {
            }
        });
        view.setAnimation(loadAnimation);
    }

    public static /* synthetic */ void startShowHideAnimation$default(View view, DockType dockType, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            function0 = new Function0<Unit>() { // from class: com.onyx.galaxy.note.common.extension.ViewExtKt$startShowHideAnimation$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        startShowHideAnimation(view, dockType, z, function0);
    }
}
