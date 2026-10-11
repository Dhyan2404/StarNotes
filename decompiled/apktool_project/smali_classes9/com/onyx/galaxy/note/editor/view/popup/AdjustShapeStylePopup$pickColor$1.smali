.class public final Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;
.super Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->H(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1",
        "Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;",
        "onColorSelected",
        "",
        "color",
        "",
        "onColorSetSelected",
        "colorSet",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
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
.field public final synthetic q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

.field public final synthetic r:I

.field public final synthetic s:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
            "II",
            "Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v4, p2

    iput-object v4, v0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    move v1, p4

    iput v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->r:I

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    const/4 v6, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object v3, p1

    move v5, p3

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v9}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->r:I

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->updateColorView(II)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->access$changeColor(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;I)V

    return-void
.end method

.method public onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 3
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

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->r:I

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->r:I

    invoke-virtual {v1, p1, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->updateColorView(Lcom/onyx/android/sdk/base/extension/IntList;I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->access$changeColor(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;I)V

    return-void
.end method

.method public showPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/Activity;->getTopContentView()Landroid/view/View;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/PopupAdjustShapeStylesBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v3

    const-string p0, "getRoot(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showLeftOrRightAsideAndTopAlign$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/widget/PopupWindow;

    return-void
.end method
