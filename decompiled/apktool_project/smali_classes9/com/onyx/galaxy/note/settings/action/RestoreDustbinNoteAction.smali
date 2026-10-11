.class public final Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRestoreDustbinNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestoreDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1855#2,2:181\n1855#2,2:183\n1603#2,9:185\n1855#2:194\n1856#2:196\n1612#2:197\n766#2:198\n857#2,2:199\n1855#2,2:201\n1549#2:203\n1620#2,3:204\n1549#2:207\n1620#2,3:208\n1549#2:211\n1620#2,3:212\n1855#2,2:215\n1#3:195\n*S KotlinDebug\n*F\n+ 1 RestoreDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction\n*L\n75#1:181,2\n93#1:183,2\n100#1:185,9\n100#1:194\n100#1:196\n100#1:197\n101#1:198\n101#1:199,2\n107#1:201,2\n169#1:203\n169#1:204,3\n172#1:207\n172#1:208,3\n172#1:211\n172#1:212,3\n174#1:215,2\n100#1:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000f\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0002J\u0008\u0010\r\u001a\u00020\u0005H\u0002J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0005H\u0002R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0015R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0015\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "t",
        "u",
        "s",
        "q",
        "m",
        "v",
        "r",
        "o",
        "n",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "p",
        "l",
        "",
        "g",
        "Ljava/util/List;",
        "noteIds",
        "",
        "h",
        "changedDocIds",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "j",
        "notes",
        "<init>",
        "(Ljava/util/List;)V",
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
        "SMAP\nRestoreDustbinNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestoreDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1855#2,2:181\n1855#2,2:183\n1603#2,9:185\n1855#2:194\n1856#2:196\n1612#2:197\n766#2:198\n857#2,2:199\n1855#2,2:201\n1549#2:203\n1620#2,3:204\n1549#2:207\n1620#2,3:208\n1549#2:211\n1620#2,3:212\n1855#2,2:215\n1#3:195\n*S KotlinDebug\n*F\n+ 1 RestoreDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction\n*L\n75#1:181,2\n93#1:183,2\n100#1:185,9\n100#1:194\n100#1:196\n100#1:197\n101#1:198\n101#1:199,2\n107#1:201,2\n169#1:203\n169#1:204,3\n172#1:207\n172#1:208,3\n172#1:211\n172#1:212,3\n174#1:215,2\n100#1:195\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
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

    const-string v0, "noteIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$loadNoteList(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->p()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postEvent(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->q()V

    return-void
.end method

.method public static final synthetic access$restoreNote(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNotes$p(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$statisticRestore(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->t()V

    return-void
.end method

.method public static final synthetic access$syncDeleteState(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateFolderCover(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->v()Lio/reactivex/rxjava3/core/Observable;

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$a;-><init>(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$b;-><init>(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$c;-><init>(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$d;-><init>(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$e;-><init>(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$f;-><init>(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$g;->e:Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$g;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    const-string v1, "notes"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->createPageTagQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nullOrEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object v4, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    check-cast v4, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v4, "documentId"

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    const-string v3, "provider"

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    invoke-static {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->loadPageTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_5
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getTagId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v1, v7}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadTagById(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getTagId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setStatus(I)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->resetRevisionId()V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object v2, p0

    :goto_4
    invoke-static {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->savePageTagModels(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    return-void
.end method

.method public final m()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "notes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v3, :cond_1

    const-string v3, "provider"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, "_1"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->generateUniqueName$default(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "notes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v3, :cond_1

    const-string v3, "provider"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    new-instance v4, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$handleParentId$hasData$1;

    invoke-direct {v4, v2}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$handleParentId$hasData$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->hasNoteData(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setStatus(I)V

    if-nez v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->h:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "notes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v4, :cond_3

    const-string v4, "provider"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    new-instance v5, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$handleTagId$hasNoteTag$1;

    invoke-direct {v5, v3}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$handleTagId$hasNoteTag$1;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->hasNoteTag(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lkotlin/jvm/functions/Function1;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->h:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;->getNoteSelectResult()[Lcom/couchbase/lite/SelectResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setSelectResults([Lcom/couchbase/lite/SelectResult;)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->g:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    const-string v3, "uniqueId"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_1

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final q()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/galaxy/note/category/event/OnRecoverNoteEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/event/OnRecoverNoteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    new-instance v1, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->h:Ljava/util/List;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "notes"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserVirtualModelProvider(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setViewportId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualDocModel(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "notes"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v4, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->h:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->m()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->n()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->o()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->l()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->r()V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;-><init>(Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$h;-><init>(Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t()V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsNoteDustbinEvent;

    sget-object v1, Lcom/onyx/android/sdk/data/NoteDustbinFuncType;->RESTORE:Lcom/onyx/android/sdk/data/NoteDustbinFuncType;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/event/StatisticsNoteDustbinEvent;-><init>(Lcom/onyx/android/sdk/data/NoteDustbinFuncType;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->setCheckConfig(Z)V

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->g:Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x6f

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;

    invoke-direct {p0, v1, v0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$i;->e:Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$i;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$j;->e:Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction$j;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "onErrorReturn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;->j:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "notes"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
