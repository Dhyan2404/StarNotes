.class public final Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;
.super Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->x(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V
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
        "com/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1",
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

.field public final synthetic s:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
            "II",
            "Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v4, p1

    iput-object v4, v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    move v1, p3

    iput v1, v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->r:I

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static/range {p7 .. p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move v5, p2

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v9}, Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->x(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    return-void
.end method

.method public static synthetic v(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->w(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V
    .locals 8

    const-string v0, "$popup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    move-result-object v4

    const-string v5, "binding"

    if-nez v4, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_0
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    const-string v6, "colorLayout"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1, v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v2

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v4

    new-instance v7, Lcom/sunia/HTREnginev2/nli;

    invoke-direct {v7, p1}, Lcom/sunia/HTREnginev2/nli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {p0, v7}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    iget-object p1, v3, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v3, v4, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/textbox/event/EditorRestartInputEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/textbox/event/EditorRestartInputEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$postEvent(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->r:I

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->updateColorView(II)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$changeColor(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;I)V

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

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->r:I

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->q:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->r:I

    invoke-virtual {v1, p1, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->updateColorView(Lcom/onyx/android/sdk/base/extension/IntList;I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$changeColor(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;I)V

    return-void
.end method

.method public showPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->s:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/oli;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/oli;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$integer;->show_color_picker_delay_time:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
