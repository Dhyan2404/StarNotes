.class public final Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;",
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->f:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;->onColorChange(I)V

    return-void
.end method

.method public onColorSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    invoke-interface {v0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;->onColorSelected(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->f:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->access$updateSelectedColors(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;I)V

    return-void
.end method

.method public onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;->onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    return-void
.end method

.method public showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 1
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

    const-string v0, "colorPickView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    invoke-interface {p0, p1, p2}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;->showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public showMessageDialog(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;->showMessageDialog(Ljava/lang/String;)V

    return-void
.end method

.method public startScreenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorPanelView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$wrapperColorPickerCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;->startScreenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V

    return-void
.end method
