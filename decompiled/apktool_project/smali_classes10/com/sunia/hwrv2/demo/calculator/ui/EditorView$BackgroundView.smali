.class Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;


# direct methods
.method public constructor <init>(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {p0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
