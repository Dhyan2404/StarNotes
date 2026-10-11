.class final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$uploadBlock$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest;->l(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;",
        "Lretrofit2/Call<",
        "Lokhttp3/ResponseBody;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lretrofit2/Call;",
        "Lokhttp3/ResponseBody;",
        "service",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $data:[B

.field final synthetic $part:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;[B)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$uploadBlock$1$1;->$part:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$uploadBlock$1$1;->$data:[B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$uploadBlock$1$1;->invoke(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;)Lretrofit2/Call;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$uploadBlock$1$1;->$part:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->getUploadUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunUploadRequest$uploadBlock$1$1;->$data:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;->upload(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method
