.class public final Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataRepositoryManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataRepositoryManager.kt\ncom/onyx/galaxy/note/datarepository/download/DataRepositoryManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1549#2:205\n1620#2,3:206\n1855#2,2:209\n1726#2,3:212\n1726#2,3:215\n1#3:211\n*S KotlinDebug\n*F\n+ 1 DataRepositoryManager.kt\ncom/onyx/galaxy/note/datarepository/download/DataRepositoryManager\n*L\n61#1:205\n61#1:206,3\n86#1:209,2\n125#1:212,3\n184#1:215,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0002J\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u0017\u001a\u00020\u00062\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0008H\u0002J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002J\u0016\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001f2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002J\u0010\u0010$\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004H\u0003Rh\u0010)\u001aV\u0012\u0004\u0012\u00020\u0002\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00180%j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018`&0%j*\u0012\u0004\u0012\u00020\u0002\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00180%j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018`&`&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010+\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;",
        "",
        "",
        "getLibraryDirPath",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "data",
        "",
        "addDownloadTask",
        "",
        "libraries",
        "Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;",
        "checkLocalLibraries",
        "libraryId",
        "deleteLibrary",
        "checkAndUpdateLocalResource",
        "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
        "task",
        "saveDownloadRecord",
        "library",
        "",
        "isDownloadComplete",
        "e",
        "tasks",
        "i",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "progressInfo",
        "k",
        "taskId",
        "c",
        "d",
        "b",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;",
        "h",
        "f",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "a",
        "Ljava/util/HashMap;",
        "downloadTaskMap",
        "Z",
        "localResourceChecked",
        "<init>",
        "()V",
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
        "SMAP\nDataRepositoryManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataRepositoryManager.kt\ncom/onyx/galaxy/note/datarepository/download/DataRepositoryManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1549#2:205\n1620#2,3:206\n1855#2,2:209\n1726#2,3:212\n1726#2,3:215\n1#3:211\n*S KotlinDebug\n*F\n+ 1 DataRepositoryManager.kt\ncom/onyx/galaxy/note/datarepository/download/DataRepositoryManager\n*L\n61#1:205\n61#1:206,3\n86#1:209,2\n125#1:212,3\n184#1:215,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$downloadError(Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateTaskProgress(Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->k(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public static final j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$taskId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addDownloadTask(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->a:Ljava/util/HashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->e(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->deleteLibrary(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->i(Ljava/util/List;)V

    return-void
.end method

.method public final b(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    const-string p1, ""

    invoke-direct {p0, p1, v1, v1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;-><init>(Ljava/lang/String;II)V

    return-object p0

    :cond_0
    sget-object v2, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "<get-values>(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v3

    double-to-int p1, v3

    add-int/2addr v1, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result p0

    div-int/2addr v1, p0

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;-><init>(Ljava/lang/String;II)V

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->f(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Z

    move-result v2

    const/16 v3, 0x64

    if-eqz v2, :cond_3

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    const/4 p1, 0x3

    invoke-direct {p0, v0, v3, p1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;-><init>(Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->isDownloadComplete(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    const/4 p1, 0x2

    invoke-direct {p0, v0, v3, p1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;-><init>(Ljava/lang/String;II)V

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    invoke-direct {p0, v0, v1, v1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;-><init>(Ljava/lang/String;II)V

    :goto_1
    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "<get-values>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    const/16 v0, 0x64

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;-><init>(Ljava/lang/String;II)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final checkAndUpdateLocalResource()V
    .locals 6

    sget-boolean p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->b:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->b:Z

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkLocalLibraries(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "libraries"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    sget-object v1, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->b(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6

    sget-object p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final deleteLibrary(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "libraryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->getLibraryDirPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/Paths;->deleteDirectory(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserDataRepositoryProvider()Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;->deleteDownloadRecordByLibraryId(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->getLibraryDirPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getAttachments()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v5}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;

    invoke-direct {v4, p0, v0, v3}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->a:Ljava/util/HashMap;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2
.end method

.method public final f(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Z
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final g(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserDataRepositoryProvider()Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;->loadDownloadRecordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLibraryDirPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/common/path/DataRepositoryPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/DataRepositoryPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/path/DataRepositoryPaths;->appCurUserDataRepositoryDirPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserDataRepositoryProvider()Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;->loadMaterialAddRecord(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;->e:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "flatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/ave;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ave;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final isDownloadComplete(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Z
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "library"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->getLibraryDirPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getAttachments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    sget-object v4, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p0

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$isDownloadComplete$1$1;

    invoke-direct {v5, v0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$isDownloadComplete$1$1;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;)V

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    move v3, v2

    :cond_4
    :goto_1
    return v3
.end method

.method public final k(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 3

    sget-object p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->getAttachment()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    const-string v0, "<get-values>(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    div-int/2addr v0, p0

    new-instance p0, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;-><init>(Ljava/lang/String;II)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveDownloadRecord(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->getAttachment()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->getAttachment()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getMd5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v3, v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->getAttachment()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getSize()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserDataRepositoryProvider()Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;->saveDownloadRecord(Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;)V

    return-void
.end method
