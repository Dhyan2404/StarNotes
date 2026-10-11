.class Lcom/tencent/beacon/base/net/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/call/JceRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
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
.field final synthetic a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic d:Lcom/tencent/beacon/base/net/c;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/c;Lcom/tencent/beacon/base/net/call/JceRequestEntity;ZLcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/base/net/a;->d:Lcom/tencent/beacon/base/net/c;

    iput-object p2, p0, Lcom/tencent/beacon/base/net/a;->a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    iput-boolean p3, p0, Lcom/tencent/beacon/base/net/a;->b:Z

    iput-object p4, p0, Lcom/tencent/beacon/base/net/a;->c:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 12

    const-string v0, "[BeaconNet]"

    if-eqz p1, :cond_3

    array-length v1, p1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "jceRequest: "

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/a;->a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    invoke-virtual {v2}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, " request success!"

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "mode: "

    :try_start_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/beacon/base/net/a;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_1

    const-string v3, "socket"

    goto :goto_0

    :cond_1
    const-string v3, "http"

    :goto_0
    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/beacon/base/net/a;->c:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onResponse(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/beacon/base/net/a;->d:Lcom/tencent/beacon/base/net/c;

    invoke-static {p1}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/c;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v5, p1

    new-instance p1, Lcom/tencent/beacon/base/net/d;

    iget-object v0, p0, Lcom/tencent/beacon/base/net/a;->a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/beacon/base/net/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "403"

    goto :goto_1

    :cond_2
    const-string v0, "453"

    :goto_1
    move-object v2, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xc8

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/a;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    :goto_2
    return-void

    :cond_3
    :goto_3
    new-instance p1, Lcom/tencent/beacon/base/net/d;

    iget-object v0, p0, Lcom/tencent/beacon/base/net/a;->a:Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, p0, Lcom/tencent/beacon/base/net/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "402"

    goto :goto_4

    :cond_4
    const-string v0, "452"

    :goto_4
    move-object v8, v0

    const/16 v9, 0xc8

    const-string v10, "raw response == null"

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/a;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    return-void
.end method

.method public onFailure(Lcom/tencent/beacon/base/net/d;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jceRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[BeaconNet]"

    invoke-static {v2, v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/beacon/base/net/a;->d:Lcom/tencent/beacon/base/net/c;

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/d;)V

    iget-object v0, p0, Lcom/tencent/beacon/base/net/a;->c:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-interface {v0, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    iget-object p0, p0, Lcom/tencent/beacon/base/net/a;->d:Lcom/tencent/beacon/base/net/c;

    invoke-static {p0}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/c;)V

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

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/a;->a([B)V

    return-void
.end method
