.class public final Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;,
        Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;,
        Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderNodeAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNodeAnimator.kt\ncom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,180:1\n1549#2:181\n1620#2,3:182\n1549#2:185\n1620#2,3:186\n1549#2:189\n1620#2,3:190\n1855#2,2:249\n1855#2,2:251\n1855#2,2:253\n91#3,14:193\n91#3,14:207\n91#3,14:221\n91#3,14:235\n*S KotlinDebug\n*F\n+ 1 RenderNodeAnimator.kt\ncom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator\n*L\n48#1:181\n48#1:182,3\n49#1:185\n49#1:186,3\n50#1:189\n50#1:190,3\n161#1:249,2\n166#1:251,2\n171#1:253,2\n56#1:193,14\n94#1:207,14\n113#1:221,14\n127#1:235,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001:\u0003JKLB\u000f\u0012\u0006\u0010(\u001a\u00020%\u00a2\u0006\u0004\u0008H\u0010IJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J.\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015J\u0012\u0010\u001a\u001a\u00020\u0010*\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018J\u0012\u0010\u001b\u001a\u00020\u0010*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0008J\u0012\u0010\u001c\u001a\u00020\u0010*\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0008J&\u0010$\u001a\u0006\u0012\u0002\u0008\u00030#2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001d2\u0006\u0010\"\u001a\u00020!R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001d\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000e0)8\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-R\u001d\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00150)8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u0010+\u001a\u0004\u00080\u0010-R\u001d\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00120)8\u0006\u00a2\u0006\u000c\n\u0004\u00082\u0010+\u001a\u0004\u00083\u0010-R5\u0010>\u001a\u0015\u0012\u000c\u0012\n 6*\u0004\u0018\u00010\u00080\u000805\u00a2\u0006\u0002\u000878\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001a\u0010D\u001a\u00020?8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010CR\u001a\u0010G\u001a\u00020?8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008E\u0010A\u001a\u0004\u0008F\u0010C\u00a8\u0006M"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;",
        "",
        "",
        "startAnimations",
        "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;",
        "renderNode",
        "animateRemove",
        "animateAdd",
        "",
        "fromX",
        "fromY",
        "toX",
        "toY",
        "animateMove",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;",
        "removeInfo",
        "Landroid/animation/Animator;",
        "doAnimateRemove",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;",
        "moveInfo",
        "doAnimateMove",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;",
        "addInfo",
        "doAnimateAdd",
        "",
        "to",
        "alphaAnimator",
        "translateXAnimator",
        "translateYAnimator",
        "",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
        "pageRenderNodeMap",
        "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
        "args",
        "Lio/reactivex/rxjava3/core/Observable;",
        "boxAnimationObservable",
        "Landroid/view/View;",
        "a",
        "Landroid/view/View;",
        "hostView",
        "",
        "b",
        "Ljava/util/List;",
        "getRemoveInfos",
        "()Ljava/util/List;",
        "removeInfos",
        "c",
        "getAddInfos",
        "addInfos",
        "d",
        "getMoveInfos",
        "moveInfos",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "e",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "getReplaySubject",
        "()Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "setReplaySubject",
        "(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V",
        "replaySubject",
        "",
        "f",
        "J",
        "getMoveDuration",
        "()J",
        "moveDuration",
        "g",
        "getAlphaDuration",
        "alphaDuration",
        "<init>",
        "(Landroid/view/View;)V",
        "AddInfo",
        "MoveInfo",
        "RemoveInfo",
        "sdk-universal_overseasRelease"
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
        "SMAP\nRenderNodeAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNodeAnimator.kt\ncom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,180:1\n1549#2:181\n1620#2,3:182\n1549#2:185\n1620#2,3:186\n1549#2:189\n1620#2,3:190\n1855#2,2:249\n1855#2,2:251\n1855#2,2:253\n91#3,14:193\n91#3,14:207\n91#3,14:221\n91#3,14:235\n*S KotlinDebug\n*F\n+ 1 RenderNodeAnimator.kt\ncom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator\n*L\n48#1:181\n48#1:182,3\n49#1:185\n49#1:186,3\n50#1:189\n50#1:190,3\n161#1:249,2\n166#1:251,2\n171#1:253,2\n56#1:193,14\n94#1:207,14\n113#1:221,14\n127#1:235,14\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->a:Landroid/view/View;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->d:Ljava/util/List;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->f:J

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->g:J

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->f(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->e(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->d(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$this_alphaAnimator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setAlpha(F)V

    iget-object p0, p1, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final e(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$this_translateXAnimator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setTranslationX(F)V

    iget-object p0, p1, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final f(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$this_translateYAnimator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setTranslationY(F)V

    iget-object p0, p1, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final alphaAnimator(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;F)Landroid/animation/Animator;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/fkl;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/fkl;-><init>(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "apply(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final animateAdd(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setAlpha(F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->c:Ljava/util/List;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final animateMove(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;IIII)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v1

    int-to-float v2, p2

    sub-float v0, v2, v0

    int-to-float v3, p3

    sub-float v1, v3, v1

    int-to-float v4, p4

    sub-float/2addr v4, v0

    int-to-float v0, p5

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v4, v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v7, :cond_2

    cmpg-float v7, v0, v1

    if-nez v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eqz v7, :cond_2

    return-void

    :cond_2
    if-nez v4, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    if-nez v4, :cond_4

    invoke-interface {p1, v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setTranslationX(F)V

    :cond_4
    cmpg-float v0, v0, v1

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    if-nez v5, :cond_6

    invoke-interface {p1, v3}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setTranslationY(F)V

    :cond_6
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->d:Ljava/util/List;

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;IIII)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final animateRemove(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->b:Ljava/util/List;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final boxAnimationObservable(Ljava/util/Map;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageRenderNodeMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;->getRemoveList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->animateRemove(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;->getAddList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->animateAdd(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;->getMoveList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v5, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v6, v1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v7, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v8, v0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->animateMove(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;IIII)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->startAnimations()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public final doAnimateAdd(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;)Landroid/animation/Animator;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "addInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->alphaAnimator(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;F)Landroid/animation/Animator;

    move-result-object v0

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->g:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateAdd$$inlined$addListener$default$1;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateAdd$$inlined$addListener$default$1;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public final doAnimateMove(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;)Landroid/animation/Animator;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "moveInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getToX()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getFromX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getToY()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getFromY()I

    move-result v2

    sub-int/2addr v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v4

    invoke-interface {v4}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->translateXAnimator(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v4

    invoke-interface {v4}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->translateYAnimator(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-wide v4, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->f:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;

    invoke-direct {p0, v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateMove$$inlined$addListener$default$1;-><init>(ILcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;I)V

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3
.end method

.method public final doAnimateRemove(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;)Landroid/animation/Animator;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "removeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;->getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->alphaAnimator(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;F)Landroid/animation/Animator;

    move-result-object v0

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->g:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateRemove$$inlined$addListener$default$1;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$doAnimateRemove$$inlined$addListener$default$1;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public final getAddInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getAlphaDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->g:J

    return-wide v0
.end method

.method public final getMoveDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->f:J

    return-wide v0
.end method

.method public final getMoveInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getRemoveInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getReplaySubject()Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public final setReplaySubject(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/subjects/ReplaySubject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method

.method public final startAnimations()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->doAnimateRemove(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$RemoveInfo;)Landroid/animation/Animator;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->doAnimateMove(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$MoveInfo;)Landroid/animation/Animator;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->doAnimateAdd(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$AddInfo;)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$startAnimations$$inlined$addListener$default$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator$startAnimations$$inlined$addListener$default$1;-><init>(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final translateXAnimator(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;I)Landroid/animation/Animator;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    int-to-float p2, p2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/gkl;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/gkl;-><init>(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "apply(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final translateYAnimator(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;I)Landroid/animation/Animator;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    int-to-float p2, p2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/hkl;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/hkl;-><init>(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "apply(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
