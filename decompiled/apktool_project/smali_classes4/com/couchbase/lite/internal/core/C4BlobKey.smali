.class public final Lcom/couchbase/lite/internal/core/C4BlobKey;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Blob;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Blob;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4BlobKey;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    .line 3
    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4BlobKey;->impl:Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;->nFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/couchbase/lite/internal/core/C4BlobKey;-><init>(Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;J)V

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/xv;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xv;-><init>(Lcom/couchbase/lite/internal/core/C4BlobKey;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static create(J)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/couchbase/lite/internal/core/C4BlobKey;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4BlobKey;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;-><init>(Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;J)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/couchbase/lite/internal/core/C4BlobKey;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4BlobKey;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/internal/core/C4BlobKey;-><init>(Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->lambda$closePeer$0(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$closePeer$0(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobKey;->impl:Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4BlobKey;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4BlobKey;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHandle()J
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeer()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4BlobKey;->impl:Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wv;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/wv;-><init>(Lcom/couchbase/lite/internal/core/C4BlobKey$NativeImpl;)V

    const-string v0, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
