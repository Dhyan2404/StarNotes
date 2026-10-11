.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->access$getInsertPageIndex$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;I)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$a;->a(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    move-result-object p0

    return-object p0
.end method
