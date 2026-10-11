.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->h(IIZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/ViewGroup$MarginLayoutParams;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "layoutParams",
        "Landroid/view/ViewGroup$MarginLayoutParams;",
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


# instance fields
.field final synthetic $initialWidth:I

.field final synthetic $show:Z

.field final synthetic $totalHeight:F

.field final synthetic $value:F


# direct methods
.method public constructor <init>(ZIFF)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$show:Z

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$initialWidth:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$value:F

    iput p4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$totalHeight:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->invoke(Landroid/view/ViewGroup$MarginLayoutParams;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$show:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$initialWidth:I

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$value:F

    sub-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int p0, p0

    .line 4
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$initialWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$value:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$updateShapeContentViewLayout$3;->$totalHeight:F

    sub-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    return-void
.end method
