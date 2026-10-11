.class public final Lcom/onyx/android/sdk/base/rx/RxScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/rx/RxScroller$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0008\u001a\u00020\u0007J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R)\u0010\u001d\u001a\u0015\u0012\u000c\u0012\n \u0019*\u0004\u0018\u00010\u00050\u00050\u0018\u00a2\u0006\u0002\u0008\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/rx/RxScroller;",
        "",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;",
        "args",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;",
        "fling",
        "",
        "stop",
        "l",
        "e",
        "h",
        "",
        "msg",
        "k",
        "Landroidx/dynamicanimation/animation/FlingAnimation;",
        "a",
        "Landroidx/dynamicanimation/animation/FlingAnimation;",
        "animatorX",
        "b",
        "animatorY",
        "c",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;",
        "scrollerInfo",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "d",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "publishSubject",
        "<init>",
        "()V",
        "Companion",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/base/rx/RxScroller$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:Z


# instance fields
.field public a:Landroidx/dynamicanimation/animation/FlingAnimation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroidx/dynamicanimation/animation/FlingAnimation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScroller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/rx/RxScroller;->Companion:Lcom/onyx/android/sdk/base/rx/RxScroller$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->d:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/rx/RxScroller;->f(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static final synthetic access$getDEBUG_LOG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/base/rx/RxScroller;->e:Z

    return v0
.end method

.method public static final synthetic access$log(Lcom/onyx/android/sdk/base/rx/RxScroller;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setDEBUG_LOG$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->e:Z

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/rx/RxScroller;->g(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/rx/RxScroller;->j(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/rx/RxScroller;->i(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static final f(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x, update value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  vel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " running: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->setNewX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxScroller;->l()V

    return-void
.end method

.method public static final g(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "x, end value "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  vel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, " finished, canceled: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->setNewX(F)V

    iget-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->setXFinished(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxScroller;->l()V

    return-void
.end method

.method public static final i(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y, update value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  vel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " running: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->setNewY(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxScroller;->l()V

    return-void
.end method

.method public static final j(Lcom/onyx/android/sdk/base/rx/RxScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "y, end value "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  vel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, " finished, canceled: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->setNewY(F)V

    iget-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->setYFinished(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxScroller;->l()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getVelocityX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->toRangeX(Landroid/graphics/RectF;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v3, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    new-instance v2, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v3, Lcom/sunia/HTREnginev2/swl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/swl;-><init>(Lcom/onyx/android/sdk/base/rx/RxScroller;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v3, Lcom/sunia/HTREnginev2/twl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/twl;-><init>(Lcom/onyx/android/sdk/base/rx/RxScroller;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getMinimum(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getMaximum(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getFrictionX()F

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    iput-object v2, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->a:Landroidx/dynamicanimation/animation/FlingAnimation;

    return-void
.end method

.method public final fling(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->setNewX(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->setNewY(F)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->e(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->h(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->d:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScroller$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScroller$a;-><init>(Lcom/onyx/android/sdk/base/rx/RxScroller;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getVelocityY()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->toRangeY(Landroid/graphics/RectF;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v3, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    new-instance v2, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v3, Lcom/sunia/HTREnginev2/uwl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/uwl;-><init>(Lcom/onyx/android/sdk/base/rx/RxScroller;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v3, Lcom/sunia/HTREnginev2/vwl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/vwl;-><init>(Lcom/onyx/android/sdk/base/rx/RxScroller;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getMinimum(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getMaximum(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getFrictionY()F

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    iput-object v2, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->b:Landroidx/dynamicanimation/animation/FlingAnimation;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/base/rx/RxScroller;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->d:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->c:Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->d:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->a:Landroidx/dynamicanimation/animation/FlingAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->a:Landroidx/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->b:Landroidx/dynamicanimation/animation/FlingAnimation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller;->b:Landroidx/dynamicanimation/animation/FlingAnimation;

    return-void
.end method
