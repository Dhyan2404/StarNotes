.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4Query;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native columnCount(J)I
.end method

.method private static native columnName(JI)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native createQuery(JILjava/lang/String;)J
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

.method private static native explain(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native free(J)V
.end method

.method private static native run(JJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native setParameters(JJJ)V
.end method


# virtual methods
.method public nColumnCount(J)I
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;->columnCount(J)I

    move-result p0

    return p0
.end method

.method public nColumnName(JI)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;->columnName(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nCreateQuery(JILjava/lang/String;)J
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;->createQuery(JILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public nExplain(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;->explain(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;->free(J)V

    return-void
.end method

.method public nRun(JJJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;->run(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nSetParameters(JJJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/couchbase/lite/internal/core/impl/NativeC4Query;->setParameters(JJJ)V

    return-void
.end method
