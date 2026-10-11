.class public final Lcom/couchbase/lite/internal/core/C4Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;,
        Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;
    }
.end annotation


# static fields
.field public static final AUTH_MODE_BASIC:Ljava/lang/String; = "Basic"

.field static final LISTENER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/core/C4Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final authenticator:Lcom/couchbase/lite/ListenerAuthenticator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final impl:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private peer:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final token:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Listener;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Listener;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Listener;->LISTENER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    return-void
.end method

.method public constructor <init>(JLcom/couchbase/lite/internal/core/C4Listener$NativeImpl;Lcom/couchbase/lite/ListenerAuthenticator;)V
    .locals 1
    .param p3    # Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/ListenerAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "token"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/core/C4Listener;->token:J

    const-string p1, "native impl"

    invoke-static {p3, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Listener;->impl:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    iput-object p4, p0, Lcom/couchbase/lite/internal/core/C4Listener;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/internal/core/C4Listener;Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Listener;->lambda$getUrls$4(Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/core/C4Listener;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Listener;->lambda$getUrls$3(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/couchbase/lite/internal/core/C4Listener;)Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->impl:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    return-object p0
.end method

.method public static certAuthCallback(J[B)Z
    .locals 2
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Listener;->LISTENER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Listener;

    if-nez v0, :cond_0

    sget-object p2, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No listener for token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/couchbase/lite/internal/core/C4Listener;->authenticateCert([B)Z

    move-result p0

    return p0
.end method

.method public static createHttpListener(ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerPasswordAuthenticator;ZZZ)Lcom/couchbase/lite/internal/core/C4Listener;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ListenerPasswordAuthenticator;
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

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Listener;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/couchbase/lite/internal/core/C4Listener;->createHttpListener(Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerPasswordAuthenticator;ZZZ)Lcom/couchbase/lite/internal/core/C4Listener;

    move-result-object p0

    return-object p0
.end method

.method public static createHttpListener(Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerPasswordAuthenticator;ZZZ)Lcom/couchbase/lite/internal/core/C4Listener;
    .locals 16
    .param p0    # Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/ListenerPasswordAuthenticator;
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

    move-object/from16 v0, p4

    .line 2
    sget-object v1, Lcom/couchbase/lite/internal/core/C4Listener;->LISTENER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v3

    .line 3
    new-instance v15, Lcom/couchbase/lite/internal/core/C4Listener;

    move-object/from16 v2, p0

    invoke-direct {v15, v3, v4, v2, v0}, Lcom/couchbase/lite/internal/core/C4Listener;-><init>(JLcom/couchbase/lite/internal/core/C4Listener$NativeImpl;Lcom/couchbase/lite/ListenerAuthenticator;)V

    .line 4
    invoke-virtual {v1, v3, v4, v15}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v14, v0

    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    .line 5
    :try_start_0
    invoke-interface/range {v2 .. v14}, Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;->nStartHttp(JILjava/lang/String;ILjava/lang/String;ZZZZZZ)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v15, v0, v1}, Lcom/couchbase/lite/internal/core/C4Listener;->setPeer(J)V

    return-object v15

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 7
    invoke-static {v1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v0

    throw v0
.end method

.method public static createTlsListenerCertAuth(ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerCertificateAuthenticator;ZZZLjava/security/cert/Certificate;Lcom/couchbase/lite/internal/core/C4KeyPair;)Lcom/couchbase/lite/internal/core/C4Listener;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ListenerCertificateAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/security/cert/Certificate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/internal/core/C4KeyPair;
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

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Listener;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/couchbase/lite/internal/core/C4Listener;->createTlsListenerCertAuth(Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerCertificateAuthenticator;ZZZLjava/security/cert/Certificate;Lcom/couchbase/lite/internal/core/C4KeyPair;)Lcom/couchbase/lite/internal/core/C4Listener;

    move-result-object v0

    return-object v0
.end method

.method public static createTlsListenerCertAuth(Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerCertificateAuthenticator;ZZZLjava/security/cert/Certificate;Lcom/couchbase/lite/internal/core/C4KeyPair;)Lcom/couchbase/lite/internal/core/C4Listener;
    .locals 20
    .param p0    # Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/ListenerCertificateAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/security/cert/Certificate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/couchbase/lite/internal/core/C4KeyPair;
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

    move-object/from16 v0, p4

    if-eqz p9, :cond_1

    .line 2
    sget-object v1, Lcom/couchbase/lite/internal/core/C4Listener;->LISTENER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v3

    .line 3
    new-instance v14, Lcom/couchbase/lite/internal/core/C4Listener;

    move-object/from16 v2, p0

    invoke-direct {v14, v3, v4, v2, v0}, Lcom/couchbase/lite/internal/core/C4Listener;-><init>(JLcom/couchbase/lite/internal/core/C4Listener$NativeImpl;Lcom/couchbase/lite/ListenerAuthenticator;)V

    .line 4
    invoke-virtual {v1, v3, v4, v14}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5
    :try_start_0
    invoke-virtual/range {p9 .. p9}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getPeer()J

    move-result-wide v15

    .line 6
    invoke-virtual/range {p8 .. p8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    const/16 v17, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;->getRootCerts()[B

    move-result-object v0

    :goto_0
    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object v0, v14

    move-wide v14, v15

    move-object/from16 v16, v1

    .line 8
    invoke-interface/range {v2 .. v19}, Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;->nStartTls(JILjava/lang/String;ILjava/lang/String;ZZZZZJ[BZ[BZ)J

    move-result-wide v1
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/C4Listener;->setPeer(J)V

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v2, "Listener"

    const/16 v3, 0x1392

    const-string v4, "Bad cert encoding"

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    throw v1

    :catch_1
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v0

    throw v0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyPair must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTlsListenerPasswordAuth(ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerPasswordAuthenticator;ZZZLjava/security/cert/Certificate;Lcom/couchbase/lite/internal/core/C4KeyPair;)Lcom/couchbase/lite/internal/core/C4Listener;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ListenerPasswordAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/security/cert/Certificate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/internal/core/C4KeyPair;
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

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Listener;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/couchbase/lite/internal/core/C4Listener;->createTlsListenerPasswordAuth(Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerPasswordAuthenticator;ZZZLjava/security/cert/Certificate;Lcom/couchbase/lite/internal/core/C4KeyPair;)Lcom/couchbase/lite/internal/core/C4Listener;

    move-result-object v0

    return-object v0
.end method

.method public static createTlsListenerPasswordAuth(Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerPasswordAuthenticator;ZZZLjava/security/cert/Certificate;Lcom/couchbase/lite/internal/core/C4KeyPair;)Lcom/couchbase/lite/internal/core/C4Listener;
    .locals 20
    .param p0    # Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/ListenerPasswordAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/security/cert/Certificate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/couchbase/lite/internal/core/C4KeyPair;
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

    move-object/from16 v0, p4

    const-string v1, "database path"

    move-object/from16 v8, p3

    .line 2
    invoke-static {v8, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "server cert"

    move-object/from16 v2, p8

    .line 3
    invoke-static {v2, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "key pair"

    move-object/from16 v3, p9

    .line 4
    invoke-static {v3, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/core/C4KeyPair;

    .line 5
    sget-object v3, Lcom/couchbase/lite/internal/core/C4Listener;->LISTENER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v4

    .line 6
    new-instance v14, Lcom/couchbase/lite/internal/core/C4Listener;

    move-object/from16 v6, p0

    invoke-direct {v14, v4, v5, v6, v0}, Lcom/couchbase/lite/internal/core/C4Listener;-><init>(JLcom/couchbase/lite/internal/core/C4Listener$NativeImpl;Lcom/couchbase/lite/ListenerAuthenticator;)V

    .line 7
    invoke-virtual {v3, v4, v5, v14}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4KeyPair;->getPeer()J

    move-result-wide v15

    .line 9
    invoke-virtual/range {p8 .. p8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v19, v0

    move-object/from16 v2, p0

    move-wide v3, v4

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object v0, v14

    move-wide v14, v15

    move-object/from16 v16, v1

    .line 10
    invoke-interface/range {v2 .. v19}, Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;->nStartTls(JILjava/lang/String;ILjava/lang/String;ZZZZZJ[BZ[BZ)J

    move-result-wide v1
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/C4Listener;->setPeer(J)V

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v2, "Listener"

    const/16 v3, 0x1392

    const-string v4, "Bad cert encoding"

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    throw v1

    :catch_1
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v0

    throw v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4Listener;Ljava/lang/String;Ljava/lang/Long;[JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Listener;->lambda$shareDbCollections$1(Ljava/lang/String;Ljava/lang/Long;[JLjava/lang/Long;)V

    return-void
.end method

.method public static httpAuthCallback(JLjava/lang/String;)Z
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Listener;->LISTENER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Listener;

    if-nez v0, :cond_0

    sget-object p2, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No listener for token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/couchbase/lite/internal/core/C4Listener;->authenticateBasic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4Listener;Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/String;[JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Listener;->lambda$shareDbCollections$2(Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/String;[JLjava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$getUrls$3(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->impl:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;->nGetUrls(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getUrls$4(Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/kz;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/kz;-><init>(Lcom/couchbase/lite/internal/core/C4Listener;Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$shareDbCollections$0([JILjava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$shareDbCollections$1(Ljava/lang/String;Ljava/lang/Long;[JLjava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->impl:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v3, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;->nShareDbCollections(JLjava/lang/String;J[J)V

    return-void
.end method

.method private synthetic lambda$shareDbCollections$2(Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/String;[JLjava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/iz;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/sunia/HTREnginev2/iz;-><init>(Lcom/couchbase/lite/internal/core/C4Listener;Ljava/lang/String;Ljava/lang/Long;[J)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static synthetic w([JILjava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Listener;->lambda$shareDbCollections$0([JILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public authenticateBasic(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    instance-of v0, p0, Lcom/couchbase/lite/internal/core/InternalPwdAuthenticator;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/couchbase/lite/internal/core/InternalPwdAuthenticator;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v1, p1, v0

    const-string v2, "Basic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    aget-object p1, p1, v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unrecognized authentication mode: %s"

    invoke-static {p0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    array-length v1, p1

    const/4 v2, 0x2

    const-string v3, "Unrecognized authentication material"

    if-le v1, v2, :cond_2

    sget-object p0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, v3}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v0

    :cond_2
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/couchbase/lite/internal/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/couchbase/lite/internal/utils/PlatformUtils;->getDecoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;

    move-result-object v1

    aget-object p1, p1, v2

    invoke-interface {v1, p1}, Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;->decodeString(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v1, p1

    if-gtz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, v3}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/StringUtils;->getArrayString([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/couchbase/lite/internal/utils/StringUtils;->getArrayString([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/couchbase/lite/internal/core/InternalPwdAuthenticator;->authenticate(Ljava/lang/String;[C)Z

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authenticator must be a password authenticator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public authenticateCert([B)Z
    .locals 4
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    instance-of v1, v0, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;->authenticate(Ljava/util/List;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-object p1, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed parsing certificate for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v1

    :cond_1
    :goto_1
    sget-object p0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    const-string p1, "Null/empty cert in authentication"

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authenticator must be a certificate authenticator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Listener;->LISTENER_CONTEXT:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Listener;->token:J

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->peer:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;->close()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->peer:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectionStatus()Lcom/couchbase/lite/ConnectionStatus;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->peer:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->impl:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gz;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gz;-><init>(Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->nonNullWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ConnectionStatus;

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "C4Listener is null"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPort()I
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->peer:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    const-string v1, "peer"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->impl:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jz;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jz;-><init>(Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->nonNullWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getUriFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->impl:Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;->nGetUriFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrls(Lcom/couchbase/lite/internal/core/C4Database;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4Database;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->peer:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/couchbase/lite/internal/core/d;

    invoke-direct {v2, p0, v0}, Lcom/couchbase/lite/internal/core/d;-><init>(Lcom/couchbase/lite/internal/core/C4Listener;Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;)V

    invoke-virtual {p1, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    const-string v0, "Failed getting URLs"

    invoke-static {p1, v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public setPeer(J)V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    invoke-direct {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;-><init>(Lcom/couchbase/lite/internal/core/C4Listener;J)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->peer:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    return-void
.end method

.method public shareDbCollections(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Database;Ljava/util/Set;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/internal/core/C4Database;",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/internal/core/C4Collection;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Listener;->peer:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [J

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/couchbase/lite/internal/core/C4Collection;

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lcom/sunia/HTREnginev2/hz;

    invoke-direct {v5, v1, v2}, Lcom/sunia/HTREnginev2/hz;-><init>([JI)V

    invoke-virtual {v3, v5}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move v2, v4

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p3, Lcom/couchbase/lite/internal/core/c;

    invoke-direct {p3, p0, v0, p1, v1}, Lcom/couchbase/lite/internal/core/c;-><init>(Lcom/couchbase/lite/internal/core/C4Listener;Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/String;[J)V

    invoke-virtual {p2, p3}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "C4Listener is null"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4Listener{"

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

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Listener;->token:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
