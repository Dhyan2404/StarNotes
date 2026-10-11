.class public abstract Lcom/couchbase/lite/internal/core/C4BlobStore;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;,
        Lcom/couchbase/lite/internal/core/C4BlobStore$UnmanagedC4BlobStore;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Blob;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Blob;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4BlobStore;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    sget-object v0, Lcom/couchbase/lite/internal/core/C4BlobStore;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-direct {p0, v0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;J)V

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    .line 3
    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4BlobStore;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;JLcom/couchbase/lite/internal/core/C4BlobStore$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4BlobStore;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;J)V

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore;->lambda$delete$4(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore;->lambda$getSize$0(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore;->lambda$getContents$1(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method public static create(J)Lcom/couchbase/lite/internal/core/C4BlobStore;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/couchbase/lite/internal/core/C4BlobStore$UnmanagedC4BlobStore;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4BlobStore;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-interface {v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nGetBlobStore(J)J

    move-result-wide p0

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobStore$UnmanagedC4BlobStore;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;J)V

    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobReadStream;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore;->lambda$openReadStream$5(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore;->lambda$getFilePath$2(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$create$3([BLjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobStore;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nCreate(J[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->create(J)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$delete$4(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobStore;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->getHandle()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nDelete(JJ)V

    return-void
.end method

.method private synthetic lambda$getContents$1(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobStore;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->getHandle()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nGetContents(JJ)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getFilePath$2(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobStore;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->getHandle()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nGetFilePath(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getSize$0(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobStore;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->getHandle()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nGetSize(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$openReadStream$5(Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobReadStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobStore;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->getHandle()J

    move-result-wide p1

    invoke-interface {p0, v1, v2, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nOpenReadStream(JJ)J

    move-result-wide p1

    invoke-direct {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;J)V

    return-object v0
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/core/C4BlobStore;[BLjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore;->lambda$create$3([BLjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public create([B)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/gw;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/gw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore;[B)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4BlobKey;

    return-object p0
.end method

.method public delete(Lcom/couchbase/lite/internal/core/C4BlobKey;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/iw;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/iw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public getContents(Lcom/couchbase/lite/internal/core/C4BlobKey;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/cw;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/cw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    return-object p0
.end method

.method public getFilePath(Lcom/couchbase/lite/internal/core/C4BlobKey;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/dw;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/dw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSize(Lcom/couchbase/lite/internal/core/C4BlobKey;)J
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/hw;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/hw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public openReadStream(Lcom/couchbase/lite/internal/core/C4BlobKey;)Lcom/couchbase/lite/internal/core/C4BlobReadStream;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ew;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ew;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    return-object p0
.end method

.method public openWriteStream()Lcom/couchbase/lite/internal/core/C4BlobWriteStream;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4BlobStore;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/fw;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/fw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;)V

    invoke-virtual {p0, v2}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;J)V

    return-object v0
.end method
