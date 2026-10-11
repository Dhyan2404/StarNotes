.class public Lcom/couchbase/lite/internal/sockets/CloseStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final code:I

.field public final domain:I

.field public final message:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->domain:I

    .line 4
    iput p2, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    .line 5
    iput-object p3, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    iget v1, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->domain:I

    iget v3, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->domain:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    iget v3, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/utils/ClassUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->domain:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloseStatus{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
