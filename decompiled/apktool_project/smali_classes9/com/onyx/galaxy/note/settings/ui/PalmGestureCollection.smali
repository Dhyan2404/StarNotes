.class public final Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b\u00a2\u0006\u0004\u0008!\u0010\"J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0006H\u0002R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0011R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;",
        "",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "isForceCollection",
        "",
        "handleEvent",
        "b",
        "c",
        "a",
        "Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;",
        "Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;",
        "palmCollectionType",
        "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;",
        "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;",
        "palmGestureDetector",
        "Z",
        "isLongPress",
        "d",
        "isSingleClick",
        "e",
        "isFingerType",
        "Landroid/graphics/PointF;",
        "f",
        "Landroid/graphics/PointF;",
        "lastMotionPoint",
        "g",
        "downPointPoint",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "h",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "longPressTimer",
        "<init>",
        "(Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;)V",
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
.field public final a:Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "palmCollectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->a:Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->Companion:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;->getInstance()Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->f:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->g:Landroid/graphics/PointF;

    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection$longPressTimer$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection$longPressTimer$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->h:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    return-void
.end method

.method public static final synthetic access$setLongPress$p(Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->c:Z

    return-void
.end method

.method public static synthetic handleEvent$default(Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->handleEvent(Landroid/view/MotionEvent;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->releaseTouchList()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->c:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->d:Z

    return-void
.end method

.method public final b()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->h:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->h:Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    return-void
.end method

.method public final handleEvent(Landroid/view/MotionEvent;Z)V
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->isEnabledPalmReject()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_c

    if-eq p2, v2, :cond_8

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_8

    goto/16 :goto_2

    :cond_1
    iget-boolean p2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->e:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->collectionTouchList(Landroid/view/MotionEvent;)V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->f:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v3, v4, v6, v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->g:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v5, v6, v8, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v5

    iget-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->a:Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;

    sget-object v7, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v7, p2

    if-eq p2, v2, :cond_5

    if-eq p2, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/onyx/android/sdk/rxgesture/RxGestureConstant;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureConstant;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConstant;->getSINGLE_TAP_DISTANCE_THRESHOLD()I

    move-result v0

    int-to-double v7, v0

    cmpl-double v0, v3, v7

    if-gtz v0, :cond_4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConstant;->getSINGLE_TAP_DISTANCE_THRESHOLD()I

    move-result p2

    int-to-double v2, p2

    cmpl-double p2, v5, v2

    if-gtz p2, :cond_4

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isMultiTouch(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_4
    iput-boolean v1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->d:Z

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double p2, v3, v0

    if-gtz p2, :cond_6

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isMultiTouch(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->c()V

    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->f:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    :cond_8
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->e:Z

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->releaseTouchList()V

    return-void

    :cond_9
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->c:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->analysisSizeList(Z)V

    :cond_a
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->d:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    const/4 p2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->analysisSizeList$default(Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;ZILjava/lang/Object;)V

    :cond_b
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->a()V

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    if-ne p2, v2, :cond_d

    move p2, v2

    goto :goto_1

    :cond_d
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->e:Z

    iget-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->f:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->g:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->e:Z

    if-nez p2, :cond_e

    return-void

    :cond_e
    iget-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->collectionTouchList(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->a:Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;

    sget-object p2, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_10

    if-eq p1, v0, :cond_f

    goto :goto_2

    :cond_f
    iput-boolean v2, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->d:Z

    goto :goto_2

    :cond_10
    iput-boolean v1, p0, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->c:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->b()V

    :goto_2
    return-void
.end method
