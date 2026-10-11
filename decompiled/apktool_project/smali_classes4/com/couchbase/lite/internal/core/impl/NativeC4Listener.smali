.class public Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native free(J)V
.end method

.method private static native getConnectionStatus(J)Lcom/couchbase/lite/ConnectionStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method private static native getPort(J)I
.end method

.method private static native getUriFromPath(Ljava/lang/String;)Ljava/lang/String;
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native getUrls(JJ)Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native shareDbCollections(JLjava/lang/String;J[J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native startHttp(ILjava/lang/String;IJLjava/lang/String;ZZZZZZ)J
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
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

.method private static native startTls(ILjava/lang/String;IJJ[BZ[BLjava/lang/String;ZZZZZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method


# virtual methods
.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;->free(J)V

    return-void
.end method

.method public nGetConnectionStatus(J)Lcom/couchbase/lite/ConnectionStatus;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;->getConnectionStatus(J)Lcom/couchbase/lite/ConnectionStatus;

    move-result-object p0

    return-object p0
.end method

.method public nGetPort(J)I
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;->getPort(J)I

    move-result p0

    return p0
.end method

.method public nGetUriFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;->getUriFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nGetUrls(JJ)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;->getUrls(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public nShareDbCollections(JLjava/lang/String;J[J)V
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

    invoke-static/range {p1 .. p6}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;->shareDbCollections(JLjava/lang/String;J[J)V

    return-void
.end method

.method public nStartHttp(JILjava/lang/String;ILjava/lang/String;ZZZZZZ)J
    .locals 12
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-wide v3, p1

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-static/range {v0 .. v11}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;->startHttp(ILjava/lang/String;IJLjava/lang/String;ZZZZZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public nStartTls(JILjava/lang/String;ILjava/lang/String;ZZZZZJ[BZ[BZ)J
    .locals 17
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-wide/from16 v3, p1

    move/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    move/from16 v8, p15

    move-object/from16 v9, p16

    move/from16 v16, p17

    invoke-static/range {v0 .. v16}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;->startTls(ILjava/lang/String;IJJ[BZ[BLjava/lang/String;ZZZZZZ)J

    move-result-wide v0

    return-wide v0
.end method
