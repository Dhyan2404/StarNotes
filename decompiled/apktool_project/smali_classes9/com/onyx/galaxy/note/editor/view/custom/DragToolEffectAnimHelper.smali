.class public final Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragToolEffectAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragToolEffectAnimHelper.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,76:1\n30#2:77\n91#2,14:78\n*S KotlinDebug\n*F\n+ 1 DragToolEffectAnimHelper.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper\n*L\n44#1:77\n44#1:78,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000c\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J \u0010\u0007\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002J \u0010\u0008\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002J \u0010\t\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002JD\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002H\u0002R\u0014\u0010\u0013\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;",
        "",
        "Lkotlin/Function2;",
        "",
        "",
        "",
        "callback",
        "startShow",
        "startHidden",
        "startSelectAnim",
        "Landroid/animation/ValueAnimator;",
        "valueAnimator",
        "startValue",
        "endValue",
        "",
        "duration",
        "b",
        "a",
        "Landroid/animation/ValueAnimator;",
        "showAnim",
        "hideAnim",
        "c",
        "selectAnim",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDragToolEffectAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragToolEffectAnimHelper.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,76:1\n30#2:77\n91#2,14:78\n*S KotlinDebug\n*F\n+ 1 DragToolEffectAnimHelper.kt\ncom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper\n*L\n44#1:77\n44#1:78,14\n*E\n"
    }
.end annotation


# static fields
.field public static final ANIM_DURATION:J = 0x17cL

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HIDE_ANIM_END_VALUE:F = 0.0f

.field public static final HIDE_ANIM_START_VALUE:F = 1.0f

.field public static final SELECT_ANIM_END_VALUE:F = 1.0f

.field public static final SELECT_ANIM_START_VALUE:F = 0.1f

.field public static final SHOW_ANIM_END_VALUE:F = 1.0f

.field public static final SHOW_ANIM_START_VALUE:F


# instance fields
.field public final a:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->Companion:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-string v2, "ofFloat(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->a:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->b:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->c:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(FFLkotlin/jvm/functions/Function2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->d(FFLkotlin/jvm/functions/Function2;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;Landroid/animation/ValueAnimator;FFJLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const-wide/16 p4, 0x17c

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->b(Landroid/animation/ValueAnimator;FFJLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final d(FFLkotlin/jvm/functions/Function2;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpg-float p0, p3, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_3

    cmpg-float p0, p3, p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final b(Landroid/animation/ValueAnimator;FFJLkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ValueAnimator;",
            "FFJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-instance p0, Lcom/sunia/HTREnginev2/thf;

    invoke-direct {p0, p2, p3, p6}, Lcom/sunia/HTREnginev2/thf;-><init>(FFLkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper$startAnimator$$inlined$doOnEnd$1;

    invoke-direct {p0, p6, p3}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper$startAnimator$$inlined$doOnEnd$1;-><init>(Lkotlin/jvm/functions/Function2;F)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final startHidden(Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->b:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-static/range {v1 .. v9}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->c(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;Landroid/animation/ValueAnimator;FFJLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final startSelectAnim(Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->c:Landroid/animation/ValueAnimator;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-static/range {v1 .. v9}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->c(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;Landroid/animation/ValueAnimator;FFJLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final startShow(Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->a:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-static/range {v1 .. v9}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->c(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;Landroid/animation/ValueAnimator;FFJLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
