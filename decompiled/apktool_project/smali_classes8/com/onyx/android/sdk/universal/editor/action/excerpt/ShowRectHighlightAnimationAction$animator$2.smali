.class final Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,245:1\n91#2,14:246\n*S KotlinDebug\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2\n*L\n64#1:246,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShowRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,245:1\n91#2,14:246\n*S KotlinDebug\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2\n*L\n64#1:246,14\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(ILcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;->invoke$lambda$3$lambda$0(ILcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final invoke$lambda$3$lambda$0(ILcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->getFillPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->getStrokePaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->access$getPublishSubject$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ValueAnimator;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    .line 4
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/b;

    invoke-direct {v2, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/b;-><init>(ILcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2$invoke$lambda$3$$inlined$addListener$default$1;

    invoke-direct {v0, p0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2$invoke$lambda$3$$inlined$addListener$default$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->access$getAnimationDuration$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;->invoke()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method
