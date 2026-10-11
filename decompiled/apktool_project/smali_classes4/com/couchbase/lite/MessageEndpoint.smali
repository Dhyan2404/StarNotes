.class public Lcom/couchbase/lite/MessageEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/Endpoint;


# instance fields
.field private final delegate:Lcom/couchbase/lite/MessageEndpointDelegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final protocolType:Lcom/couchbase/lite/ProtocolType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final target:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final uid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/couchbase/lite/ProtocolType;Lcom/couchbase/lite/MessageEndpointDelegate;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ProtocolType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/MessageEndpointDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uid"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "protocolType"

    invoke-static {p3, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "delegate"

    invoke-static {p4, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/MessageEndpoint;->uid:Ljava/lang/String;

    iput-object p2, p0, Lcom/couchbase/lite/MessageEndpoint;->target:Ljava/lang/Object;

    iput-object p3, p0, Lcom/couchbase/lite/MessageEndpoint;->protocolType:Lcom/couchbase/lite/ProtocolType;

    iput-object p4, p0, Lcom/couchbase/lite/MessageEndpoint;->delegate:Lcom/couchbase/lite/MessageEndpointDelegate;

    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/couchbase/lite/MessageEndpointDelegate;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpoint;->delegate:Lcom/couchbase/lite/MessageEndpointDelegate;

    return-object p0
.end method

.method public getMessageFraming()Lcom/couchbase/lite/internal/sockets/MessageFraming;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpoint;->protocolType:Lcom/couchbase/lite/ProtocolType;

    invoke-static {p0}, Lcom/couchbase/lite/ProtocolType;->getFramingForProtocol(Lcom/couchbase/lite/ProtocolType;)Lcom/couchbase/lite/internal/sockets/MessageFraming;

    move-result-object p0

    return-object p0
.end method

.method public getProtocolType()Lcom/couchbase/lite/ProtocolType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpoint;->protocolType:Lcom/couchbase/lite/ProtocolType;

    return-object p0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpoint;->target:Ljava/lang/Object;

    return-object p0
.end method

.method public getUid()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpoint;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageEndpoint{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/MessageEndpoint;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/MessageEndpoint;->protocolType:Lcom/couchbase/lite/ProtocolType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpoint;->target:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
