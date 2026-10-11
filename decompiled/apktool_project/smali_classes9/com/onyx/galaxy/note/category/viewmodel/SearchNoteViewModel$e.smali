.class public final Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->search(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

.field public final synthetic g:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;->g:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-direct {v0, v1, p1, v2}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;->g:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e$a;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
