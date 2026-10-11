.class public final Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u001e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "noteCreateInfo",
        "m",
        "",
        "noteName",
        "n",
        "l",
        "g",
        "Ljava/lang/String;",
        "getParentUniqueId",
        "()Ljava/lang/String;",
        "parentUniqueId",
        "h",
        "getTagId",
        "tagId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$createQuicklyNoteInfo(Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->l(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$nameCheck(Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setQuicklyName(Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->n(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction$a;->e:Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getParentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getTagId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setParentUniqueId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setDocumentId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getTagList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setTagList(Ljava/util/List;)V

    :cond_0
    return-object p1
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    const/4 v1, 0x1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->quickly_note:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;-><init>(ILjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction$d;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setNoteName(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
