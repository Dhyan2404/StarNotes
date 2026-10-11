.class Lcom/tencent/beacon/base/net/call/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/base/net/call/i;->b(Lcom/tencent/beacon/base/net/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/Callback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic b:Lcom/tencent/beacon/base/net/call/i;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/call/i;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/h;->b:Lcom/tencent/beacon/base/net/call/i;

    iput-object p2, p0, Lcom/tencent/beacon/base/net/call/h;->a:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw response size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[BeaconNet]"

    invoke-static {v2, v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/h;->b:Lcom/tencent/beacon/base/net/call/i;

    invoke-static {v0}, Lcom/tencent/beacon/base/net/call/i;->a(Lcom/tencent/beacon/base/net/call/i;)Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v0

    sget-object v1, Lcom/tencent/beacon/base/net/RequestType;->EVENT:Lcom/tencent/beacon/base/net/RequestType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/beacon/base/net/c;->f:Lcom/tencent/beacon/base/net/a/b;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/a/b;->b()Lcom/tencent/beacon/base/net/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/pack/AbstractResponseCommon;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/beacon/base/net/NetException;

    const-string p1, "ResponsePackageV2 == null"

    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/beacon/base/net/c;->e:Lcom/tencent/beacon/base/net/a/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/a/a;->b()Lcom/tencent/beacon/base/net/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/pack/AbstractResponseCommon;

    if-eqz p1, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/tencent/beacon/pack/ResponsePackage;

    iget v1, v0, Lcom/tencent/beacon/pack/ResponsePackage;->cmd:I

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/h;->b:Lcom/tencent/beacon/base/net/call/i;

    invoke-static {v2}, Lcom/tencent/beacon/base/net/call/i;->a(Lcom/tencent/beacon/base/net/call/i;)Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getResponseCmd()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-byte v1, v0, Lcom/tencent/beacon/pack/ResponsePackage;->result:B

    if-nez v1, :cond_4

    iget-object v0, v0, Lcom/tencent/beacon/pack/ResponsePackage;->sBuffer:[B

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/h;->b:Lcom/tencent/beacon/base/net/call/i;

    invoke-static {v1}, Lcom/tencent/beacon/base/net/call/i;->b(Lcom/tencent/beacon/base/net/call/i;)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/tencent/beacon/pack/AbstractResponseCommon;->serverTime:J

    iget-object p1, p1, Lcom/tencent/beacon/pack/AbstractResponseCommon;->srcGatewayIp:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/tencent/beacon/base/net/b/d;->a(JJLjava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/h;->a:Lcom/tencent/beacon/base/net/call/Callback;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onResponse(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lcom/tencent/beacon/base/net/NetException;

    const-string p1, "responsePackage.buffer == null"

    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/tencent/beacon/base/net/NetException;

    const-string p1, "responsePackage.result != OK(0)"

    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/tencent/beacon/base/net/NetException;

    const-string p1, "responsePackage.cmd != requestEntity.responseCmd"

    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/tencent/beacon/base/net/NetException;

    const-string p1, "responsePackage == null"

    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/NetException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onFailure(Lcom/tencent/beacon/base/net/d;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/h;->a:Lcom/tencent/beacon/base/net/call/Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/call/h;->a([B)V

    return-void
.end method
