.class public interface abstract Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;",
        "",
        "onColorChange",
        "",
        "color",
        "",
        "onColorSelected",
        "onColorSetSelected",
        "colorSet",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "showDeleteDialog",
        "Landroid/widget/PopupWindow;",
        "colorPickView",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;",
        "cellView",
        "Landroid/view/View;",
        "showMessageDialog",
        "message",
        "",
        "startScreenCapture",
        "colorPanelView",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;",
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
.method public abstract onColorChange(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract onColorSelected(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract showMessageDialog(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startScreenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
