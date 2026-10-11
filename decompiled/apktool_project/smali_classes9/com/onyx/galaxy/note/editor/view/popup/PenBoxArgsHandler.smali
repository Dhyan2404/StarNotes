.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0004\u0008%\u0010&J+\u0010\t\u001a\u00020\u00072!\u0010\u0008\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0002H\u0002R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010$\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;",
        "",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "Lkotlin/ParameterName;",
        "name",
        "penArgs",
        "",
        "func",
        "a",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;",
        "penBoxPopup",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;",
        "b",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;",
        "getPenArgsChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;",
        "penArgsChangeListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;",
        "c",
        "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;",
        "getInkPenBoxArgsChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;",
        "inkPenBoxArgsChangeListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "d",
        "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "getMarkPenBoxArgsChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "markPenBoxArgsChangeListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;",
        "e",
        "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;",
        "getPencilBoxArgsChangeListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;",
        "pencilBoxArgsChangeListener",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V",
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
.field public final a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penBoxPopup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->b:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$inkPenBoxArgsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$inkPenBoxArgsChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->c:Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->d:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$pencilBoxArgsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$pencilBoxArgsChangeListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->e:Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;

    return-void
.end method

.method public static final synthetic access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    return-object p0
.end method

.method public static final synthetic access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->updatePencilBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList(Z)V

    :cond_0
    return-void
.end method

.method public final getInkPenBoxArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->c:Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    return-object p0
.end method

.method public final getMarkPenBoxArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->d:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    return-object p0
.end method

.method public final getPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->b:Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;

    return-object p0
.end method

.method public final getPencilBoxArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->e:Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;

    return-object p0
.end method
