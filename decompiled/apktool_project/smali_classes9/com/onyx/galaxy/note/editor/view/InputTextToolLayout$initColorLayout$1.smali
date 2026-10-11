.class public final Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$initColorLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/InputTextToolLayout$initColorLayout$1",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;",
        "onSelected",
        "",
        "color",
        "",
        "colorIndex",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(II)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getSelectColor$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$pickColor(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$changeColor(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;I)V

    return-void
.end method
