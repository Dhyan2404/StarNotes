.class public final Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "appContext",
        "Landroid/content/Context;",
        "rxOSSManager",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "convertEntry",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V",
        "execute",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxOSSManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "convertEntry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncUploadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setOssUploadKey(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->rxOSSManager:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getOssUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setOssUploadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :catch_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload failed! path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    .line 9
    :goto_2
    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/request/UploadDocToOssRequest;->execute()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    move-result-object p0

    return-object p0
.end method
