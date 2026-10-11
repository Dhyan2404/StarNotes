.class public final Lcom/onyx/android/sdk/ui/PopupDragHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0004\u0012\u0012\u0008\u0002\u0010\u001f\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u001bj\u0002`\u001c\u0012\u0012\u0008\u0002\u0010!\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u001bj\u0002`\u001c\u00a2\u0006\u0004\u0008*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nJ\u001e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001f\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u001bj\u0002`\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001e\u0010!\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u001bj\u0002`\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001eR\u0016\u0010$\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010&\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0018\u0010)\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/PopupDragHandler;",
        "",
        "",
        "initialize",
        "Landroid/view/View;",
        "view",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouch",
        "",
        "x",
        "y",
        "movePopup",
        "Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "location",
        "",
        "dockValueH",
        "dockValueV",
        "fixWindowLocation",
        "Landroid/widget/PopupWindow;",
        "a",
        "Landroid/widget/PopupWindow;",
        "popup",
        "b",
        "Landroid/view/View;",
        "touchView",
        "Lkotlin/Function0;",
        "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "onDragStart",
        "d",
        "onDragDone",
        "e",
        "F",
        "startX",
        "f",
        "startY",
        "g",
        "Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "startLocation",
        "<init>",
        "(Landroid/widget/PopupWindow;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:F

.field public f:F

.field public g:Lcom/onyx/android/sdk/base/data/WindowLocation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PopupWindow;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStart"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragDone"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->a:Landroid/widget/PopupWindow;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->b:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->c:Lkotlin/jvm/functions/Function0;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/PopupWindow;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 6
    sget-object p3, Lcom/onyx/android/sdk/ui/PopupDragHandler$1;->INSTANCE:Lcom/onyx/android/sdk/ui/PopupDragHandler$1;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 7
    sget-object p4, Lcom/onyx/android/sdk/ui/PopupDragHandler$2;->INSTANCE:Lcom/onyx/android/sdk/ui/PopupDragHandler$2;

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/ui/PopupDragHandler;-><init>(Landroid/widget/PopupWindow;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final fixWindowLocation(Lcom/onyx/android/sdk/base/data/WindowLocation;II)Z
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/base/data/WindowLocation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getContentView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getWindowSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "getContext(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityWindowSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p2, v2, :cond_2

    if-eq p2, v4, :cond_0

    if-eq p2, v0, :cond_2

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getX()I

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v5

    add-int/2addr p2, v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    sub-int/2addr v5, v6

    if-gt p2, v5, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p2

    div-int/2addr p2, v4

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/2addr p0, v4

    sub-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setX(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDx(I)V

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getX()I

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v5

    add-int/2addr p2, v5

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    sub-int/2addr v5, v6

    if-lt p2, v5, :cond_4

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/2addr p0, v4

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p2

    div-int/2addr p2, v4

    sub-int/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setX(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDx(I)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getX()I

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v5

    add-int/2addr p2, v5

    if-gtz p2, :cond_3

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setX(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDx(I)V

    return v2

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getX()I

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v5

    add-int/2addr p2, v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    add-int/2addr p2, v5

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lt p2, v5, :cond_4

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setX(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDx(I)V

    return v2

    :cond_4
    :goto_0
    if-eq p3, v2, :cond_7

    if-eq p3, v4, :cond_5

    if-eq p3, v0, :cond_7

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p3

    div-int/2addr p3, v4

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/2addr v0, v4

    sub-int/2addr p3, v0

    if-gt p2, p3, :cond_6

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/2addr p2, v4

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/2addr p0, v4

    sub-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setY(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDy(I)V

    return v2

    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p3

    div-int/2addr p3, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/2addr v0, v4

    sub-int/2addr p3, v0

    if-lt p2, p3, :cond_9

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/2addr p0, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/2addr p2, v4

    sub-int/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setY(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDy(I)V

    return v2

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result p3

    add-int/2addr p2, p3

    if-gtz p2, :cond_8

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setY(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDy(I)V

    return v2

    :cond_8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p3

    if-lt p2, p3, :cond_9

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setY(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDy(I)V

    return v2

    :cond_9
    :goto_1
    return v3
.end method

.method public final initialize()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->b:Landroid/view/View;

    new-instance v1, Lcom/sunia/HTREnginev2/g5l;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g5l;-><init>(Lcom/onyx/android/sdk/ui/PopupDragHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final movePopup(FF)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->e:F

    sub-float v3, v1, v3

    iget v4, v0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->f:F

    sub-float v4, v2, v4

    iget-object v5, v0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->g:Lcom/onyx/android/sdk/base/data/WindowLocation;

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getSrcDockPoint()Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->getHorizontalValue()I

    move-result v15

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getSrcDockPoint()Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->getVerticalValue()I

    move-result v14

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-ne v15, v8, :cond_1

    move v13, v6

    goto :goto_0

    :cond_1
    move v13, v7

    :goto_0
    if-ne v14, v8, :cond_2

    move v12, v6

    goto :goto_1

    :cond_2
    move v12, v7

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7f

    const/16 v18, 0x0

    move/from16 v19, v12

    move-object/from16 v12, v16

    move/from16 v20, v13

    move/from16 v13, v17

    move v2, v14

    move-object/from16 v14, v18

    invoke-static/range {v5 .. v14}, Lcom/onyx/android/sdk/base/data/WindowLocation;->copy$default(Lcom/onyx/android/sdk/base/data/WindowLocation;IIIIILcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result v6

    int-to-float v6, v6

    move/from16 v7, v20

    int-to-float v7, v7

    mul-float/2addr v3, v7

    add-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDx(I)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result v3

    int-to-float v3, v3

    move/from16 v6, v19

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDy(I)V

    invoke-virtual {v0, v5, v15, v2}, Lcom/onyx/android/sdk/ui/PopupDragHandler;->fixWindowLocation(Lcom/onyx/android/sdk/base/data/WindowLocation;II)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v1, v0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->e:F

    move/from16 v1, p2

    iput v1, v0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->f:F

    iput-object v5, v0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->g:Lcom/onyx/android/sdk/base/data/WindowLocation;

    :cond_3
    sget-object v21, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->a:Landroid/widget/PopupWindow;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6

    const/16 v27, 0x0

    move-object/from16 v22, v0

    move-object/from16 v23, v5

    invoke-static/range {v21 .. v27}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->update$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;IIILjava/lang/Object;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/ui/PopupDragHandler;->movePopup(FF)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iput p1, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->e:F

    iput v0, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->f:F

    sget-object p1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    iget-object p2, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getCachedWindowLocation(Landroid/widget/PopupWindow;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/PopupDragHandler;->g:Lcom/onyx/android/sdk/base/data/WindowLocation;

    :goto_0
    return v1
.end method
