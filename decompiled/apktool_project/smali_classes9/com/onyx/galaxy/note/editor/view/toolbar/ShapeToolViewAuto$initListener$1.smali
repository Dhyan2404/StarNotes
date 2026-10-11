.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer$IShapeClickListener;",
        "onDoubleClicked",
        "",
        "iShapeViewOpt",
        "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;",
        "onNormalItemClicked",
        "onVipItemClicked",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClicked(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "iShapeViewOpt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$statisticTool(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$handlerItemDoubleClicked(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    return-void
.end method

.method public onNormalItemClicked(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "iShapeViewOpt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$statisticTool(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$handlerItemNormalClicked(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    return-void
.end method

.method public onVipItemClicked(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "iShapeViewOpt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$statisticTool(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$handlerItemVipClicked(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;)V

    return-void
.end method
