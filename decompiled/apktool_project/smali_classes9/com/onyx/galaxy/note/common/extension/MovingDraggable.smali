.class public Lcom/onyx/galaxy/note/common/extension/MovingDraggable;
.super Lcom/hjq/window/draggable/MovingDraggable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;,
        Lcom/onyx/galaxy/note/common/extension/MovingDraggable$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0016\u0018\u00002\u00020\u0001:\u0001PB\u008a\u0001\u0012\u0006\u0010\'\u001a\u00020\"\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012:\u0008\u0002\u00106\u001a4\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110/\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(0\u0012\u0004\u0012\u00020\n\u0018\u00010,\u0012%\u0008\u0002\u0010;\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00020\n\u0018\u000107\u00a2\u0006\u0004\u0008N\u0010OJ\u001a\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0017J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ1\u0010\u0016\u001a\u00020\n2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\u0006H\u0016J\u000e\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0006J\u0008\u0010\u001b\u001a\u00020\u0011H\u0014J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J\u0008\u0010\u001e\u001a\u00020\u001cH\u0002J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0014H\u0002J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0014H\u0002R\u0017\u0010\'\u001a\u00020\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+RT\u00106\u001a4\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110/\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(0\u0012\u0004\u0012\u00020\n\u0018\u00010,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R3\u0010;\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00020\n\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010>\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010@\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010=R\u0016\u0010B\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010=R\u0016\u0010D\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010=R\u0016\u00108\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010\u001a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010FR\u0016\u0010H\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010=R\u0016\u0010J\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010=R\u0018\u0010M\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010L\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/extension/MovingDraggable;",
        "Lcom/hjq/window/draggable/MovingDraggable;",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouch",
        "Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;",
        "listener",
        "",
        "setOnMoveInterceptListener",
        "Landroid/graphics/Rect;",
        "editorContainerRect",
        "",
        "rootLocation",
        "setEditorContainerRect",
        "",
        "moveX",
        "moveY",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "recordDockType",
        "resetLocation",
        "(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "isTouchMoving",
        "drag",
        "enableDrag",
        "getMinTouchDistance",
        "",
        "i",
        "h",
        "dockType",
        "j",
        "g",
        "Landroid/content/Context;",
        "s",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "t",
        "Landroid/graphics/Rect;",
        "u",
        "[I",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "Landroid/graphics/Point;",
        "locationPoint",
        "Lkotlin/jvm/functions/Function2;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "setCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "callback",
        "Lkotlin/Function1;",
        "touchMoving",
        "w",
        "Lkotlin/jvm/functions/Function1;",
        "moveCallback",
        "x",
        "F",
        "viewDownX",
        "y",
        "viewDownY",
        "z",
        "viewDownRawX",
        "J",
        "viewDownRawY",
        "O",
        "Z",
        "Q",
        "viewMoveX",
        "k0",
        "viewMoveY",
        "q0",
        "Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;",
        "onMoveInterceptListener",
        "<init>",
        "(Landroid/content/Context;Landroid/graphics/Rect;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V",
        "OnMoveInterceptListener",
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
.field public J:F

.field public O:Z

.field public Q:Z

.field public Z:F

.field public k0:F

.field public q0:Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "-",
            "Landroid/graphics/Point;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Rect;",
            "[I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "-",
            "Landroid/graphics/Point;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/hjq/window/draggable/MovingDraggable;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->s:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->t:Landroid/graphics/Rect;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->u:[I

    .line 6
    iput-object p4, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->v:Lkotlin/jvm/functions/Function2;

    .line 7
    iput-object p5, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->w:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->Q:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;-><init>(Landroid/content/Context;Landroid/graphics/Rect;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic resetLocation$default(Lcom/onyx/galaxy/note/common/extension/MovingDraggable;Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->resetLocation(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resetLocation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final enableDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->Q:Z

    return-void
.end method

.method public final g(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)I
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->i()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->h()I

    move-result p0

    :goto_1
    return p0
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "Landroid/graphics/Point;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->v:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->s:Landroid/content/Context;

    return-object p0
.end method

.method public getMinTouchDistance()F
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->s:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getEasyWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getDecorView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getEasyWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getDecorView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public isTouchMoving()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->O:Z

    return p0
.end method

.method public final j(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)I
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->getIconRotationByType()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->h()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->i()I

    move-result p0

    :goto_1
    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->Q:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleHeight()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->u:[I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    aget p1, v2, v0

    aget v1, v2, v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_b

    if-eq v2, v3, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 p1, 0x3

    if-eq v2, p1, :cond_9

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->O:Z

    if-eqz v1, :cond_5

    iget-object p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->w:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewWidth()I

    move-result p2

    div-int/2addr p2, v4

    int-to-float p2, p2

    iput p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->x:F

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewHeight()I

    move-result p2

    div-int/2addr p2, v4

    int-to-float p2, p2

    iput p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->y:F

    :cond_3
    iget p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->x:F

    sub-float/2addr v2, p2

    const/4 p2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->Z:F

    iget v1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->y:F

    sub-float/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->k0:F

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->t:Landroid/graphics/Rect;

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->Z:F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->Z:F

    iget p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->k0:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewHeight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->k0:F

    :cond_4
    iget p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->Z:F

    iget p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->k0:F

    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(FF)V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchExecuteDraggingCallback()V

    goto/16 :goto_1

    :cond_5
    iget p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, p1, v1, v2, v4}, Lcom/hjq/window/draggable/BaseDraggable;->isFingerMove(FFFF)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->q0:Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;

    if-eqz p1, :cond_7

    if-eqz p1, :cond_6

    iget v1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->z:F

    iget v2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->J:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-interface {p1, v1, v2, v4, p2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;->onIntercept(FFFF)Z

    move-result p1

    if-nez p1, :cond_6

    move p1, v3

    goto :goto_0

    :cond_6
    move p1, v0

    :goto_0
    if-eqz p1, :cond_c

    :cond_7
    iput-boolean v3, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->O:Z

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->w:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_8

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchStartDraggingCallback()V

    goto :goto_1

    :cond_9
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->O:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->Z:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->k0:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->resetLocation$default(Lcom/onyx/galaxy/note/common/extension/MovingDraggable;Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchStopDraggingCallback()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->w:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_a

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :try_start_0
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->O:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->O:Z

    throw p1

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->z:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->J:F

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->O:Z

    :cond_c
    :goto_1
    return v0
.end method

.method public final resetLocation(Ljava/lang/Float;Ljava/lang/Float;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 10
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->t:Landroid/graphics/Rect;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewOnScreenX()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewOnScreenY()I

    move-result p2

    int-to-float p2, p2

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->i()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->i()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x4

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v6

    sub-int/2addr v5, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/2addr v8, v2

    add-int/2addr v7, v8

    if-eqz p3, :cond_6

    sget-object v1, Lcom/onyx/galaxy/note/common/extension/MovingDraggable$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_5

    if-eq p3, v2, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_3

    if-ne p3, v6, :cond_2

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget p3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget p3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_4
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->i()I

    move-result v1

    add-int/2addr p3, v1

    :goto_2
    int-to-float p3, p3

    goto :goto_6

    :cond_5
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget p3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->i()I

    move-result v1

    :goto_3
    sub-int/2addr p3, v1

    goto :goto_4

    :cond_6
    int-to-float p3, v4

    cmpg-float p3, v1, p3

    if-gtz p3, :cond_7

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->RIGHT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget p3, v0, Landroid/graphics/Rect;->left:I

    :goto_4
    int-to-float p3, p3

    move v9, p2

    move-object p2, p1

    move p1, p3

    move p3, v9

    goto :goto_6

    :cond_7
    int-to-float p3, v5

    cmpl-float p3, v1, p3

    if-ltz p3, :cond_8

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->LEFT:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget p3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->i()I

    move-result v1

    goto :goto_3

    :cond_8
    int-to-float p2, v7

    cmpg-float p2, v3, p2

    if-gtz p2, :cond_9

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget p3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_9
    sget-object p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->i()I

    move-result v1

    add-int/2addr p3, v1

    :goto_5
    int-to-float p3, p3

    move v9, p3

    move-object p3, p2

    move p2, v9

    move-object v9, p3

    move p3, p2

    move-object p2, v9

    :goto_6
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_a

    int-to-float p1, v1

    :cond_a
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->j(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_b

    iget p1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->j(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    :cond_b
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    cmpg-float v2, p3, v2

    if-gez v2, :cond_c

    int-to-float p3, v1

    :cond_c
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->g(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_d

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->g(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    :cond_d
    invoke-virtual {p0, p1, p3}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(FF)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->v:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_e

    new-instance v0, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p3, p3

    invoke-direct {v0, p1, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p0, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "-",
            "Landroid/graphics/Point;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->v:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setEditorContainerRect(Landroid/graphics/Rect;[I)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorContainerRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->t:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->u:[I

    return-void
.end method

.method public final setOnMoveInterceptListener(Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->q0:Lcom/onyx/galaxy/note/common/extension/MovingDraggable$OnMoveInterceptListener;

    return-void
.end method
