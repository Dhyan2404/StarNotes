.class final Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$moveTo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveTo(Landroid/graphics/RectF;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;",
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
        "it",
        "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;",
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
.field final synthetic $oldRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$moveTo$2;->this$0:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$moveTo$2;->$oldRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$moveTo$2;->invoke(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$moveTo$2;->this$0:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$moveTo$2;->$oldRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ILjava/lang/Object;)V

    return-void
.end method
