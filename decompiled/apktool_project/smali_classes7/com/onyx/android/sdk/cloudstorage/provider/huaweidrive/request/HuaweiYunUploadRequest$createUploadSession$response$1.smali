.class final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest;->f()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;",
        "Lretrofit2/Call<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;",
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
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;",
        "service",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;",
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
.field final synthetic $length:J

.field final synthetic $mimeType:Ljava/lang/String;

.field final synthetic $sessionParam:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;->$sessionParam:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;

    iput-wide p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;->$length:J

    iput-object p4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;->$mimeType:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;->invoke(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;)Lretrofit2/Call;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "https://driveapis.cloud.huawei.com.cn/upload/drive/v1/files?uploadType=resume"

    .line 2
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;->$sessionParam:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;

    .line 3
    iget-wide v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;->$length:J

    .line 4
    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunUploadRequest$createUploadSession$response$1;->$mimeType:Ljava/lang/String;

    move-object v1, p1

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;->createUploadSession(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;JLjava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method
