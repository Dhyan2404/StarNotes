.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$m;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$m;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-static {p0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->access$createManualSortData(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$m;->a(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
