.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0013\u001a\u00020\u000c\u0012\u0006\u0010\u001b\u001a\u00020\u0014\u0012\u0006\u00101\u001a\u000200\u00a2\u0006\u0004\u00082\u00103J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\'\u001a\u00020\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R!\u0010-\u001a\u0008\u0012\u0004\u0012\u00020)0(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010\u001e\u001a\u0004\u0008+\u0010,\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "m",
        "l",
        "k",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "q",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "getViewShapeType",
        "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "viewShapeType",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "editorBundle",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "s",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "getPenViewModel",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "setPenViewModel",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V",
        "penViewModel",
        "Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;",
        "t",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "u",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "getPenProperty",
        "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "penProperty",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "v",
        "getPenArgsOption",
        "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "penArgsOption",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
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
.field public final q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
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

    const-string v0, "viewShapeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penViewModel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->t:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->u:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$penArgsOption$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$penArgsOption$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->v:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->m()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->l()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->k()V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->v:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->u:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    return-object p0
.end method

.method public final getPenViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    return-object p0
.end method

.method public final getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->eraser_thickness:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->thickness:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMaxStrokeWidth(I)F

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$integer;->times_10:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMinStrokeWidth(I)F

    move-result v1

    sget v4, Lcom/onyx/galaxy/note/R$integer;->times_10:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    const-string v2, "between(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    return-void
.end method
