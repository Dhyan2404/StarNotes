.class Lcom/couchbase/lite/IndexUpdaterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/IndexUpdater;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private c4Updater:Lcom/couchbase/lite/internal/core/C4IndexUpdater;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Lcom/couchbase/lite/IndexUpdaterContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final lock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater;Lcom/couchbase/lite/Database;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4IndexUpdater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->c4Updater:Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    new-instance p1, Lcom/couchbase/lite/IndexUpdaterContext;

    invoke-direct {p1, p2, p0}, Lcom/couchbase/lite/IndexUpdaterContext;-><init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/IndexUpdaterImpl;)V

    iput-object p1, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->context:Lcom/couchbase/lite/IndexUpdaterContext;

    return-void
.end method

.method public static synthetic I(I[FLcom/couchbase/lite/internal/core/C4IndexUpdater;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/IndexUpdaterImpl;->lambda$setVector$0(I[FLcom/couchbase/lite/internal/core/C4IndexUpdater;)V

    return-void
.end method

.method private assertInBounds(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->count()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not 0 <= index < "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->count()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic e0(Lcom/couchbase/lite/IndexUpdaterImpl;Lcom/couchbase/lite/internal/core/C4IndexUpdater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->lambda$finish$2(Lcom/couchbase/lite/internal/core/C4IndexUpdater;)V

    return-void
.end method

.method private getFLValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->assertInBounds(I)V

    iget-object v0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->getOpenC4Updater()Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->getValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getOpenC4Updater()Lcom/couchbase/lite/internal/core/C4IndexUpdater;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->c4Updater:Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Attempt to use an updater after it has been closed"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getValueAt(I)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getFLValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/internal/fleece/MRoot;

    iget-object p0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->context:Lcom/couchbase/lite/IndexUpdaterContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/couchbase/lite/internal/fleece/MRoot;-><init>(Lcom/couchbase/lite/internal/fleece/MContext;Lcom/couchbase/lite/internal/fleece/FLValue;Z)V

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/MRoot;->asNative()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic j(ILcom/couchbase/lite/internal/core/C4IndexUpdater;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->lambda$skipVector$1(ILcom/couchbase/lite/internal/core/C4IndexUpdater;)V

    return-void
.end method

.method private synthetic lambda$finish$2(Lcom/couchbase/lite/internal/core/C4IndexUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->finish()V

    invoke-direct {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->release()Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    return-void
.end method

.method private static synthetic lambda$setVector$0(I[FLcom/couchbase/lite/internal/core/C4IndexUpdater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    int-to-long v0, p0

    invoke-virtual {p2, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->setVector(J[F)V

    return-void
.end method

.method private static synthetic lambda$skipVector$1(ILcom/couchbase/lite/internal/core/C4IndexUpdater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->skipVector(J)Z

    return-void
.end method

.method private release()Lcom/couchbase/lite/internal/core/C4IndexUpdater;
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->c4Updater:Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->c4Updater:Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    return-object v0
.end method

.method private withLockedC4Updater(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows<",
            "Lcom/couchbase/lite/internal/core/C4IndexUpdater;",
            "TE;>;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->getOpenC4Updater()Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;->accept(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->release()Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public count()I
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->getOpenC4Updater()Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->getCount()I

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->context:Lcom/couchbase/lite/IndexUpdaterContext;

    invoke-virtual {v0}, Lcom/couchbase/lite/IndexUpdaterContext;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/couchbase/lite/y;

    invoke-direct {v1, p0}, Lcom/couchbase/lite/y;-><init>(Lcom/couchbase/lite/IndexUpdaterImpl;)V

    invoke-direct {p0, v1}, Lcom/couchbase/lite/IndexUpdaterImpl;->withLockedC4Updater(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public getArray(I)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getValueAt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/couchbase/lite/ArrayInterface;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/ArrayInterface;

    :goto_0
    return-object p0
.end method

.method public getBlob(I)Lcom/couchbase/lite/Blob;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getValueAt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/couchbase/lite/Blob;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/Blob;

    :goto_0
    return-object p0
.end method

.method public getBoolean(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getFLValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asBool()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDictionary(I)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getValueAt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/couchbase/lite/DictionaryInterface;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/DictionaryInterface;

    :goto_0
    return-object p0
.end method

.method public getDouble(I)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getFLValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asDouble()D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getFloat(I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getFLValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFloat()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getInt(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getFLValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asInt()J

    move-result-wide p0

    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public getLong(I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getFLValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asInt()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getNumber(I)Ljava/lang/Number;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getValueAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/CBLConverter;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getValueAt(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->getValueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/IndexUpdaterImpl;->c4Updater:Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->toList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setVector(Ljava/util/List;I)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/couchbase/lite/IndexUpdaterImpl;->assertInBounds(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    :try_start_0
    new-instance v0, Lcom/couchbase/lite/x;

    invoke-direct {v0, p2, p1}, Lcom/couchbase/lite/x;-><init>(I[F)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/IndexUpdaterImpl;->withLockedC4Updater(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public skipVector(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->assertInBounds(I)V

    new-instance v0, Lcom/couchbase/lite/w;

    invoke-direct {v0, p1}, Lcom/couchbase/lite/w;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/IndexUpdaterImpl;->withLockedC4Updater(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->count()I

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getJSONEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;

    move-result-object v1
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginArray(J)Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/couchbase/lite/IndexUpdaterImpl;->getFLValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endArray()Z

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->finishJSON()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->close()V
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode updater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public toList()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->count()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/couchbase/lite/IndexUpdaterImpl;->getValueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
