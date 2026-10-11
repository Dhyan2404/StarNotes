.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;
.super Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->j(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;IILkotlin/jvm/functions/Function3;)V
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
        "com/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1",
        "Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;",
        "onColorSelected",
        "",
        "fillColor",
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
.field public final synthetic q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

.field public final synthetic r:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

.field public final synthetic s:I

.field public final synthetic t:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/functions/Function3;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Landroid/view/View;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;",
            "I",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v4, p4

    iput-object v4, v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    move-object v6, p6

    iput-object v6, v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->r:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move v1, p7

    iput v1, v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->s:I

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->t:Lkotlin/jvm/functions/Function3;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->s:I

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->updateFillColor(II)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->s:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->t:Lkotlin/jvm/functions/Function3;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->access$onFillColorSelected(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;IILkotlin/jvm/functions/Function3;Z)V

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

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->s:I

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->access$getShapeType$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getFillColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->set(Lcom/onyx/android/sdk/base/extension/IntList;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->s:I

    invoke-virtual {v1, p1, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->updateFillColorList(Lcom/onyx/android/sdk/base/extension/IntList;I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->s:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->t:Lkotlin/jvm/functions/Function3;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->access$onFillColorSelected(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;IILkotlin/jvm/functions/Function3;Z)V

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

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout$pickFillColor$pickColorAction$1;->r:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;->access$showColorPickPopupWindow(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeFillColorPropertyLayout;Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method
