.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;
.super Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R*\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;",
        "",
        "f",
        "Ljava/lang/String;",
        "getFileId",
        "()Ljava/lang/String;",
        "setFileId",
        "(Ljava/lang/String;)V",
        "fileId",
        "g",
        "getUploadId",
        "setUploadId",
        "uploadId",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;",
        "h",
        "Ljava/util/List;",
        "getPartInfoList",
        "()Ljava/util/List;",
        "setPartInfoList",
        "(Ljava/util/List;)V",
        "partInfoList",
        "<init>",
        "()V",
        "Part",
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
.field public f:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "file_id"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "upload_id"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "part_info_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFileId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getPartInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->h:Ljava/util/List;

    return-object p0
.end method

.method public final getUploadId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->f:Ljava/lang/String;

    return-void
.end method

.method public final setPartInfoList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->h:Ljava/util/List;

    return-void
.end method

.method public final setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;->g:Ljava/lang/String;

    return-void
.end method
