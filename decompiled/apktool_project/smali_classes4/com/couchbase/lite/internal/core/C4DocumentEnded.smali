.class public final Lcom/couchbase/lite/internal/core/C4DocumentEnded;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final collection:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final docId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final errorCode:I

.field public final errorDomain:I

.field public final errorInternalInfo:I

.field public final errorIsTransient:Z

.field public final flags:I

.field public final revId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final scope:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final sequence:J

.field public final token:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIIIZ)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
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
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->token:J

    iput-object p3, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->scope:Ljava/lang/String;

    iput-object p4, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->collection:Ljava/lang/String;

    iput-object p5, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->docId:Ljava/lang/String;

    iput-object p6, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->revId:Ljava/lang/String;

    iput p7, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->flags:I

    iput-wide p8, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->sequence:J

    iput p10, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorDomain:I

    iput p11, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorCode:I

    iput p12, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorInternalInfo:I

    iput-boolean p13, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorIsTransient:Z

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorCode:I

    return p0
.end method

.method public getErrorDomain()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorDomain:I

    return p0
.end method

.method public getErrorInfo()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorInternalInfo:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4DocumentEnded{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->token:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->docId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->revId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorInternalInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->errorIsTransient:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
