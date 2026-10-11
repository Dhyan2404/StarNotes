.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/SortBy;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {p1, v0, p0}, Lcom/onyx/galaxy/note/common/extension/NoteQueryArgsKt;->sortWith(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l;->a(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method
