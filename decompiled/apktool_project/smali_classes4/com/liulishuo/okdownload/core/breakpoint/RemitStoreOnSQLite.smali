.class public Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor$a;
.implements Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;


# static fields
.field public static final e:Ljava/lang/String; = "RemitStoreOnSQLite"


# instance fields
.field public final a:Lcom/liulishuo/okdownload/core/breakpoint/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/liulishuo/okdownload/core/breakpoint/a;

    invoke-direct {v0, p0}, Lcom/liulishuo/okdownload/core/breakpoint/a;-><init>(Lcom/liulishuo/okdownload/core/breakpoint/RemitSyncExecutor$a;)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    .line 3
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    .line 4
    iget-object v0, p1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    .line 5
    iget-object p1, p1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/core/breakpoint/a;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    .line 8
    iput-object p2, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    .line 9
    iput-object p3, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    .line 10
    iput-object p4, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;

    return-void
.end method

.method public static setRemitToDBDelayMillis(I)V
    .locals 3

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;

    move-result-object v0

    instance-of v1, v0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    check-cast v0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    int-to-long v1, p0

    iput-wide v1, v0, Lcom/liulishuo/okdownload/core/breakpoint/a;->b:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current store is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not RemitStoreOnSQLite!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createAndInsert(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/core/breakpoint/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-interface {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->createAndInsert(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->createAndInsert(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p0

    return-object p0
.end method

.method public findAnotherInfoFromCompare(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1, p2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->findAnotherInfoFromCompare(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p0

    return-object p0
.end method

.method public findOrCreateId(Lcom/liulishuo/okdownload/DownloadTask;)I
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->findOrCreateId(Lcom/liulishuo/okdownload/DownloadTask;)I

    move-result p0

    return p0
.end method

.method public get(I)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->get(I)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAfterCompleted(I)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResponseFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->getResponseFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFileDirty(I)Z
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->isFileDirty(I)Z

    move-result p0

    return p0
.end method

.method public isOnlyMemoryCache()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public markFileClear(I)Z
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->markFileClear(I)Z

    move-result p0

    return p0
.end method

.method public markFileDirty(I)Z
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->markFileDirty(I)Z

    move-result p0

    return p0
.end method

.method public onSyncToFilesystemSuccess(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;IJ)V
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/core/breakpoint/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;->onSyncToFilesystemSuccess(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;IJ)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->onSyncToFilesystemSuccess(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;IJ)V

    return-void
.end method

.method public onTaskEnd(ILcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 1
    .param p2    # Lcom/liulishuo/okdownload/core/cause/EndCause;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;->onTaskEnd(ILcom/liulishuo/okdownload/core/cause/EndCause;Ljava/lang/Exception;)V

    sget-object p3, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/a;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/a;->b(I)V

    :goto_0
    return-void
.end method

.method public onTaskStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->onTaskStart(I)V

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/a;->d(I)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->remove(I)V

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/a;->a(I)V

    return-void
.end method

.method public removeInfo(I)V
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;->removeInfo(I)V

    return-void
.end method

.method public syncCacheToDB(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;->removeInfo(I)V

    .line 9
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->get(I)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;->insert(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public syncCacheToDB(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->c:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->syncCacheToDB(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7
    throw p0
.end method

.method public update(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Z
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->a:Lcom/liulishuo/okdownload/core/breakpoint/a;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/core/breakpoint/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->d:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-interface {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStore;->update(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/RemitStoreOnSQLite;->b:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnSQLite;->update(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Z

    move-result p0

    return p0
.end method
