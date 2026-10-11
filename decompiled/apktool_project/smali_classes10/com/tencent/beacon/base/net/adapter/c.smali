.class Lcom/tencent/beacon/base/net/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->request(Lcom/tencent/beacon/base/net/call/JceRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;Lcom/tencent/beacon/base/net/call/Callback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/base/net/adapter/c;->c:Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;

    iput-object p2, p0, Lcom/tencent/beacon/base/net/adapter/c;->a:Lcom/tencent/beacon/base/net/call/Callback;

    iput-object p3, p0, Lcom/tencent/beacon/base/net/adapter/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
