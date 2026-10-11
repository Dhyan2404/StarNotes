.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$sortFolderRootList$comparator$1;
.super Lcom/onyx/galaxy/note/utils/PinYinStringHelper$PinYinSortComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/utils/PinYinStringHelper$PinYinSortComparator<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/category/viewmodel/NoteListViewModel$sortFolderRootList$comparator$1",
        "Lcom/onyx/galaxy/note/utils/PinYinStringHelper$PinYinSortComparator;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "compare",
        "",
        "o1",
        "o2",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic f:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$sortFolderRootList$comparator$1;->f:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/utils/PinYinStringHelper$PinYinSortComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "o1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ComparatorUtils;

    sget-object v1, Lcom/onyx/galaxy/note/utils/PinYinStringHelper;->INSTANCE:Lcom/onyx/galaxy/note/utils/PinYinStringHelper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/utils/PinYinStringHelper;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/utils/PinYinStringHelper;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$sortFolderRootList$comparator$1;->f:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v0, p1, p2, p0}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->stringComparator(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$sortFolderRootList$comparator$1;->compare(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I

    move-result p0

    return p0
.end method
