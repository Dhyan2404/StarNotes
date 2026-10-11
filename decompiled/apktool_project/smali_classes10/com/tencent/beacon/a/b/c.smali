.class Lcom/tencent/beacon/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/Callback<",
        "Lcom/tencent/beacon/base/net/BResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/tencent/beacon/a/b/h;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/a/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/a/b/c;->d:Lcom/tencent/beacon/a/b/h;

    iput-object p2, p0, Lcom/tencent/beacon/a/b/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/beacon/a/b/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/beacon/a/b/c;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/base/net/BResponse;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "net ret: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/BResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AttaReport"

    invoke-static {v0, p0, p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lcom/tencent/beacon/base/net/d;)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/beacon/a/b/c;->d:Lcom/tencent/beacon/a/b/h;

    iget-object v0, p0, Lcom/tencent/beacon/a/b/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/beacon/a/b/c;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/beacon/a/b/c;->c:Ljava/lang/Throwable;

    invoke-static {p1, v0, v1, p0}, Lcom/tencent/beacon/a/b/h;->a(Lcom/tencent/beacon/a/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    check-cast p1, Lcom/tencent/beacon/base/net/BResponse;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/b/c;->a(Lcom/tencent/beacon/base/net/BResponse;)V

    return-void
.end method
