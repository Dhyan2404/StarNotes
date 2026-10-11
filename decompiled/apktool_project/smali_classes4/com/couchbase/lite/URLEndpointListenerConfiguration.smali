.class public Lcom/couchbase/lite/URLEndpointListenerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PORT:I = 0xffff

.field public static final MIN_PORT:I


# instance fields
.field authenticator:Lcom/couchbase/lite/ListenerAuthenticator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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

.field private disableTls:Z

.field private enableDeltaSync:Z

.field private identity:Lcom/couchbase/lite/TLSIdentity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private networkInterface:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private port:I

.field private readOnly:Z


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;)V
    .locals 11
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "database"

    .line 1
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/couchbase/lite/Database;

    .line 2
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionAsSet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v10}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Set;Ljava/lang/String;IZLcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;ZZ)V

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/Database;Ljava/util/Set;Ljava/lang/String;IZLcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;ZZ)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/TLSIdentity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/couchbase/lite/ListenerAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/couchbase/lite/TLSIdentity;",
            "Lcom/couchbase/lite/ListenerAuthenticator;",
            "ZZ)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->db:Lcom/couchbase/lite/Database;

    .line 30
    iput-object p2, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->collections:Ljava/util/Set;

    .line 31
    iput-object p3, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->networkInterface:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->identity:Lcom/couchbase/lite/TLSIdentity;

    .line 33
    iput-object p7, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    .line 34
    iput p4, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->port:I

    .line 35
    iput-boolean p5, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->disableTls:Z

    .line 36
    iput-boolean p9, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->enableDeltaSync:Z

    .line 37
    iput-boolean p8, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->readOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/URLEndpointListenerConfiguration;)V
    .locals 10
    .param p1    # Lcom/couchbase/lite/URLEndpointListenerConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getDb()Lcom/couchbase/lite/Database;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    .line 9
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getCollections()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getNetworkInterface()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getPort()I

    move-result v4

    .line 12
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->isTlsDisabled()Z

    move-result v5

    .line 13
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getTlsIdentity()Lcom/couchbase/lite/TLSIdentity;

    move-result-object v6

    .line 14
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getAuthenticator()Lcom/couchbase/lite/ListenerAuthenticator;

    move-result-object v7

    .line 15
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->isReadOnly()Z

    move-result v8

    .line 16
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->isDeltaSyncEnabled()Z

    move-result v9

    move-object v0, p0

    .line 17
    invoke-direct/range {v0 .. v9}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Set;Ljava/lang/String;IZLcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;)V
    .locals 10
    .param p1    # Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getCollections()Ljava/util/Set;

    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getNetworkInterface()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getPort()I

    move-result v4

    .line 22
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isTlsDisabled()Z

    move-result v5

    .line 23
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getTlsIdentity()Lcom/couchbase/lite/TLSIdentity;

    move-result-object v6

    .line 24
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getAuthenticator()Lcom/couchbase/lite/ListenerAuthenticator;

    move-result-object v7

    .line 25
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isReadOnly()Z

    move-result v8

    .line 26
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isDeltaSyncEnabled()Z

    move-result v9

    move-object v0, p0

    .line 27
    invoke-direct/range {v0 .. v9}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Set;Ljava/lang/String;IZLcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 9
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;-><init>(Ljava/util/Set;Ljava/lang/String;IZLcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;IZLcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;ZZ)V
    .locals 10
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/TLSIdentity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/ListenerAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/couchbase/lite/TLSIdentity;",
            "Lcom/couchbase/lite/ListenerAuthenticator;",
            "ZZ)V"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/couchbase/lite/AbstractDatabase;->getDbForCollections(Ljava/util/Set;)Lcom/couchbase/lite/Database;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    const-string v0, "collections"

    move-object v3, p1

    .line 6
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 7
    invoke-direct/range {v0 .. v9}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;-><init>(Lcom/couchbase/lite/Database;Ljava/util/Set;Ljava/lang/String;IZLcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;ZZ)V

    return-void
.end method


# virtual methods
.method public getAuthenticator()Lcom/couchbase/lite/ListenerAuthenticator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    return-object p0
.end method

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

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->collections:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDatabase()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->db:Lcom/couchbase/lite/Database;

    return-object p0
.end method

.method public getDb()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->db:Lcom/couchbase/lite/Database;

    return-object p0
.end method

.method public getNetworkInterface()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->networkInterface:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->port:I

    return p0
.end method

.method public getTlsIdentity()Lcom/couchbase/lite/TLSIdentity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->identity:Lcom/couchbase/lite/TLSIdentity;

    return-object p0
.end method

.method public isDeltaSyncEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->enableDeltaSync:Z

    return p0
.end method

.method public isReadOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->readOnly:Z

    return p0
.end method

.method public isTlsDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->disableTls:Z

    return p0
.end method

.method public setAuthenticator(Lcom/couchbase/lite/ListenerAuthenticator;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ListenerAuthenticator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    return-void
.end method

.method public setDisableTls(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->disableTls:Z

    return-void
.end method

.method public setEnableDeltaSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->enableDeltaSync:Z

    return-void
.end method

.method public setNetworkInterface(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->networkInterface:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 3

    const v0, 0xffff

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->port:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is not between "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " inclusive"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setReadOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->readOnly:Z

    return-void
.end method

.method public setTlsIdentity(Lcom/couchbase/lite/TLSIdentity;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/TLSIdentity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->identity:Lcom/couchbase/lite/TLSIdentity;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URLEndpointListenerConfig{@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->networkInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->authenticator:Lcom/couchbase/lite/ListenerAuthenticator;

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->disableTls:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->enableDeltaSync:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->readOnly:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->collections:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
