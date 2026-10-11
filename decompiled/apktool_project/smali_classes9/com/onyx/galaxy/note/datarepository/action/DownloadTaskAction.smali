.class public final Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadTaskAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadTaskAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadTaskAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1855#2,2:56\n*S KotlinDebug\n*F\n+ 1 DownloadTaskAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadTaskAction\n*L\n40#1:56,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0014\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\t\u001a\u00020\u0007H\u0002R\u0017\u0010\u000f\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "data",
        "",
        "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
        "m",
        "task",
        "n",
        "e",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "getLibraryBean",
        "()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "libraryBean",
        "<init>",
        "(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V",
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
        "SMAP\nDownloadTaskAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadTaskAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadTaskAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1855#2,2:56\n*S KotlinDebug\n*F\n+ 1 DownloadTaskAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadTaskAction\n*L\n40#1:56,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "libraryBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;->e:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    return-void
.end method

.method public static final synthetic access$ensureTasks(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;->m(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startDownloadTask(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;->n(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;->o(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V
    .locals 1

    const-string v0, "$task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->saveDownloadRecord(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$a;-><init>(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$b;-><init>(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$c;->e:Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$d;-><init>(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "concatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction$e;-><init>(Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLibraryBean()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;->e:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    return-object p0
.end method

.method public final m(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Ljava/util/List;
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

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->getLibraryDirPath()Ljava/lang/String;

    move-result-object v2

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

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;

    invoke-direct {v4, v2, p0, v3}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final n(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->startTask()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ogf;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ogf;-><init>(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnComplete(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
