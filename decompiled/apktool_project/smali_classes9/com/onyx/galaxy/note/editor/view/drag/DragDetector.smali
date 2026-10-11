.class public final Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/drag/DragDetector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 92\u00020\u0001:\u00019B\u000f\u0012\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u00087\u00108J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008J\u001c\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000eJ\u0008\u0010\u0011\u001a\u00020\u0006H\u0002J\u0016\u0010\u0013\u001a\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\"\u0010(\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001b\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u0010,\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\u001b\u001a\u0004\u0008*\u0010%\"\u0004\u0008+\u0010\'R\"\u00100\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u001b\u001a\u0004\u0008.\u0010%\"\u0004\u0008/\u0010\'R\"\u00104\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u001b\u001a\u0004\u00082\u0010%\"\u0004\u00083\u0010\'\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;",
        "",
        "",
        "orientation",
        "",
        "setOrientation",
        "",
        "isVerticalOrientation",
        "Landroid/view/MotionEvent;",
        "event",
        "onDown",
        "onMove",
        "onUp",
        "motionEvent",
        "Lkotlin/Function0;",
        "quickDetector",
        "detect",
        "a",
        "selector",
        "d",
        "b",
        "c",
        "I",
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "touchVelocityTracker",
        "touchSlop",
        "Z",
        "touchDown",
        "",
        "e",
        "F",
        "downX",
        "f",
        "downY",
        "g",
        "getHasMoved",
        "()Z",
        "setHasMoved",
        "(Z)V",
        "hasMoved",
        "h",
        "getTouchSlopCanDrag",
        "setTouchSlopCanDrag",
        "touchSlopCanDrag",
        "i",
        "getQuickDetect",
        "setQuickDetect",
        "quickDetect",
        "j",
        "getEnableDetect",
        "setEnableDetect",
        "enableDetect",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
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


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:D = 20.0

.field public static final l:I = 0xdac


# instance fields
.field public a:I

.field public final b:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public e:F

.field public f:F

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->Companion:Lcom/onyx/galaxy/note/editor/view/drag/DragDetector$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->a:I

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-direct {v1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->b:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->c:I

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->j:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->d:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->h:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->onMove(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->h:Z

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->e:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->f:F

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->isVerticalOrientation()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->c:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->c:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-nez v4, :cond_2

    return v3

    :cond_2
    float-to-double v4, p1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    if-eqz v1, :cond_4

    const-wide v6, 0x4051800000000000L    # 70.0

    cmpg-double p1, v6, v4

    if-gtz p1, :cond_3

    const-wide v6, 0x405b800000000000L    # 110.0

    cmpg-double p1, v4, v6

    if-gtz p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v3

    goto :goto_3

    :cond_4
    const-wide/high16 v6, 0x4064000000000000L    # 160.0

    cmpl-double p1, v4, v6

    if-gez p1, :cond_5

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpg-double p1, v4, v6

    if-gtz p1, :cond_3

    :cond_5
    :goto_2
    move p1, v2

    :goto_3
    if-nez p1, :cond_6

    return v3

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->b:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->getRealtimeVelocity()[F

    move-result-object p0

    const p1, 0x455ac000    # 3500.0f

    if-eqz v1, :cond_7

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->last([F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_8

    goto :goto_4

    :cond_7
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->first([F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    return v2
.end method

.method public final d(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->i:Z

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->j:Z

    :cond_0
    return-void
.end method

.method public final detect(Landroid/view/MotionEvent;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickDetector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->d(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->b(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final getEnableDetect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->j:Z

    return p0
.end method

.method public final getHasMoved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->g:Z

    return p0
.end method

.method public final getQuickDetect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->i:Z

    return p0
.end method

.method public final getTouchSlopCanDrag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->h:Z

    return p0
.end method

.method public final isVerticalOrientation()Z
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->e:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->h:Z

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->g:Z

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->i:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->j:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->b:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onRelease()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->b:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->g:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->b:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onMove(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->b:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onUp(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->b:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onRelease()V

    return-void
.end method

.method public final setEnableDetect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->j:Z

    return-void
.end method

.method public final setHasMoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->g:Z

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->a:I

    return-void
.end method

.method public final setQuickDetect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->i:Z

    return-void
.end method

.method public final setTouchSlopCanDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;->h:Z

    return-void
.end method
