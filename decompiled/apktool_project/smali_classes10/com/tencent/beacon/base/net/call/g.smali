.class Lcom/tencent/beacon/base/net/call/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/base/net/call/i;->a(Lcom/tencent/beacon/base/net/call/Callback;Lcom/tencent/beacon/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic b:Lcom/tencent/beacon/base/net/call/i;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/call/i;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/g;->b:Lcom/tencent/beacon/base/net/call/i;

    iput-object p2, p0, Lcom/tencent/beacon/base/net/call/g;->a:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/g;->b:Lcom/tencent/beacon/base/net/call/i;

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/g;->a:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/base/net/call/i;->b(Lcom/tencent/beacon/base/net/call/Callback;)V

    return-void
.end method
