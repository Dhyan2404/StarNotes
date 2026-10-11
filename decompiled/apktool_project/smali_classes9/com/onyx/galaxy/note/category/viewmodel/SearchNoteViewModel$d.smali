.class public final Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
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
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->access$getSearchProgressResult$p(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setMaxSearchCount(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->access$getSearchProgressResult$p(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setCurrentSearchId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->access$getSearchProgressResult$p(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setCurrentSearchName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getSearchProgressPercent()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;->a(Ljava/util/List;)V

    return-void
.end method
