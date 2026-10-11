.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File$Companion;",
        "",
        "()V",
        "FOLDER",
        "",
        "getMediaCategory",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;",
        "file",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMediaCategory(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;)Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Unknown:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getFullFileSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isImageFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Image:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getFullFileSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Video:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getFullFileSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Audio:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getFullFileSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isOffice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "text/plain"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    :cond_4
    return-object p0
.end method
