.class public final Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;
.super Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V
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
        "com/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1",
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

.field public final synthetic s:Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;

.field public final synthetic t:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lkotlin/jvm/functions/Function1;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
            "II",
            "Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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

    iput-object v4, v0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    move v1, p4

    iput v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->r:I

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->t:Lkotlin/jvm/functions/Function1;

    move-object v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move v5, p3

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->r:I

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->updateColorView(II)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->r:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->t:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p1, v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->access$onColorSelected(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V

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

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->r:I

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->set(Lcom/onyx/android/sdk/base/extension/IntList;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getColorSet()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->r:I

    invoke-virtual {v1, p1, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->updateColorView(Lcom/onyx/android/sdk/base/extension/IntList;I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->r:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->t:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1, v0, v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->access$onColorSelected(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public showPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->access$showColorPickPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    return-void
.end method
