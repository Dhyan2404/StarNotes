.class public Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010U\u001a\u00020T\u0012\u0006\u00102\u001a\u00020-\u0012\u0006\u00109\u001a\u000203\u0012\u0006\u0010A\u001a\u00020:\u0012\u0006\u0010W\u001a\u00020V\u00a2\u0006\u0004\u0008X\u0010YJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002JG\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2%\u0008\u0002\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000cH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002JG\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2%\u0008\u0002\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000cH\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J7\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072%\u0008\u0002\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000cH\u0004J\u0018\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0004H\u0004J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0004H\u0004J\u0018\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0004H\u0004J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0015H\u0004J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J(\u0010+\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\t2\u0006\u0010*\u001a\u00020\tH\u0016J\u0008\u0010,\u001a\u00020\u0002H\u0016R\u0017\u00102\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\"\u0010A\u001a\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u0017\u0010F\u001a\u00020B8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010C\u001a\u0004\u0008D\u0010ER!\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00040G8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010H\u001a\u0004\u0008I\u0010JR$\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u0016\u0010S\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010R\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "t",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgs",
        "l",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
        "colorLayout",
        "",
        "originColor",
        "colorIndex",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "color",
        "colorSelected",
        "r",
        "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;",
        "popup",
        "u",
        "Landroid/view/View;",
        "anchorView",
        "",
        "o",
        "p",
        "v",
        "n",
        "initColorLayout",
        "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;",
        "seekBarThickness",
        "initStrokeWidthView",
        "seekBarPressure",
        "initStrokePressureView",
        "seekBarNib",
        "initStrokeNibView",
        "view",
        "initAddToPenBoxView",
        "onShowColorPickerPopup",
        "parent",
        "gravity",
        "x",
        "y",
        "showAtLocation",
        "dismiss",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "q",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "getViewShapeType",
        "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "viewShapeType",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
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
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "getPenProperty",
        "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "penProperty",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lkotlin/Lazy;",
        "getPenArgsOption",
        "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "penArgsOption",
        "Landroid/view/View;",
        "getAnchorView",
        "()Landroid/view/View;",
        "setAnchorView",
        "(Landroid/view/View;)V",
        "w",
        "Z",
        "hasSelectedColor",
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

.field public final t:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Z


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

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->t:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$penArgsOption$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$penArgsOption$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->u:Lkotlin/Lazy;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public static final synthetic access$isColorItemDoubleClick(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->n(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onColorSelected(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$pickColor(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$showColorPickPopupWindow(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->u(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V

    return-void
.end method

.method public static synthetic initColorLayout$default(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initColorLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->m(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->l(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->t()V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onColorSelected"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pickColor"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->w:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->addHistoryColorList(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public final getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->v:Landroid/view/View;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->u:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->t:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    return-object p0
.end method

.method public final getPenViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    return-object p0
.end method

.method public final getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final initAddToPenBoxView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/vn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vn;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "colorLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setShape(I)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$initColorLayout$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$initColorLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;)V

    return-void
.end method

.method public final initStrokeNibView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "seekBarNib"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMaxStrokeNib(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMinStrokeNib(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getNib()F

    move-result p2

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->valueToPercent(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$initStrokeNibView$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$initStrokeNibView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final initStrokePressureView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "seekBarPressure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMaxStrokePressure(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMinStrokePressure(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    sget-object v0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getPressureSensitivity()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->toPercentPressureSensitivity(F)F

    move-result p2

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->valueToPercent(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$initStrokePressureView$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$initStrokePressureView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "seekBarThickness"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMaxStrokeWidth(I)F

    move-result v1

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getMinStrokeWidth(I)F

    move-result v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result p2

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$initStrokeWidthView$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$initStrokeWidthView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 13

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->pen_box_pens_max_count_limit:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenCount$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->pen_box_pens_full_quantity_tip:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v6, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->t:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getHistoryColorList(II)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setColorList(Lcom/onyx/android/sdk/base/extension/IntList;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v3, v6, v3}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->addPencilBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v7, p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n(II)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getColor()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getColorIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p2, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final o(Landroid/view/View;)Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

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

.method public onShowColorPickerPopup(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "popup"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->w:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$onColorSelected$1;

    invoke-direct {v1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$onColorSelected$1;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->saveColorProperty(II)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->v(II)V

    if-eqz p4, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final r(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILkotlin/jvm/functions/Function1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v5, p0

    iget-object v1, v5, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->v:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v7, v5, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v8, v5, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getDockType$note_overseasRelease()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->getViewColors()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;

    move-object v0, v11

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v10}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$pickColor$1;-><init>(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;Lkotlin/jvm/functions/Function1;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->v:Landroid/view/View;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->v:Landroid/view/View;

    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->q:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "pencil_data"

    const-string v1, "click_galaxy_penCase_addPencil_0001"

    goto :goto_0

    :cond_1
    const-string v0, "markerpen_data"

    const-string v1, "click_galaxy_penCase_addHighlighter_0001"

    goto :goto_0

    :cond_2
    const-string v0, "ballpen_data"

    const-string v1, "click_galaxy_penCase_addBallpen_0001"

    goto :goto_0

    :cond_3
    const-string v0, "pen_data"

    const-string v1, "click_galaxy_penCase_addPen_0001"

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    sget-object v2, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenArgsOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    :cond_4
    return-void
.end method

.method public final u(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 13

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getContentView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getWindowDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->o(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getDockType$note_overseasRelease()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup$WhenMappings;->$EnumSwitchMapping$1:[I

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

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    xor-int/lit8 v8, v0, 0x1

    invoke-static {v4, v8, v7, v3, v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v8

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    xor-int/2addr v0, v2

    invoke-static {v4, v0, v7, v3, v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v6, v8

    move v8, v0

    invoke-static/range {v3 .. v12}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    xor-int/lit8 v8, v0, 0x1

    invoke-static {v4, v8, v7, v3, v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v8

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    xor-int/2addr v0, v2

    invoke-static {v4, v0, v7, v3, v6}, Lcom/onyx/android/sdk/base/data/DockPoint;->reverse$default(Lcom/onyx/android/sdk/base/data/DockPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/DockPoint;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v6, v8

    move v8, v0

    invoke-static/range {v3 .. v12}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v6, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v7, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v12}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v6, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v7, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v12}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p0

    :goto_0
    move-object v2, p0

    sget-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;ILjava/lang/Object;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final v(II)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->s:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->updateIndexAndColor(II)V

    return-void
.end method
