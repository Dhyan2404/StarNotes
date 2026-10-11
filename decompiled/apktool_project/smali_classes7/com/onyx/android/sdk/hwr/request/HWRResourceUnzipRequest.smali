.class public final Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;
.super Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0017\u0010\n\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;",
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;",
        "",
        "execute",
        "()Ljava/lang/Boolean;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "b",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "getResource",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "resource",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final b:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->Companion:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;->getEmpty()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUnzipFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUnzipFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->decompressV2(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getZipFile()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;->execute()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getResource()Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    return-object p0
.end method
