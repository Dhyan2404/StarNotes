.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->A()V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/search/CreateSearchContextAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/search/CreateSearchContextAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getNoteModel$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getNoteSearchArgs$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/CreateSearchContextAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$e;->a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
