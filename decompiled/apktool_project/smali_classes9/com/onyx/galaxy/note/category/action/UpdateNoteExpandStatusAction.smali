.class public final Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateNoteExpandStatusAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateNoteExpandStatusAction.kt\ncom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n766#2:34\n857#2,2:35\n1855#2,2:37\n*S KotlinDebug\n*F\n+ 1 UpdateNoteExpandStatusAction.kt\ncom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction\n*L\n19#1:32,2\n23#1:34\n23#1:35,2\n23#1:37,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
        "noteExtraProvider",
        "",
        "l",
        "",
        "",
        "g",
        "Ljava/util/List;",
        "idList",
        "",
        "h",
        "I",
        "expandStatus",
        "<init>",
        "(Ljava/util/List;I)V",
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
        "SMAP\nUpdateNoteExpandStatusAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateNoteExpandStatusAction.kt\ncom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n766#2:34\n857#2,2:35\n1855#2,2:37\n*S KotlinDebug\n*F\n+ 1 UpdateNoteExpandStatusAction.kt\ncom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction\n*L\n19#1:32,2\n23#1:34\n23#1:35,2\n23#1:37,2\n*E\n"
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

.field public final h:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
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
            ">;I)V"
        }
    .end annotation

    const-string v0, "idList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;->g:Ljava/util/List;

    iput p2, p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;->h:I

    return-void
.end method

.method public static final synthetic access$save(Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;->l(Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteExtraProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;->loadNoteExtraList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/NoteExtraModel;

    iget v4, p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;->h:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteExtraModel;->setExpandStatus(I)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;->g:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/db/model/NoteExtraModel;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteExtraModel;-><init>()V

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    iget v2, p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;->h:I

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteExtraModel;->setExpandStatus(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;->saveNoteExtraList(Ljava/util/List;)V

    return-void
.end method
