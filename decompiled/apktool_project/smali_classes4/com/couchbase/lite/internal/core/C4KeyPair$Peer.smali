.class Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4KeyPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Peer"
.end annotation


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;)V
    .locals 0
    .param p3    # Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p3, p0, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->impl:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/couchbase/lite/internal/core/a;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/core/a;-><init>(Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->lambda$closePeer$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;BI[[Ljava/lang/String;BJLjava/lang/Long;)[B
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->lambda$generateCert$0(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;BI[[Ljava/lang/String;BJLjava/lang/Long;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$closePeer$1(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->impl:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$generateCert$0(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;BI[[Ljava/lang/String;BJLjava/lang/Long;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;->nGenerateSelfSignedCertificate(JBI[[Ljava/lang/String;BJ)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->closePeer(Lcom/couchbase/lite/LogDomain;)V

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
    invoke-static {}, Lcom/couchbase/lite/internal/core/C4KeyPair;->access$000()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public generateCert(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;BI[[Ljava/lang/String;BJ)[B
    .locals 9
    .param p1    # Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [[Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/couchbase/lite/internal/core/b;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/couchbase/lite/internal/core/b;-><init>(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;BI[[Ljava/lang/String;BJ)V

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v0

    throw v0
.end method
