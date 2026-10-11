.class public Lcom/couchbase/lite/ConnectionStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activeConnections:I

.field private final connections:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/couchbase/lite/ConnectionStatus;->connections:I

    iput p2, p0, Lcom/couchbase/lite/ConnectionStatus;->activeConnections:I

    return-void
.end method


# virtual methods
.method public getActiveConnectionCount()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/ConnectionStatus;->activeConnections:I

    return p0
.end method

.method public getConnectionCount()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/ConnectionStatus;->connections:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionStatus{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/ConnectionStatus;->connections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/couchbase/lite/ConnectionStatus;->activeConnections:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
