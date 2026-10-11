.class public final Lcom/couchbase/lite/internal/core/C4Document;
.super Lcom/couchbase/lite/internal/core/C4Peer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Document;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-direct {p0, v0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Document;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;J)V

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;J)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/ty;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ty;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/couchbase/lite/internal/core/C4Peer;-><init>(JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    .line 2
    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/internal/core/C4Document;ZLjava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$bodyAsJSON$10(ZLjava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/core/C4Document;J[Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$getRevisionHistory$5(J[Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/couchbase/lite/internal/core/C4Document;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/Long;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$resolveConflict$7(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/Long;)V

    return-void
.end method

.method public static create(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/core/C4Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
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

    new-instance v0, Lcom/sunia/HTREnginev2/sy;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/sy;-><init>(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4Document;

    return-object p0
.end method

.method public static dictContainsBlobs(Lcom/couchbase/lite/internal/fleece/FLSliceResult;Lcom/couchbase/lite/internal/fleece/FLSharedKeys;)Z
    .locals 7
    .param p0    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSharedKeys;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getBase()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getSize()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSharedKeys;->getHandle()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nDictContainsBlobs(JJJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic e0(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$getWithRevs$2(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;ILjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$create$0(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;ILjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$getOrCreateDocument$3(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/couchbase/lite/internal/core/C4Document;Ljava/lang/Long;J[Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$getRevisionHistory$4(Ljava/lang/Long;J[Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 2
    .param p0    # Lcom/couchbase/lite/internal/core/C4Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
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

    new-instance v0, Lcom/sunia/HTREnginev2/ky;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ky;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/internal/core/C4Document;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private getFlags()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/ey;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/ey;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getOrCreateDocument(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 4
    .param p0    # Lcom/couchbase/lite/internal/core/C4Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/xy;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/xy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/couchbase/lite/internal/core/C4Document;

    sget-object p1, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-direct {p0, p1, v0, v1}, Lcom/couchbase/lite/internal/core/C4Document;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;J)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/LiteCoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1}, Lcom/couchbase/lite/LiteCoreException;-><init>(IILjava/lang/String;)V

    throw p0
.end method

.method public static getWithRevs(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 2
    .param p0    # Lcom/couchbase/lite/internal/core/C4Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
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

    new-instance v0, Lcom/sunia/HTREnginev2/uy;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/uy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/internal/core/C4Document;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic h0(Lcom/couchbase/lite/internal/core/C4Document;ILjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$save$9(ILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic i0(Lcom/couchbase/lite/internal/core/C4Document;ZZLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$selectNextLeafRevision$6(ZZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4Document;Lcom/couchbase/lite/internal/fleece/FLSliceResult;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$update$8(Lcom/couchbase/lite/internal/fleece/FLSliceResult;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$bodyAsJSON$10(ZLjava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nBodyAsJSON(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$create$0(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;ILjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4Document;

    sget-object v10, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    if-nez p1, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getBase()J

    move-result-wide v6

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getSize()J

    move-result-wide v4

    :goto_1
    move-wide v8, v4

    move-object v1, v10

    move-object v4, p0

    move-wide v5, v6

    move-wide v7, v8

    move v9, p2

    invoke-interface/range {v1 .. v9}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nCreateFromSlice(JLjava/lang/String;JJI)J

    move-result-wide p0

    invoke-direct {v0, v10, p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;J)V

    return-object v0
.end method

.method private static synthetic lambda$get$1(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nGetFromCollection(JLjava/lang/String;ZZ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getOrCreateDocument$3(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nGetFromCollection(JLjava/lang/String;ZZ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getRevisionHistory$4(Ljava/lang/Long;J[Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v5, p2

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nGetRevisionHistory(JJJ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getRevisionHistory$5(J[Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v6, Lcom/sunia/HTREnginev2/vy;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/vy;-><init>(Lcom/couchbase/lite/internal/core/C4Document;Ljava/lang/Long;J[Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$getWithRevs$2(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Document;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nGetFromCollection(JLjava/lang/String;ZZ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$resolveConflict$7(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nResolveConflict(JLjava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method private synthetic lambda$save$9(ILjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nSave(JI)V

    return-void
.end method

.method private synthetic lambda$selectNextLeafRevision$6(ZZLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nSelectNextLeafRevision(JZZ)V

    return-void
.end method

.method private synthetic lambda$update$8(Lcom/couchbase/lite/internal/fleece/FLSliceResult;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    if-nez p1, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getBase()J

    move-result-wide v5

    :goto_0
    if-nez p1, :cond_1

    move-wide p0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getSize()J

    move-result-wide p0

    :goto_1
    move-wide v3, v5

    move-wide v5, p0

    move v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;->nUpdate(JJJI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;->lambda$get$1(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bodyAsJSON(Z)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hy;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/hy;-><init>(Lcom/couchbase/lite/internal/core/C4Document;Z)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public close()V
    .locals 2

    sget-object p0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unsafe call at:"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v1, "Unsafe call to C4Document.close()"

    invoke-static {p0, v1, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public docExists()Z
    .locals 1

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getFlags()I

    move-result p0

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    return p0
.end method

.method public getRevID()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/iy;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/iy;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRevisionHistory(Lcom/couchbase/lite/internal/core/C4Collection;JLjava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4Collection;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/sunia/HTREnginev2/ny;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sunia/HTREnginev2/ny;-><init>(Lcom/couchbase/lite/internal/core/C4Document;J[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedBody2()Lcom/couchbase/lite/internal/fleece/FLDict;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gy;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/gy;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/fleece/FLDict;->create(J)Lcom/couchbase/lite/internal/fleece/FLDict;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSelectedFlags()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/ly;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/ly;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSelectedRevID()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jy;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/jy;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedSequence()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/fy;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/fy;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSequence()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/qy;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/qy;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 3

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/oy;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/oy;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDocAttachments()Z
    .locals 1

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getFlags()I

    move-result p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    return p0
.end method

.method public hasRevAttachments()Z
    .locals 1

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getFlags()I

    move-result p0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    return p0
.end method

.method public isDocConflicted()Z
    .locals 1

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getFlags()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    return p0
.end method

.method public isDocDeleted()Z
    .locals 1

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    return p0
.end method

.method public isRevConflicted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getSelectedFlags()I

    move-result p0

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    return p0
.end method

.method public isRevDeleted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getSelectedFlags()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    return p0
.end method

.method public resolveConflict(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v6, Lcom/sunia/HTREnginev2/ry;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/ry;-><init>(Lcom/couchbase/lite/internal/core/C4Document;Ljava/lang/String;Ljava/lang/String;[BI)V

    invoke-virtual {p0, v6}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public save(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/my;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/my;-><init>(Lcom/couchbase/lite/internal/core/C4Document;I)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public selectNextLeafRevision(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/py;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/py;-><init>(Lcom/couchbase/lite/internal/core/C4Document;ZZ)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4Document"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 4
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
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

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/wy;

    invoke-direct {v3, p0, p1, p2}, Lcom/sunia/HTREnginev2/wy;-><init>(Lcom/couchbase/lite/internal/core/C4Document;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)V

    invoke-virtual {p0, v2, v3}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/internal/core/C4Document;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Document;->impl:Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Document;-><init>(Lcom/couchbase/lite/internal/core/C4Document$NativeImpl;J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
