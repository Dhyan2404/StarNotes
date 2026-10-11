.class public final Lcom/couchbase/lite/internal/core/C4KeyPair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;,
        Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;
    }
.end annotation


# static fields
.field private static final C4_TO_DIGEST_ALGORITHM:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ALGORITHM_TO_C4:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_PAIR_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/core/C4KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final keyAlias:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final keyByteSize:I

.field private final keyPassword:[C
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final keyStore:Ljava/security/KeyStore;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "SE_BAD_FIELD"
        }
    .end annotation
.end field

.field private final keys:Ljava/security/KeyPair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final peer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final token:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4KeyPair;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4KeyPair;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->KEY_PAIR_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;->RSA:Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->KEY_ALGORITHM_TO_C4:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->NONE:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA1:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA224:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA256:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA384:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA512:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->C4_TO_DIGEST_ALGORITHM:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;JLjava/security/KeyStore;Ljava/lang/String;[CILjava/security/KeyPair;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/security/KeyStore;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/security/KeyPair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->peer:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "native impl"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->impl:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    const-string p1, "token"

    invoke-static {p2, p3, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->token:J

    iput-object p4, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keyStore:Ljava/security/KeyStore;

    const-string p1, "alias"

    invoke-static {p5, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keyAlias:Ljava/lang/String;

    iput-object p6, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keyPassword:[C

    iput p7, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keyByteSize:I

    iput-object p8, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keys:Ljava/security/KeyPair;

    return-void
.end method

.method public static synthetic access$000()Lcom/couchbase/lite/LogDomain;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-object v0
.end method

.method public static createKeyPair(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;Ljava/security/KeyStore;Ljava/lang/String;[CLcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;Ljava/security/KeyPair;)Lcom/couchbase/lite/internal/core/C4KeyPair;
    .locals 13
    .param p0    # Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/security/KeyStore;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/security/KeyPair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    move-object/from16 v0, p3

    if-eqz v0, :cond_0

    .line 4
    array-length v1, v0

    new-array v2, v1, [C

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v9, v2

    .line 6
    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->KEY_PAIR_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v1

    .line 7
    new-instance v12, Lcom/couchbase/lite/internal/core/C4KeyPair;

    invoke-virtual/range {p5 .. p5}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->getByteLength()I

    move-result v10

    move-object v3, v12

    move-object v4, p0

    move-wide v5, v1

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/couchbase/lite/internal/core/C4KeyPair;-><init>(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;JLjava/security/KeyStore;Ljava/lang/String;[CILjava/security/KeyPair;)V

    .line 8
    invoke-virtual {v0, v1, v2, v12}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    .line 9
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getC4KeyAlgorithm(Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;)B

    move-result v0

    invoke-virtual/range {p5 .. p5}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->getBitLength()I

    move-result v3

    move-object v4, p0

    invoke-interface {p0, v0, v3, v1, v2}, Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;->nFromExternal(BIJ)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {v12, v0, v1}, Lcom/couchbase/lite/internal/core/C4KeyPair;->setPeer(J)V

    return-object v12

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v0

    throw v0
.end method

.method public static createKeyPair(Ljava/lang/String;Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;)Lcom/couchbase/lite/internal/core/C4KeyPair;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4KeyPair;->createKeyPair(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;Ljava/security/KeyStore;Ljava/lang/String;[CLcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;Ljava/security/KeyPair;)Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static createKeyPair(Ljava/security/KeyStore;Ljava/lang/String;[CLcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;)Lcom/couchbase/lite/internal/core/C4KeyPair;
    .locals 7
    .param p0    # Ljava/security/KeyStore;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4KeyPair;->createKeyPair(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;Ljava/security/KeyStore;Ljava/lang/String;[CLcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;Ljava/security/KeyPair;)Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static createKeyPair(Ljava/security/KeyStore;Ljava/lang/String;[CLcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;Ljava/security/KeyPair;)Lcom/couchbase/lite/internal/core/C4KeyPair;
    .locals 7
    .param p0    # Ljava/security/KeyStore;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/security/KeyPair;
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

    .line 2
    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4KeyPair;->createKeyPair(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;Ljava/security/KeyStore;Ljava/lang/String;[CLcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;Ljava/security/KeyPair;)Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static decryptCallback(J[B)[B
    .locals 3
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyPair(J)Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/internal/core/C4KeyPair;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "^C4KeyPair.decrypt(%d): %s@%x"

    invoke-static {v1, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager;->getInstance()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/couchbase/lite/internal/KeyStoreManager;->decrypt(Lcom/couchbase/lite/internal/core/C4KeyPair;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static freeCallback(J)V
    .locals 2

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyPair(J)Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/internal/core/C4KeyPair;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "^C4KeyPair.free: %s@%x"

    invoke-static {v1, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager;->getInstance()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/KeyStoreManager;->free(Lcom/couchbase/lite/internal/core/C4KeyPair;)V

    return-void
.end method

.method private static getC4KeyAlgorithm(Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;)B
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->KEY_ALGORITHM_TO_C4:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized encryption algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getDigestAlgorithm(I)Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->C4_TO_DIGEST_ALGORITHM:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized algorithm algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getKeyDataCallback(J)[B
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyPair(J)Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/internal/core/C4KeyPair;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "^C4KeyPair.getData: %s@%x"

    invoke-static {v1, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager;->getInstance()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/KeyStoreManager;->getKeyData(Lcom/couchbase/lite/internal/core/C4KeyPair;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getKeyPair(J)Lcom/couchbase/lite/internal/core/C4KeyPair;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->KEY_PAIR_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4KeyPair;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the key pair @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static signCallback(JI[B)[B
    .locals 4
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getKeyPair(J)Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/internal/core/C4KeyPair;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v2, v3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "^C4KeyPair.sign(%d: %d): %s@%x"

    invoke-static {v1, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getDigestAlgorithm(I)Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    move-result-object p1

    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager;->getInstance()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, p3}, Lcom/couchbase/lite/internal/KeyStoreManager;->sign(Lcom/couchbase/lite/internal/core/C4KeyPair;Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;[B)[B

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p2, p1

    iget p3, v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keyByteSize:I

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/core/C4KeyPair;->KEY_PAIR_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->token:J

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->peer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->close()V

    :cond_0
    return-void
.end method

.method public generateSelfSignedCertificate(Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;Ljava/util/Map;Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;J)[B
    .locals 9
    .param p1    # Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;",
            "Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;",
            "J)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->peer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;

    const-string v1, "peer"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v5, v0, [[Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->impl:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    invoke-static {p1}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getC4KeyAlgorithm(Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;)B

    move-result v3

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->getBitLength()I

    move-result v4

    invoke-virtual {p4}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->getCode()B

    move-result v6

    move-wide v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->generateCert(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;BI[[Ljava/lang/String;BJ)[B

    move-result-object p0

    return-object p0
.end method

.method public getKeyAlias()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keyAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyPassword()[C
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keyPassword:[C

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p0

    return-object p0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keyStore:Ljava/security/KeyStore;

    return-object p0
.end method

.method public getKeys()Ljava/security/KeyPair;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->keys:Ljava/security/KeyPair;

    return-object p0
.end method

.method public getPeer()J
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->peer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;

    const-string v0, "peer"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeer()J

    move-result-wide v0

    return-wide v0
.end method

.method public setPeer(J)V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->peer:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->impl:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    invoke-direct {v1, p1, p2, p0}, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;-><init>(JLcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4KeyPair{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4KeyPair;->token:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
