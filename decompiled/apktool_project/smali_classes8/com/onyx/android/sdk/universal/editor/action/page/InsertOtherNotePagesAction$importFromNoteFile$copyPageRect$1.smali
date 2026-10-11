.class final Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$importFromNoteFile$copyPageRect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;->v(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$importFromNoteFile$copyPageRect$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$importFromNoteFile$copyPageRect$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$importFromNoteFile$copyPageRect$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;->access$getFromPageIndex$p(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$importFromNoteFile$copyPageRect$1;->invoke()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    return-object p0
.end method
