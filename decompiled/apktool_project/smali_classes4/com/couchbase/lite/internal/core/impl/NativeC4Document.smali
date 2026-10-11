.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4Document;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native bodyAsJSON(JZ)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native createFromSlice(JLjava/lang/String;JJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native dictContainsBlobs(JJJ)Z
.end method

.method private static native free(J)V
.end method

.method private static native getFlags(J)I
.end method

.method private static native getFromCollection(JLjava/lang/String;ZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native getGenerationForId(Ljava/lang/String;)J
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native getRevID(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method private static native getRevisionHistory(JJJ[Ljava/lang/String;)Ljava/lang/String;
    .param p6    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native getSelectedBody2(J)J
.end method

.method private static native getSelectedFlags(J)I
.end method

.method private static native getSelectedRevID(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method private static native getSelectedSequence(J)J
.end method

.method private static native getSequence(J)J
.end method

.method private static native getTimestamp(J)J
.end method

.method private static native resolveConflict(JLjava/lang/String;Ljava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native save(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native selectNextLeafRevision(JZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native update2(JJJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method


# virtual methods
.method public nBodyAsJSON(JZ)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->bodyAsJSON(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nCreateFromSlice(JLjava/lang/String;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p8}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->createFromSlice(JLjava/lang/String;JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public nDictContainsBlobs(JJJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->dictContainsBlobs(JJJ)Z

    move-result p0

    return p0
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->free(J)V

    return-void
.end method

.method public nGetFlags(J)I
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getFlags(J)I

    move-result p0

    return p0
.end method

.method public nGetFromCollection(JLjava/lang/String;ZZ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getFromCollection(JLjava/lang/String;ZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetRevID(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getRevID(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nGetRevisionHistory(JJJ[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p7    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p7}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getRevisionHistory(JJJ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nGetSelectedBody2(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getSelectedBody2(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetSelectedFlags(J)I
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getSelectedFlags(J)I

    move-result p0

    return p0
.end method

.method public nGetSelectedRevID(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getSelectedRevID(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nGetSelectedSequence(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getSelectedSequence(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetSequence(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getSequence(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetTimestamp(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->getTimestamp(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nResolveConflict(JLjava/lang/String;Ljava/lang/String;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->resolveConflict(JLjava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method public nSave(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->save(JI)V

    return-void
.end method

.method public nSelectNextLeafRevision(JZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->selectNextLeafRevision(JZZ)V

    return-void
.end method

.method public nUpdate(JJJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p7}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;->update2(JJJI)J

    move-result-wide p0

    return-wide p0
.end method
