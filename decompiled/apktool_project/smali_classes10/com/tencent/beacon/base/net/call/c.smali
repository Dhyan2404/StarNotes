.class public Lcom/tencent/beacon/base/net/call/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/call/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/beacon/base/net/call/a<",
        "Lcom/tencent/beacon/base/net/BResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/beacon/base/net/call/HttpRequestEntity;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/c;->a:Lcom/tencent/beacon/base/net/call/HttpRequestEntity;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "Lcom/tencent/beacon/base/net/BResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/c;->a:Lcom/tencent/beacon/base/net/call/HttpRequestEntity;

    new-instance v2, Lcom/tencent/beacon/base/net/call/b;

    invoke-direct {v2, p0, p1}, Lcom/tencent/beacon/base/net/call/b;-><init>(Lcom/tencent/beacon/base/net/call/c;Lcom/tencent/beacon/base/net/call/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V

    return-void
.end method
