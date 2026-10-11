.class public final Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$initColorLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout$ColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/NormalPenPopup$initColorLayout$1",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout$ColorSelectedListener;",
        "onSelected",
        "",
        "color",
        "",
        "colorIndex",
        "onSelectedClick",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$initColorLayout$1;->b:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(II)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->access$setHasSelectedColor$p(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getListener()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;->onSelectedColor(II)V

    :cond_0
    return-void
.end method

.method public onSelectedClick(II)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$initColorLayout$1;->b:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    invoke-static {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->access$pickColor(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;II)V

    return-void
.end method
