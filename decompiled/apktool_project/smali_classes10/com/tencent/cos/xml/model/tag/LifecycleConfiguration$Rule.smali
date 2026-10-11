.class public Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# instance fields
.field public abortIncompleteMultiUpload:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$AbortIncompleteMultiUpload;

.field public expiration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Expiration;

.field public filter:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Filter;

.field public id:Ljava/lang/String;

.field public noncurrentVersionExpiration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$NoncurrentVersionExpiration;

.field public noncurrentVersionTransition:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$NoncurrentVersionTransition;

.field public status:Ljava/lang/String;

.field public transition:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Transition;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Rule:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;->filter:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Filter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Filter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "Status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;->transition:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Transition;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Transition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;->expiration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Expiration;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Expiration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;->noncurrentVersionExpiration:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$NoncurrentVersionExpiration;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$NoncurrentVersionExpiration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;->noncurrentVersionTransition:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$NoncurrentVersionTransition;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$NoncurrentVersionTransition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$Rule;->abortIncompleteMultiUpload:Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$AbortIncompleteMultiUpload;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/tag/LifecycleConfiguration$AbortIncompleteMultiUpload;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
