.class public final Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PathBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008&\u0010\'J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R\"\u0010!\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0014\u001a\u0004\u0008\u001f\u0010\u0016\"\u0004\u0008 \u0010\u0018R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;",
        "",
        "",
        "isSelectDockType",
        "",
        "applySelectLinePath",
        "",
        "radius",
        "applyRoundRect",
        "setRectF",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "a",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "getDockType",
        "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "setDockType",
        "(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "dockType",
        "Landroid/graphics/Path;",
        "b",
        "Landroid/graphics/Path;",
        "getSelectLinePath",
        "()Landroid/graphics/Path;",
        "setSelectLinePath",
        "(Landroid/graphics/Path;)V",
        "selectLinePath",
        "c",
        "getPath",
        "setPath",
        "path",
        "d",
        "getLastPath",
        "setLastPath",
        "lastPath",
        "Landroid/graphics/RectF;",
        "e",
        "Landroid/graphics/RectF;",
        "rectF",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V",
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
.field public a:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->d:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final applyRoundRect(F)V
    .locals 11

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->isSelectDockType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/PathKt;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->d:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v0, v10, :cond_4

    if-eq v0, v9, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    new-array v6, v6, [F

    aput p1, v6, v5

    aput p1, v6, v10

    aput p1, v6, v9

    aput p1, v6, v8

    aput v1, v6, v7

    aput v1, v6, v4

    aput v1, v6, v3

    aput v1, v6, v2

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, v6, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    new-array v6, v6, [F

    aput p1, v6, v5

    aput p1, v6, v10

    aput v1, v6, v9

    aput v1, v6, v8

    aput v1, v6, v7

    aput v1, v6, v4

    aput p1, v6, v3

    aput p1, v6, v2

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, v6, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    new-array v6, v6, [F

    aput v1, v6, v5

    aput v1, v6, v10

    aput v1, v6, v9

    aput v1, v6, v8

    aput p1, v6, v7

    aput p1, v6, v4

    aput p1, v6, v3

    aput p1, v6, v2

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, v6, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    new-array v6, v6, [F

    aput v1, v6, v5

    aput v1, v6, v10

    aput p1, v6, v9

    aput p1, v6, v8

    aput p1, v6, v7

    aput p1, v6, v4

    aput v1, v6, v3

    aput v1, v6, v2

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, v6, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method

.method public final applySelectLinePath()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-object p0
.end method

.method public final getLastPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->d:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getSelectLinePath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method public final isSelectDockType()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->getSelectDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    return-void
.end method

.method public final setLastPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->d:Landroid/graphics/Path;

    return-void
.end method

.method public final setPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->c:Landroid/graphics/Path;

    return-void
.end method

.method public final setRectF()V
    .locals 11

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->isSelectDockType()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getContentViewWidthOffset$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getContentViewWidthOffset$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getDragWidth$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getDragWidthRatio$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v2

    mul-float/2addr v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->isSelectDockType()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getDragWidth$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getDragHeightRatio$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getContentViewWidthOffset$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getContentViewWidthOffset$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v5}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getContentViewWidthOffset$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v5}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getContentViewWidthOffset$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    sub-float/2addr v6, v5

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v8, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v7, v8, :cond_7

    if-eq v7, v1, :cond_6

    const/4 v1, 0x3

    if-eq v7, v1, :cond_5

    const/4 v1, 0x4

    if-eq v7, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    div-float/2addr v6, v10

    div-float/2addr v0, v10

    sub-float/2addr v6, v0

    add-float/2addr v3, v6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getDragWidth$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    sub-float/2addr v2, v6

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getDragWidth$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v5

    int-to-float v3, v9

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    div-float/2addr v6, v10

    sub-float/2addr v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v10

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    div-float/2addr v2, v10

    sub-float/2addr p0, v2

    sub-float/2addr v5, p0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    div-float/2addr v6, v10

    div-float/2addr v0, v10

    sub-float/2addr v6, v0

    add-float/2addr v3, v6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    sub-float/2addr v0, v6

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getDragWidth$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result p0

    invoke-virtual {v1, v3, v4, v0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->e:Landroid/graphics/RectF;

    int-to-float v1, v9

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-static {v4}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;->access$getDragWidth$p(Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;)F

    move-result v4

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->f:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v10

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    div-float/2addr v2, v10

    sub-float/2addr p0, v2

    sub-float/2addr v5, p0

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_4
    return-void
.end method

.method public final setSelectLinePath(Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView$PathBean;->b:Landroid/graphics/Path;

    return-void
.end method
