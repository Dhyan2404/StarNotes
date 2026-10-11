.class public final Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchNoteByScopeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteByScopeAction.kt\ncom/onyx/galaxy/note/category/action/SearchNoteByScopeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n766#2:56\n857#2,2:57\n*S KotlinDebug\n*F\n+ 1 SearchNoteByScopeAction.kt\ncom/onyx/galaxy/note/category/action/SearchNoteByScopeAction\n*L\n34#1:56\n34#1:57,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002J\"\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003H\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "models",
        "l",
        "model",
        "",
        "n",
        "Lcom/onyx/galaxy/note/category/data/SearchScope;",
        "g",
        "Lcom/onyx/galaxy/note/category/data/SearchScope;",
        "searchScope",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/data/SearchScope;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchNoteByScopeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteByScopeAction.kt\ncom/onyx/galaxy/note/category/action/SearchNoteByScopeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n766#2:56\n857#2,2:57\n*S KotlinDebug\n*F\n+ 1 SearchNoteByScopeAction.kt\ncom/onyx/galaxy/note/category/action/SearchNoteByScopeAction\n*L\n34#1:56\n34#1:57,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/galaxy/note/category/data/SearchScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/data/SearchScope;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/SearchScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "searchScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->g:Lcom/onyx/galaxy/note/category/data/SearchScope;

    return-void
.end method

.method public static final synthetic access$filterByScope(Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->l(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadNoteModels(Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->n(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getDocumentsArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/common/extension/NoteQueryArgsKt;->sortWith(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelsAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/LoadNoteModelsAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    sget-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;->getUNCLASSIFIED_FOLDER_ID()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    sget-object v4, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;->getUNCLASSIFIED_TAG_ID()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction$matchSearchScope$1;

    invoke-direct {v5, p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction$matchSearchScope$1;-><init>(Ljava/util/List;)V

    invoke-static {v3, v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIf(Ljava/util/Collection;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->g:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getFolderIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->g:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getTagIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->g:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getSelectAllFolder()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->g:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getSelectAllTag()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->g:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getFolderIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;->g:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getTagIds()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-nez p1, :cond_5

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v2
.end method
