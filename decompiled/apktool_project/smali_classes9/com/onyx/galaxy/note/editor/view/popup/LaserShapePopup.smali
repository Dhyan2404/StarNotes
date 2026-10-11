.class public final Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;
.super Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0012\u0010\r\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u001a\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u00100\u000fH\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0018R\u001c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001c\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;",
        "",
        "A",
        "D",
        "C",
        "B",
        "z",
        "Landroid/view/View;",
        "view",
        "E",
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;",
        "type",
        "F",
        "y",
        "Ljava/util/LinkedList;",
        "Lkotlin/Pair;",
        "",
        "",
        "x",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "shapeToolType",
        "Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;",
        "Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "shapeAttrOption",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "penViewModel",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
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
.field public final x:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

.field public z:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeToolType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penViewModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->x:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getLaserShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->z:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->A()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->D()V

    return-void
.end method

.method public static final synthetic access$getData(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)Ljava/util/LinkedList;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->x()Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShapeAttrOption$p(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->z:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public static final synthetic access$getShapeToolType$p(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->x:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public static synthetic w(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->E(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->z:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final B()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->x:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMaxStrokeWidth(I)F

    move-result v4

    invoke-static {v4}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->x:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMinStrokeWidth(I)F

    move-result v3

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v3

    const-string v4, "between(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->z:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getStrokeWidth()F

    move-result v3

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initStrokeAndColorView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initStrokeAndColorView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final C()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->dotType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/dvi;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/dvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->lineType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/dvi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dvi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->z:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->F(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;)V

    return-void
.end method

.method public final D()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v3, "getRoot(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p0, v0, v2, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->initColorLayout$default(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->C()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->B()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->z()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y()V

    return-void
.end method

.method public final E(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getTagSafely(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->F(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->z:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$onLaserTypeClick$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$onLaserTypeClick$1;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final F(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->dotType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v3, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;->DOT:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->lineType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;->LINE:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final x()Ljava/util/LinkedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getTapePropertyOption()Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->getTapeType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "linearTap"

    invoke-direct {v2, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->getTapeType()I

    move-result v3

    if-ne v3, v5, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "rectangularTap"

    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;->isShowAllTape()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "showallTap"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->rgbaValueFormat(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "color"

    invoke-direct {v0, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->thicknessValueFormat(F)Ljava/lang/String;

    move-result-object p0

    const-string v2, "thickness"

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final y()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final z()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->seekBarDuration:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v3

    const-string v4, "between(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->seekBarDuration:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    sget-object v3, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->z:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;->getProgressByDuration(J)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->seekBarDuration:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initDurationView$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initDurationView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)V

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y:Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->seekBarDuration:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initDurationView$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initDurationView$2;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setFormatProgressValueStrCallback(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
