.class public final Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
        "+",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadShareResourceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadShareResourceAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1855#2:52\n1855#2,2:53\n1856#2:55\n*S KotlinDebug\n*F\n+ 1 DownloadShareResourceAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction\n*L\n33#1:52\n35#1:53,2\n33#1:55\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0001B\u0015\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001c\u0010\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0005H\u0014J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J$\u0010\u000b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u00052\u0006\u0010\n\u001a\u00020\u0008H\u0002R\u001d\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lkotlin/Pair;",
        "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
        "l",
        "task",
        "m",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "e",
        "Ljava/util/List;",
        "getLibraryList",
        "()Ljava/util/List;",
        "libraryList",
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
        "SMAP\nDownloadShareResourceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadShareResourceAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1855#2:52\n1855#2,2:53\n1856#2:55\n*S KotlinDebug\n*F\n+ 1 DownloadShareResourceAction.kt\ncom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction\n*L\n33#1:52\n35#1:53,2\n33#1:55\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "libraryList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$collectTasks(Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;->l()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startDownload(Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;->m(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/Observable;

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
            "Lkotlin/Pair<",
            "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;>;"
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

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$a;-><init>(Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$b;-><init>(Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLibraryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;->e:Ljava/util/List;

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/onyx/galaxy/note/datarepository/download/ShareResourceManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/ShareResourceManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/datarepository/download/ShareResourceManager;->getShareResourceDirPath()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getAttachments()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;

    invoke-direct {v5, v1, v3, v4}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final m(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Pair<",
            "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->startTask()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$c;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$c;-><init>(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$d;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$d;-><init>(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "onErrorReturn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
