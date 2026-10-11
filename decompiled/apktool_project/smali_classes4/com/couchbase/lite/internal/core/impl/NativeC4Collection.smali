.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native createArrayIndex(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native createCollection(JLjava/lang/String;Ljava/lang/String;)J
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native createFullTextIndex(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native createPredictiveIndex(JLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native createValueIndex(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native createVectorIndex(JLjava/lang/String;Ljava/lang/String;JIJIJJJJJZ)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native deleteIndex(JLjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native free(J)V
.end method

.method private static native getCollection(JLjava/lang/String;Ljava/lang/String;)J
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native getDefaultCollection(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native getDocExpiration(JLjava/lang/String;)J
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native getDocumentCount(J)J
.end method

.method private static native getIndex(JLjava/lang/String;)J
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native getIndexesInfo(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native isValid(J)Z
.end method

.method private static native purgeDoc(JLjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native setDocExpiration(JLjava/lang/String;J)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method


# virtual methods
.method public nCollectionIsValid(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->isValid(J)Z

    move-result p0

    return p0
.end method

.method public nCreateArrayIndex(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->createArrayIndex(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nCreateCollection(JLjava/lang/String;Ljava/lang/String;)J
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->createCollection(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public nCreateFullTextIndex(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p8}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->createFullTextIndex(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public nCreatePredictiveIndex(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->createPredictiveIndex(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nCreateValueIndex(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->createValueIndex(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nCreateVectorIndex(JLjava/lang/String;Ljava/lang/String;JIJIJJJJJZ)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p21}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->createVectorIndex(JLjava/lang/String;Ljava/lang/String;JIJIJJJJJZ)V

    return-void
.end method

.method public nDeleteIndex(JLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->deleteIndex(JLjava/lang/String;)V

    return-void
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->free(J)V

    return-void
.end method

.method public nGetCollection(JLjava/lang/String;Ljava/lang/String;)J
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->getCollection(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetDefaultCollection(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->getDefaultCollection(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetDocExpiration(JLjava/lang/String;)J
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->getDocExpiration(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetDocumentCount(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->getDocumentCount(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetIndex(JLjava/lang/String;)J
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->getIndex(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetIndexesInfo(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->getIndexesInfo(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nPurgeDoc(JLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->purgeDoc(JLjava/lang/String;)V

    return-void
.end method

.method public nSetDocExpiration(JLjava/lang/String;J)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/couchbase/lite/internal/core/impl/NativeC4Collection;->setDocExpiration(JLjava/lang/String;J)V

    return-void
.end method
