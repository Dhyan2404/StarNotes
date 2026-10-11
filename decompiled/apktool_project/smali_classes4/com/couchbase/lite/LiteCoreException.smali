.class public Lcom/couchbase/lite/LiteCoreException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final code:I

.field public final domain:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/couchbase/lite/LiteCoreException;->domain:I

    iput p2, p0, Lcom/couchbase/lite/LiteCoreException;->code:I

    return-void
.end method

.method public static throwException(IILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/LiteCoreException;

    invoke-direct {v0, p0, p1, p2}, Lcom/couchbase/lite/LiteCoreException;-><init>(IILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/LiteCoreException;->code:I

    return p0
.end method

.method public getDomain()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/LiteCoreException;->domain:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/LiteCoreException;->domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/couchbase/lite/LiteCoreException;->code:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
