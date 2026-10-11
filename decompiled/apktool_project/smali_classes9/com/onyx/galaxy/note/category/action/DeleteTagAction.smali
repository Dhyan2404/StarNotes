.class public final Lcom/onyx/galaxy/note/category/action/DeleteTagAction;
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
    value = "SMAP\nDeleteTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteTagAction.kt\ncom/onyx/galaxy/note/category/action/DeleteTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,215:1\n766#2:216\n857#2,2:217\n1855#2,2:219\n1603#2,9:221\n1855#2:230\n1856#2:232\n1612#2:233\n766#2:234\n857#2,2:235\n1549#2:237\n1620#2,3:238\n1855#2,2:241\n1855#2,2:244\n1#3:231\n215#4:243\n216#4:246\n*S KotlinDebug\n*F\n+ 1 DeleteTagAction.kt\ncom/onyx/galaxy/note/category/action/DeleteTagAction\n*L\n78#1:216\n78#1:217,2\n159#1:219,2\n164#1:221,9\n164#1:230\n164#1:232\n164#1:233\n165#1:234\n165#1:235,2\n167#1:237\n167#1:238,3\n189#1:241,2\n205#1:244,2\n164#1:231\n204#1:243\n204#1:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010!\u001a\u00020\u000c\u0012\u0006\u0010$\u001a\u00020\u0005\u0012\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001b0%\u00a2\u0006\u0004\u0008.\u0010/J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u000eH\u0002J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\tH\u0002J\u0016\u0010\u0016\u001a\u00020\u000e2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00130\tH\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010$\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001b0%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010*R\u001c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\'R\u001c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\'\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/DeleteTagAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "pageCount",
        "u",
        "s",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "t",
        "",
        "l",
        "q",
        "p",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
        "m",
        "pageTagList",
        "n",
        "Landroid/content/Context;",
        "g",
        "Landroid/content/Context;",
        "context",
        "",
        "h",
        "Ljava/lang/String;",
        "title",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "node",
        "j",
        "I",
        "tagCount",
        "",
        "k",
        "Ljava/util/List;",
        "tagIds",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteTagProvider",
        "notes",
        "tags",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;ILjava/util/List;)V",
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
        "SMAP\nDeleteTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteTagAction.kt\ncom/onyx/galaxy/note/category/action/DeleteTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,215:1\n766#2:216\n857#2,2:217\n1855#2,2:219\n1603#2,9:221\n1855#2:230\n1856#2:232\n1612#2:233\n766#2:234\n857#2,2:235\n1549#2:237\n1620#2,3:238\n1855#2,2:241\n1855#2,2:244\n1#3:231\n215#4:243\n216#4:246\n*S KotlinDebug\n*F\n+ 1 DeleteTagAction.kt\ncom/onyx/galaxy/note/category/action/DeleteTagAction\n*L\n78#1:216\n78#1:217,2\n159#1:219,2\n164#1:221,9\n164#1:230\n164#1:232\n164#1:233\n165#1:234\n165#1:235,2\n167#1:237\n167#1:238,3\n189#1:241,2\n205#1:244,2\n164#1:231\n204#1:243\n204#1:246\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:I

.field public final k:Ljava/util/List;
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

.field public l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagIds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    iput p4, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->j:I

    iput-object p5, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$delete(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l()V

    return-void
.end method

.method public static final synthetic access$getNotesByTagIds(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->r()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPageTagCount(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->s()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTagIds$p(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTagsByIds(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->t()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNoteTagProvider$p(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$setNotes$p(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->m:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTags$p(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->n:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$showConfirmDialog(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->u(I)Lio/reactivex/rxjava3/core/Observable;

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

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->o()V

    return-void
.end method

.method public final m()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    const/4 v1, 0x0

    const-string v2, "noteTagProvider"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    invoke-static {v3}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->createEnabledPageTagQueryArgs(Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->loadPageTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setStatus(I)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->resetRevisionId()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    invoke-static {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->savePageTagModels(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteTagShapesEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteTagShapesEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final n(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$deletePageTagThumbnail$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/DeleteTagAction$deletePageTagThumbnail$1;

    sget-object v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$deletePageTagThumbnail$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/DeleteTagAction$deletePageTagThumbnail$2;

    sget-object v2, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$deletePageTagThumbnail$3;->INSTANCE:Lcom/onyx/galaxy/note/category/action/DeleteTagAction$deletePageTagThumbnail$3;

    invoke-static {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMapCollection(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->createEnabledPageTagQueryArgs(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v4, :cond_3

    const-string v4, "noteTagProvider"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_3
    invoke-static {v4, v3}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->loadPageTagListCount(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    sget-object v3, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appPageThumbnailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final o()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->n(Ljava/util/List;)V

    return-void
.end method

.method public final p()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->m:Ljava/util/List;

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

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$deleteTagInNote$1$1;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$deleteTagInNote$1$1;-><init>(Lcom/onyx/galaxy/note/category/action/DeleteTagAction;)V

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->m:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->m:Ljava/util/List;

    if-nez v3, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_7
    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;

    invoke-direct {v4, v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    new-instance v0, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->m:Ljava/util/List;

    if-nez p0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_4

    :cond_9
    move-object v5, p0

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;-><init>(Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$i;

    invoke-direct {v0, v3}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$i;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "noteTagProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->n:Ljava/util/List;

    if-nez v2, :cond_1

    const-string v2, "tags"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->deleteTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete tag SyncTagModel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->i:Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Lkotlin/reflect/KClass;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final r()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getNoteByTagIdsArgs(Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;->getNoteSelectResult()[Lcom/couchbase/lite/SelectResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setSelectResults([Lcom/couchbase/lite/SelectResult;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_0

    const-string p0, "noteTagProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final s()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v0, :cond_1

    const-string v0, "noteTagProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->createEnabledPageTagQueryArgs(Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->loadPageTagListCount(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final t()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->createDocTagQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->k:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    const-string v3, "uniqueId"

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->l:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez p0, :cond_0

    const-string p0, "noteTagProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final u(I)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->m:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "notes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-nez v0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    const-string v1, "create(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->j:I

    if-lez v1, :cond_5

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_delete_tag_content_with_tag:I

    goto :goto_1

    :cond_5
    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_delete_tag_content:I

    :goto_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->g:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->h:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v10, 0x2

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->g:Landroid/content/Context;

    sget v7, Lcom/onyx/galaxy/note/R$color;->text_enable:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v6, Landroid/text/SpannableString;

    iget-object v7, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->g:Landroid/content/Context;

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    const/16 v1, 0x21

    invoke-virtual {v6, v5, v4, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction;->g:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/onyx/galaxy/note/R$string;->dialog_delete_tag_title:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setContentSpannable(Landroid/text/Spannable;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->cancel:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$showConfirmDialog$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$showConfirmDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$showConfirmDialog$2;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/DeleteTagAction$showConfirmDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-object p1
.end method
