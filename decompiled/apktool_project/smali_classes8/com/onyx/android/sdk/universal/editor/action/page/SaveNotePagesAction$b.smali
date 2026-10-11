.class public final Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/request/page/SaveNotePageByIdsRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/note/request/page/SaveNotePageByIdsRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/SaveNotePagesAction$b;->a(Ljava/util/List;)V

    return-void
.end method
