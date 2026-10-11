.class public final Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00081\u00102J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eJ\u001a\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017H\u0007J*\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u000e\u0008\u0002\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001a2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017H\u0007J\u0006\u0010\u001d\u001a\u00020\u0017J\u0008\u0010\u001e\u001a\u00020\u0007H\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010,R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;",
        "",
        "Landroid/content/Context;",
        "context",
        "init",
        "",
        "release",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "listener",
        "setOnKeyboardStateListener",
        "Landroid/view/ViewGroup;",
        "rootLayout",
        "bindRootLayout",
        "bindKeyboardInsetsListener",
        "Landroid/view/View;",
        "view",
        "",
        "from",
        "to",
        "setTranslateRule",
        "",
        "getTranslateDistance",
        "removeTranslateRule",
        "",
        "withAnimation",
        "animateUp",
        "Lkotlin/Function0;",
        "onFinish",
        "animateDown",
        "isInitialized",
        "e",
        "a",
        "Landroid/content/Context;",
        "b",
        "Landroid/view/ViewGroup;",
        "root",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;",
        "c",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;",
        "popup",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;",
        "d",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;",
        "keyboardInsets",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "",
        "f",
        "I",
        "keyboardHeight",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->d(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    return-object p0
.end method

.method public static final synthetic access$setKeyboardHeight$p(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->f:I

    return-void
.end method

.method public static synthetic animateDown$default(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;Landroid/view/View;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$animateDown$1;->INSTANCE:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$animateDown$1;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->animateDown(Landroid/view/View;Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method public static synthetic animateUp$default(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->animateUp(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic b(FLandroid/animation/ObjectAnimator;Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->c(FLandroid/animation/ObjectAnimator;Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final c(FLandroid/animation/ObjectAnimator;Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onFinish"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    new-instance p0, Lcom/sunia/HTREnginev2/hui;

    invoke-direct {p0, p3}, Lcom/sunia/HTREnginev2/hui;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static final d(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$onFinish"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final animateDown(Landroid/view/View;Lkotlin/jvm/functions/Function0;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onFinish"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    sget p0, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_from:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_from:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    if-nez p3, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_1
    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    aput v1, p3, v0

    const/4 v0, 0x1

    aput p0, p3, v0

    const-string v0, "translationY"

    invoke-static {p1, v0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->keyboard_open_duration:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/sunia/HTREnginev2/iui;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sunia/HTREnginev2/iui;-><init>(FLandroid/animation/ObjectAnimator;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final animateUp(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    sget p0, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_from:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_to:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput p0, p2, v1

    const/4 p0, 0x1

    aput v0, p2, p0

    const-string p0, "translationY"

    invoke-static {p1, p0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "ofFloat(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$integer;->keyboard_open_duration:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final bindKeyboardInsetsListener(Landroid/view/ViewGroup;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rootLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->b:Landroid/view/ViewGroup;

    new-instance v0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->d:Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->e()Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->setKeyboardStateListener(Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;)V

    return-object p0
.end method

.method public final bindRootLayout(Landroid/view/ViewGroup;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rootLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->b:Landroid/view/ViewGroup;

    new-instance v0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->c:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->e()Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->setKeyboardStateListener(Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;)V

    return-object p0
.end method

.method public final e()Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$getKeyboardStateListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper$getKeyboardStateListener$1;-><init>(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;)V

    return-object v0
.end method

.method public final getTranslateDistance(Landroid/view/View;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_from:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_to:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public final init(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->a:Landroid/content/Context;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->c:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->c:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->release()V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->d:Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->release()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->d:Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->c:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public final removeTranslateRule(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_from:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_to:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final setOnKeyboardStateListener(Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    return-object p0
.end method

.method public final setTranslateRule(Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "from"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "to"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_from:I

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->tag_key_translate_to:I

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
