.class final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunGetFileLinkRequest$execute$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunGetFileLinkRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;
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
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;",
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
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;",
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
.field final synthetic $body:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunGetFileLinkRequest$execute$1;->$body:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunGetFileLinkRequest$execute$1;->invoke(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;)Lretrofit2/Call;
    .locals 1
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
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunGetFileLinkRequest$execute$1;->$body:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;->getDownloadLink(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method
