.class public final Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;
.super Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->m(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1",
        "Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;",
        "",
        "color",
        "",
        "onColorSelected",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "colorSet",
        "onColorSetSelected",
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;",
        "popup",
        "showPopupWindow",
        "Landroid/view/View;",
        "anchorView",
        "",
        "u",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

.field public final synthetic r:I

.field public final synthetic s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;IILcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;",
            "II",
            "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v4, p2

    iput-object v4, v0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    move v1, p4

    iput v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->r:I

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    move-object v1, p6

    move-object v2, p7

    move-object v3, p1

    move v5, p3

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->r:I

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;->updateColorView(II)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->access$setHasSelectedColor$p(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getListener()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->r:I

    invoke-interface {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;->onSelectedColor(II)V

    :cond_0
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

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toIntList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->r:I

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;->updateColorView(Lcom/onyx/android/sdk/base/extension/IntList;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->access$setHasSelectedColor$p(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getListener()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->r:I

    invoke-interface {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;->onSelectedColorList(Lcom/onyx/android/sdk/base/extension/IntList;I)V

    :cond_0
    return-void
.end method

.method public showPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 13
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getContentView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getWindowDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->u(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    sget-object v8, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    xor-int/lit8 v9, v0, 0x1

    invoke-static {v8, v9, v7, v3, v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v8

    sget-object v9, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    xor-int/2addr v0, v2

    invoke-static {v9, v0, v7, v3, v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v3, v1

    move-object v6, v8

    move v8, v0

    invoke-static/range {v3 .. v12}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    sget-object v8, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    xor-int/lit8 v9, v0, 0x1

    invoke-static {v8, v9, v7, v3, v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v8

    sget-object v9, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    xor-int/2addr v0, v2

    invoke-static {v9, v0, v7, v3, v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v3, v1

    move-object v6, v8

    move v8, v0

    invoke-static/range {v3 .. v12}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    sget-object v6, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v7, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    sget-object v6, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v7, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v0

    :goto_0
    move-object v3, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->onShowColorPickerPopup(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDx()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDx(I)V

    sget-object v1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;ILjava/lang/Object;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final u(Landroid/view/View;)Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityDecorView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p0

    if-le v0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
