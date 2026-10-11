.class public final Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;",
        "onColorSelected",
        "",
        "color",
        "",
        "onColorSetSelected",
        "colorSet",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "showDeleteDialog",
        "Landroid/widget/PopupWindow;",
        "colorPickView",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;",
        "cellView",
        "Landroid/view/View;",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->b(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 1

    const-string v0, "$colorPickView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->removeSelectedCell()V

    return-void
.end method


# virtual methods
.method public onColorChange(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback$DefaultImpls;->onColorChange(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;I)V

    return-void
.end method

.method public onColorSelected(I)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->getSelectedPosition()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->access$updateSelectColor(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;II)V

    return-void
.end method

.method public onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getColors()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->getSelectedPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->getSelectedPosition()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->access$updateSelectColor(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;II)V

    return-void
.end method

.method public showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 9
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "colorPickView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/CommonDeletePopup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/sunia/HTREnginev2/e3e;

    invoke-direct {v2, p1}, Lcom/sunia/HTREnginev2/e3e;-><init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/CommonDeletePopup;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v5, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v2, v0

    move-object v3, p2

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p0}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public showMessageDialog(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback$DefaultImpls;->showMessageDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Ljava/lang/String;)V

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->access$startScreenCaptureWithCheck(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V

    return-void
.end method
