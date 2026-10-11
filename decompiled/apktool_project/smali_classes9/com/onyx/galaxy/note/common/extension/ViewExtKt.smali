.class public final Lcom/onyx/galaxy/note/common/extension/ViewExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/extension/ViewExtKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExt.kt\ncom/onyx/galaxy/note/common/extension/ViewExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1855#2,2:142\n*S KotlinDebug\n*F\n+ 1 ViewExt.kt\ncom/onyx/galaxy/note/common/extension/ViewExtKt\n*L\n68#1:142,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0006\u001a\u001c\u0010\u0007\u001a\u00020\u0005*\u00020\u00012\u0010\u0010\u0008\u001a\u000c\u0012\u0004\u0012\u00020\u00050\tj\u0002`\n\u001a\n\u0010\u000b\u001a\u00020\u000c*\u00020\u0001\u001a6\u0010\r\u001a\u00020\u000e*\u00020\u00012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u001a*\u0010\u0015\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t*\n\u0010\u0019\"\u00020\u001a2\u00020\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "createDividerView",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "autoSetDividerAndCorner",
        "",
        "Landroid/view/ViewGroup;",
        "clickWithIdleStateCheck",
        "onClickHandler",
        "Lkotlin/Function0;",
        "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;",
        "isLayoutDirectionRtl",
        "",
        "startAlphaAnimation",
        "Landroid/animation/ObjectAnimator;",
        "start",
        "",
        "end",
        "duration",
        "",
        "onAnimationEnd",
        "startShowHideAnimation",
        "dockType",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "show",
        "UIAnimRes",
        "Lcom/onyx/android/sdk/ui/R$anim;",
        "note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExt.kt\ncom/onyx/galaxy/note/common/extension/ViewExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1855#2,2:142\n*S KotlinDebug\n*F\n+ 1 ViewExt.kt\ncom/onyx/galaxy/note/common/extension/ViewExtKt\n*L\n68#1:142,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final autoSetDividerAndCorner(Landroid/view/ViewGroup;)V
    .locals 7
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->shape_common_popup_bg:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_corner:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/onyx/galaxy/note/R$drawable;->ripple_white:I

    invoke-static {v4}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->indexInParent(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->createDividerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_left_corner:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_right_corner:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final clickWithIdleStateCheck(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClickHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-static {p0}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$a;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$a;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final createDividerView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_0_5:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method public static final isLayoutDirectionRtl(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final startAlphaAnimation(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFJ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAnimationEnd"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance p1, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$startAlphaAnimation$2;

    invoke-direct {p1, p5}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$startAlphaAnimation$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic startAlphaAnimation$default(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/galaxy/note/R$integer;->view_alpha_animate_duration:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide p3

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_2

    sget-object p5, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$startAlphaAnimation$1;->INSTANCE:Lcom/onyx/galaxy/note/common/extension/ViewExtKt$startAlphaAnimation$1;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startAlphaAnimation(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final startShowHideAnimation(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ZLkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAnimationEnd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    sget-object v4, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    sget p1, Lcom/onyx/android/sdk/ui/R$anim;->slide_in_down:I

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget p1, Lcom/onyx/android/sdk/ui/R$anim;->slide_in_up:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/onyx/android/sdk/ui/R$anim;->slide_in_right:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/onyx/android/sdk/ui/R$anim;->slide_in_left:I

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    sget p1, Lcom/onyx/android/sdk/ui/R$anim;->slide_out_down:I

    goto :goto_0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    sget p1, Lcom/onyx/android/sdk/ui/R$anim;->slide_out_up:I

    goto :goto_0

    :cond_7
    sget p1, Lcom/onyx/android/sdk/ui/R$anim;->slide_out_right:I

    goto :goto_0

    :cond_8
    sget p1, Lcom/onyx/android/sdk/ui/R$anim;->slide_out_left:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p2, :cond_9

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1

    :cond_9
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    new-instance p2, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$startShowHideAnimation$2;

    invoke-direct {p2, p3}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$startShowHideAnimation$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic startShowHideAnimation$default(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lcom/onyx/galaxy/note/common/extension/ViewExtKt$startShowHideAnimation$1;->INSTANCE:Lcom/onyx/galaxy/note/common/extension/ViewExtKt$startShowHideAnimation$1;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startShowHideAnimation(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method
