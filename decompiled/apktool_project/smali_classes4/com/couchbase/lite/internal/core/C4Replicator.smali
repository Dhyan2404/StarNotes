.class public abstract Lcom/couchbase/lite/internal/core/C4Replicator;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;,
        Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;,
        Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;,
        Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;,
        Lcom/couchbase/lite/internal/core/C4Replicator$C4MessageEndpointReplicator;
    }
.end annotation


# static fields
.field public static final AUTH_TYPE_BASIC:Ljava/lang/String; = "Basic"

.field public static final AUTH_TYPE_CLIENT_CERT:Ljava/lang/String; = "Client Cert"

.field public static final AUTH_TYPE_FACEBOOK:Ljava/lang/String; = "Facebook"

.field public static final AUTH_TYPE_OPEN_ID_CONNECT:Ljava/lang/String; = "OpenID Connect"

.field public static final AUTH_TYPE_SESSION:Ljava/lang/String; = "Session"

.field static final BOUND_REPLICATORS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Lcom/couchbase/lite/internal/core/C4Replicator;",
            ">;"
        }
    .end annotation
.end field

.field public static final C4_REPLICATOR_SCHEME_2:Ljava/lang/String; = "blip"

.field public static final C4_REPLICATOR_TLS_SCHEME_2:Ljava/lang/String; = "blips"

.field private static final ID:Ljava/lang/String; = "JRepl@"

.field public static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

.field public static final MESSAGE_SCHEME:Ljava/lang/String; = "x-msg-endpt"

.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final PROGRESS_OVERALL:I = 0x0

.field public static final PROGRESS_PER_ATTACHMENT:I = 0x2

.field public static final PROGRESS_PER_DOC:I = 0x1

.field public static final REPLICATOR_AUTH_CLIENT_CERT:Ljava/lang/String; = "clientCert"

.field public static final REPLICATOR_AUTH_CLIENT_CERT_KEY:Ljava/lang/String; = "clientCertKey"

.field public static final REPLICATOR_AUTH_PASSWORD:Ljava/lang/String; = "password"

.field public static final REPLICATOR_AUTH_TOKEN:Ljava/lang/String; = "token"

.field public static final REPLICATOR_AUTH_TYPE:Ljava/lang/String; = "type"

.field public static final REPLICATOR_AUTH_USER_NAME:Ljava/lang/String; = "username"

.field public static final REPLICATOR_CHECKPOINT_INTERVAL:Ljava/lang/String; = "checkpointInterval"

.field public static final REPLICATOR_COMPRESSION_LEVEL:Ljava/lang/String; = "BLIPCompressionLevel"

.field public static final REPLICATOR_HEARTBEAT_INTERVAL:Ljava/lang/String; = "heartbeat"

.field public static final REPLICATOR_OPTION_ACCEPT_PARENT_COOKIES:Ljava/lang/String; = "acceptParentDomainCookies"

.field public static final REPLICATOR_OPTION_AUTHENTICATION:Ljava/lang/String; = "auth"

.field public static final REPLICATOR_OPTION_CHANNELS:Ljava/lang/String; = "channels"

.field public static final REPLICATOR_OPTION_COOKIES:Ljava/lang/String; = "cookies"

.field public static final REPLICATOR_OPTION_DISABLE_DELTAS:Ljava/lang/String; = "noDeltas"

.field public static final REPLICATOR_OPTION_DISABLE_PROPERTY_DECRYPTION:Ljava/lang/String; = "noDecryption"

.field public static final REPLICATOR_OPTION_DOC_IDS:Ljava/lang/String; = "docIDs"

.field public static final REPLICATOR_OPTION_ENABLE_AUTO_PURGE:Ljava/lang/String; = "autoPurge"

.field public static final REPLICATOR_OPTION_EXTRA_HEADERS:Ljava/lang/String; = "headers"

.field public static final REPLICATOR_OPTION_FILTER:Ljava/lang/String; = "filter"

.field public static final REPLICATOR_OPTION_FILTER_PARAMS:Ljava/lang/String; = "filterParams"

.field public static final REPLICATOR_OPTION_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field public static final REPLICATOR_OPTION_MAX_RETRY_INTERVAL:Ljava/lang/String; = "maxRetryInterval"

.field public static final REPLICATOR_OPTION_NO_INCOMING_CONFLICTS:Ljava/lang/String; = "noIncomingConflicts"

.field public static final REPLICATOR_OPTION_OUTGOING_CONFLICTS:Ljava/lang/String; = "outgoingConflicts"

.field public static final REPLICATOR_OPTION_PINNED_SERVER_CERT:Ljava/lang/String; = "pinnedCert"

.field public static final REPLICATOR_OPTION_PROXY_PASS:Ljava/lang/String; = "proxyPassword"

.field public static final REPLICATOR_OPTION_PROXY_USER:Ljava/lang/String; = "proxyUser"

.field public static final REPLICATOR_OPTION_REMOTE_DB_UNIQUE_ID:Ljava/lang/String; = "remoteDBUniqueID"

.field public static final REPLICATOR_OPTION_ROOT_CERTS:Ljava/lang/String; = "rootCerts"

.field public static final REPLICATOR_OPTION_SELF_SIGNED_SERVER_CERT:Ljava/lang/String; = "onlySelfSignedServer"

.field public static final REPLICATOR_OPTION_SKIP_DELETED:Ljava/lang/String; = "skipDeleted"

.field public static final SOCKET_OPTIONS_NETWORK_INTERFACE:Ljava/lang/String; = "networkInterface"

.field public static final SOCKET_OPTION_WS_PROTOCOLS:Ljava/lang/String; = "WS-Protocols"

.field public static final WEBSOCKET_SCHEME:Ljava/lang/String; = "ws"

.field public static final WEBSOCKET_SECURE_CONNECTION_SCHEME:Ljava/lang/String; = "wss"


# instance fields
.field final colls:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/ReplicationCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final statusListener:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final token:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->BOUND_REPLICATORS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;JJLjava/util/List;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;",
            "JJ",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/ReplicationCollection;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    const-string p1, "token"

    invoke-static {p4, p5, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->token:J

    const-string p1, "collections"

    invoke-static {p6, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->colls:Ljava/util/List;

    const-string p1, "status listener"

    invoke-static {p7, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->statusListener:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/internal/core/C4Replicator;ZLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Replicator;->lambda$setHostReachable$6(ZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;J[Lcom/couchbase/lite/internal/ReplicationCollection;JLcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/couchbase/lite/internal/core/C4Replicator;->lambda$createLocalReplicator$0(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;J[Lcom/couchbase/lite/internal/ReplicationCollection;JLcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/couchbase/lite/internal/core/C4Replicator;ZLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Replicator;->lambda$start$1(ZLjava/lang/Long;)V

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/d00;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/d00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static createLocalReplicator(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;Ljava/util/Map;JLcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 19
    .param p0    # Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;J",
            "Lcom/couchbase/lite/internal/core/C4Database;",
            "Lcom/couchbase/lite/ReplicatorType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;",
            "Lcom/couchbase/lite/AbstractReplicator;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->BOUND_REPLICATORS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v14

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/couchbase/lite/internal/ReplicationCollection;->createAll(Ljava/util/Map;)[Lcom/couchbase/lite/internal/ReplicationCollection;

    move-result-object v11

    .line 4
    new-instance v12, Lcom/sunia/HTREnginev2/a00;

    move-object v1, v12

    move-object/from16 v2, p0

    move-wide v3, v14

    move-object v5, v11

    move-wide/from16 v6, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/sunia/HTREnginev2/a00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;J[Lcom/couchbase/lite/internal/ReplicationCollection;JLcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v12}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5
    new-instance v12, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;

    .line 6
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    move-object v1, v12

    move-wide v5, v14

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v18, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;JJLjava/util/List;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;J)V

    move-object/from16 v1, v18

    .line 7
    invoke-virtual {v0, v14, v15, v1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-object v1
.end method

.method public static createLocalReplicator(Ljava/util/Map;JLcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 11
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;J",
            "Lcom/couchbase/lite/internal/core/C4Database;",
            "Lcom/couchbase/lite/ReplicatorType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;",
            "Lcom/couchbase/lite/AbstractReplicator;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/couchbase/lite/internal/core/C4Replicator;->createLocalReplicator(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;Ljava/util/Map;JLcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageEndpointReplicator(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;Ljava/util/Set;JLcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 14
    .param p0    # Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/core/C4Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;J",
            "Lcom/couchbase/lite/internal/core/C4Socket;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->BOUND_REPLICATORS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v11

    .line 3
    invoke-static {p1}, Lcom/couchbase/lite/internal/ReplicationCollection;->createAll(Ljava/util/Set;)[Lcom/couchbase/lite/internal/ReplicationCollection;

    move-result-object v13

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JRepl@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/couchbase/lite/internal/core/C4Socket;->getPeerHandle()J

    move-result-wide v6

    if-eqz p5, :cond_1

    .line 6
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->encodeMap(Ljava/util/Map;)[B

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    move-object v8, v1

    move-object v1, p0

    move-object v3, v13

    move-wide/from16 v4, p2

    move-wide v9, v11

    .line 7
    invoke-interface/range {v1 .. v10}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nCreateWithSocket(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJ[BJ)J

    move-result-wide v3

    .line 8
    new-instance v10, Lcom/couchbase/lite/internal/core/C4Replicator$C4MessageEndpointReplicator;

    .line 9
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v1, v10

    move-object v2, p0

    move-wide v5, v11

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/couchbase/lite/internal/core/C4Replicator$C4MessageEndpointReplicator;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;JJLcom/couchbase/lite/internal/core/C4Socket;Ljava/util/List;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)V

    .line 10
    invoke-virtual {v0, v11, v12, v10}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-object v10
.end method

.method public static createMessageEndpointReplicator(Ljava/util/Set;JLcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 7
    .param p0    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/core/C4Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;J",
            "Lcom/couchbase/lite/internal/core/C4Socket;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Replicator;->createMessageEndpointReplicator(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;Ljava/util/Set;JLcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method

.method public static createRemoteReplicator(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 24
    .param p0    # Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
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
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/couchbase/lite/internal/sockets/MessageFraming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/couchbase/lite/internal/SocketFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/internal/sockets/MessageFraming;",
            "Lcom/couchbase/lite/ReplicatorType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;",
            "Lcom/couchbase/lite/AbstractReplicator;",
            "Lcom/couchbase/lite/internal/SocketFactory;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object/from16 v0, p10

    .line 2
    sget-object v1, Lcom/couchbase/lite/internal/core/C4Replicator;->BOUND_REPLICATORS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v14

    if-nez p16, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static/range {p16 .. p16}, Lcom/couchbase/lite/internal/BaseSocketFactory;->bindSocketFactory(Lcom/couchbase/lite/internal/BaseSocketFactory;)J

    move-result-wide v2

    :goto_0
    move-wide/from16 v21, v2

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/couchbase/lite/internal/ReplicationCollection;->createAll(Ljava/util/Map;)[Lcom/couchbase/lite/internal/ReplicationCollection;

    move-result-object v23

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JRepl@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static/range {p9 .. p9}, Lcom/couchbase/lite/internal/sockets/MessageFraming;->getC4Framing(Lcom/couchbase/lite/internal/sockets/MessageFraming;)I

    move-result v12

    sget-object v2, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_2

    sget-object v6, Lcom/couchbase/lite/ReplicatorType;->PUSH:Lcom/couchbase/lite/ReplicatorType;

    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    move v13, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v13, v5

    :goto_2
    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v5

    :goto_4
    if-eqz p12, :cond_6

    .line 7
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-static/range {p12 .. p12}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->encodeMap(Ljava/util/Map;)[B

    move-result-object v2

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v16, v2

    move-object/from16 v2, p0

    move-object/from16 v4, v23

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 p1, v14

    move v14, v0

    move/from16 v15, p11

    move-wide/from16 v17, p1

    move-wide/from16 v19, v21

    .line 8
    invoke-interface/range {v2 .. v20}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nCreate(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZ[BJJ)J

    move-result-wide v4

    .line 9
    new-instance v0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;

    .line 10
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v2, v0

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    move-wide/from16 v13, v21

    invoke-direct/range {v2 .. v14}, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;JJLjava/util/List;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;J)V

    move-wide/from16 v2, p1

    .line 11
    invoke-virtual {v1, v2, v3, v0}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-object v0
.end method

.method public static createRemoteReplicator(Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 17
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/internal/sockets/MessageFraming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/couchbase/lite/internal/SocketFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/internal/sockets/MessageFraming;",
            "Lcom/couchbase/lite/ReplicatorType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;",
            "Lcom/couchbase/lite/AbstractReplicator;",
            "Lcom/couchbase/lite/internal/SocketFactory;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-static/range {v0 .. v16}, Lcom/couchbase/lite/internal/core/C4Replicator;->createRemoteReplicator(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs documentEndedCallback(JZ[Lcom/couchbase/lite/internal/core/C4DocumentEnded;)V
    .locals 4
    .param p3    # [Lcom/couchbase/lite/internal/core/C4DocumentEnded;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->BOUND_REPLICATORS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Replicator;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "???@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Replicator;->getReplId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    array-length p1, p3

    :goto_1
    sget-object v1, Lcom/couchbase/lite/internal/core/C4Replicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "C4Replicator(%s).documentEndedCallback: %d (%s)"

    invoke-static {v1, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    if-gtz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/couchbase/lite/internal/core/C4Replicator;->documentsEnded(Ljava/util/List;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic e0(Lcom/couchbase/lite/internal/core/C4Replicator;ILjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Replicator;->lambda$setProgressLevel$5(ILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4Replicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Replicator;->lambda$getPendingDocIDs$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/couchbase/lite/internal/core/C4Replicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Replicator;->lambda$isDocumentPending$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4Replicator;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Replicator;->lambda$closePeer$7(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$closePeer$7(Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Replicator;->releaseResources()V

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->BOUND_REPLICATORS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->token:J

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nStop(J)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$createLocalReplicator$0(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;J[Lcom/couchbase/lite/internal/ReplicationCollection;JLcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object/from16 v0, p6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JRepl@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v1, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v5, Lcom/couchbase/lite/ReplicatorType;->PUSH:Lcom/couchbase/lite/ReplicatorType;

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v10, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v3

    :goto_1
    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v11, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v3

    :goto_3
    if-eqz p8, :cond_5

    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static/range {p8 .. p8}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->encodeMap(Ljava/util/Map;)[B

    move-result-object v0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x0

    :goto_5
    move-object v13, v0

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v12, p7

    move-wide/from16 v14, p1

    invoke-interface/range {v3 .. v15}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nCreateLocal(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJZZZ[BJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$getPendingDocIDs$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nGetPendingDocIds(JLjava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isDocumentPending$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nIsDocumentPending(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setHostReachable$6(ZLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nSetHostReachable(JZ)V

    return-void
.end method

.method private synthetic lambda$setOptions$2([BLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nSetOptions(J[B)V

    return-void
.end method

.method private synthetic lambda$setProgressLevel$5(ILjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nSetProgressLevel(JI)V

    return-void
.end method

.method private synthetic lambda$start$1(ZLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;->nStart(JZ)V

    return-void
.end method

.method public static statusChangedCallback(JLcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 3
    .param p2    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->BOUND_REPLICATORS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Replicator;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "???@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Replicator;->getReplId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/couchbase/lite/internal/core/C4Replicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "C4Replicator(%s).statusChangedCallback: %s"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v0, p2}, Lcom/couchbase/lite/internal/core/C4Replicator;->statusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/core/C4Replicator;[BLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Replicator;->lambda$setOptions$2([BLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->colls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/ReplicationCollection;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ReplicationCollection;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4Replicator;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public abstract documentsEnded(Ljava/util/List;Z)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/core/C4DocumentEnded;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Replicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4Replicator;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getPendingDocIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/g00;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/g00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    invoke-static {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->fromData(Lcom/couchbase/lite/internal/fleece/FLSliceResult;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asTypedArray()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public getReplId()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JRepl@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->token:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/j00;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/j00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    return-object p0
.end method

.method public isDocumentPending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lcom/sunia/HTREnginev2/i00;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/i00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public abstract releaseResources()V
.end method

.method public setHostReachable(Z)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/e00;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/e00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator;Z)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public setOptions([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/b00;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/b00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator;[B)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public setProgressLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/h00;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/h00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator;I)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public start(Z)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/f00;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/f00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator;Z)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public statusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->statusListener:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;->statusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->impl:Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/c00;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/c00;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method
