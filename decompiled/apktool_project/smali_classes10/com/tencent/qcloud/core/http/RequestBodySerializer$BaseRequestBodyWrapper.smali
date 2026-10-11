.class final Lcom/tencent/qcloud/core/http/RequestBodySerializer$BaseRequestBodyWrapper;
.super Lcom/tencent/qcloud/core/http/RequestBodySerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/RequestBodySerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseRequestBodyWrapper"
.end annotation


# instance fields
.field private final body:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;-><init>()V

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/RequestBodySerializer$BaseRequestBodyWrapper;->body:Lokhttp3/RequestBody;

    return-void
.end method


# virtual methods
.method public body()Lokhttp3/RequestBody;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/RequestBodySerializer$BaseRequestBodyWrapper;->body:Lokhttp3/RequestBody;

    return-object p0
.end method
