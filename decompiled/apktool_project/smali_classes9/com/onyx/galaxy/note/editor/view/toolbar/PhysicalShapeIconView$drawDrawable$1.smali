.class final Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$drawDrawable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/RectF;",
        "it",
        "Landroid/graphics/Bitmap;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$drawDrawable$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$drawDrawable$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->access$getIconWidth$p(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$drawDrawable$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->access$getIconHeight$p(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView$drawDrawable$1;->invoke(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
