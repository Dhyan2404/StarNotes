.class public final Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;
.super Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1",
        "Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;",
        "onColorSelected",
        "",
        "color",
        "",
        "showDeleteDialog",
        "Landroid/widget/PopupWindow;",
        "colorPickView",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;",
        "cellView",
        "Landroid/view/View;",
        "showPopupWindow",
        "popup",
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;",
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
.field public final synthetic q:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;->q:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    const/4 v2, 0x0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;->v(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 1

    const-string v0, "$colorPickView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->removeSelectedCell()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;->q:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->access$changeMarginColor(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;I)V

    return-void
.end method

.method public showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 10
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

    new-instance v2, Lcom/sunia/HTREnginev2/wsk;

    invoke-direct {v2, p1}, Lcom/sunia/HTREnginev2/wsk;-><init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/CommonDeletePopup;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v5, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;->q:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v8

    const-string v9, "getRoot(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, v0

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;->q:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2, p0}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public showPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->setSelectColorTabOnly()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->setOpaqueColorOnly()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;->q:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const-string v0, "getRootView(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1;->q:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    const-string p0, "getRoot(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showRightAsideAndTopAlign$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/widget/PopupWindow;

    return-void
.end method
