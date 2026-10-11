.class public interface abstract Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0005H&J\u0008\u0010\t\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0005H&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;",
        "",
        "enableShapeView",
        "",
        "enable",
        "",
        "getViewShapeType",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "isViewSelected",
        "isVipType",
        "setDockType",
        "dockType",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "setHintColor",
        "color",
        "",
        "setViewSelect",
        "isSelected",
        "isFromClick",
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


# virtual methods
.method public abstract enableShapeView(Z)V
.end method

.method public abstract getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isViewSelected()Z
.end method

.method public abstract isVipType()Z
.end method

.method public abstract setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setHintColor(I)V
.end method

.method public abstract setViewSelect(ZZ)V
.end method
