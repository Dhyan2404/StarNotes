.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0018\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u00a2\u0006\u0004\u0008=\u0010>JF\u0010\u000c\u001a\u00020\n2<\u0010\u000b\u001a8\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0002H\u0002J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0008H\u0002R\u0017\u0010\u0018\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001dR\u0017\u0010$\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0017\u0010*\u001a\u00020%8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0017\u00100\u001a\u00020+8\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u0017\u00106\u001a\u0002018\u0006\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R\u0017\u0010<\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\u00a8\u0006?"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;",
        "",
        "Lkotlin/Function2;",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "Lkotlin/ParameterName;",
        "name",
        "penProperty",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgsOption",
        "",
        "func",
        "b",
        "",
        "color",
        "colorIndex",
        "shapeType",
        "c",
        "penArgs",
        "a",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "getViewShapeType",
        "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "viewShapeType",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "penViewModel",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;",
        "d",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;",
        "getPenArgsChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;",
        "penArgsChangeListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;",
        "e",
        "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;",
        "getInkPenArgsChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;",
        "inkPenArgsChangeListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "getMarkPenArgsChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "markPenArgsChangeListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;",
        "g",
        "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;",
        "getPencilArgsChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;",
        "pencilArgsChangeListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;",
        "h",
        "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;",
        "getWritePenGroupChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;",
        "writePenGroupChangeListener",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V",
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
.field public final a:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewShapeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penViewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->a:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->b:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->c:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->d:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$inkPenArgsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$inkPenArgsChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->e:Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$markPenArgsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$markPenArgsChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$pencilArgsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$pencilArgsChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->g:Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->h:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;

    return-void
.end method

.method public static final synthetic access$addToPenBox(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->a(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public static final synthetic access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->c:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    return-object p0
.end method

.method public static final synthetic access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->b(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$saveColorProperty(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->c(III)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
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

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v6, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getHistoryColorList(II)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setColorList(Lcom/onyx/android/sdk/base/extension/IntList;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v3, v6, v3}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->addPencilBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->b:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v7, p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final b(Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
            "-",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->a:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(III)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorIndexOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$saveColorProperty$1$1;

    invoke-direct {v1, p2, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$saveColorProperty$1$1;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$saveColorProperty$1$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$saveColorProperty$1$2;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getInkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->e:Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    return-object p0
.end method

.method public final getMarkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    return-object p0
.end method

.method public final getPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->d:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    return-object p0
.end method

.method public final getPencilArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->g:Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;

    return-object p0
.end method

.method public final getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->a:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final getWritePenGroupChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->h:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;

    return-object p0
.end method
