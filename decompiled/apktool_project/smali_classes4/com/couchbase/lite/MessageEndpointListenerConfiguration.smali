.class public Lcom/couchbase/lite/MessageEndpointListenerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final collections:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lcom/couchbase/lite/Database;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final protocolType:Lcom/couchbase/lite/ProtocolType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ProtocolType;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ProtocolType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "database"

    .line 1
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Database;

    .line 2
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionAsSet()Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Set;Lcom/couchbase/lite/ProtocolType;)V

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/Database;Ljava/util/Set;Lcom/couchbase/lite/ProtocolType;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ProtocolType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;",
            "Lcom/couchbase/lite/ProtocolType;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->db:Lcom/couchbase/lite/Database;

    .line 8
    iput-object p2, p0, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->collections:Ljava/util/Set;

    const-string p1, "protocolType"

    .line 9
    invoke-static {p3, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/ProtocolType;

    iput-object p1, p0, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->protocolType:Lcom/couchbase/lite/ProtocolType;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/couchbase/lite/ProtocolType;)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ProtocolType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;",
            "Lcom/couchbase/lite/ProtocolType;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/couchbase/lite/AbstractDatabase;->getDbForCollections(Ljava/util/Set;)Lcom/couchbase/lite/Database;

    move-result-object v0

    const-string v1, "collections"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Database;

    .line 5
    invoke-direct {p0, v0, p1, p2}, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Set;Lcom/couchbase/lite/ProtocolType;)V

    return-void
.end method


# virtual methods
.method public getCollections()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->collections:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDatabase()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->getDb()Lcom/couchbase/lite/Database;

    move-result-object p0

    return-object p0
.end method

.method public getDb()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->db:Lcom/couchbase/lite/Database;

    return-object p0
.end method

.method public getMessageFraming()Lcom/couchbase/lite/internal/sockets/MessageFraming;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->protocolType:Lcom/couchbase/lite/ProtocolType;

    invoke-static {p0}, Lcom/couchbase/lite/ProtocolType;->getFramingForProtocol(Lcom/couchbase/lite/ProtocolType;)Lcom/couchbase/lite/internal/sockets/MessageFraming;

    move-result-object p0

    return-object p0
.end method

.method public getProtocolType()Lcom/couchbase/lite/ProtocolType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->protocolType:Lcom/couchbase/lite/ProtocolType;

    return-object p0
.end method
