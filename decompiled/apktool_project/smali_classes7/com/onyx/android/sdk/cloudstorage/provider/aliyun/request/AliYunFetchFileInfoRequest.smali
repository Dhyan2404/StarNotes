.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "provider",
        "",
        "b",
        "Ljava/lang/String;",
        "fileId",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDefaultDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->setDriveId(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->setFileId(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object p0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest$execute$1;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest$execute$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    move-result-object p0

    return-object p0
.end method
