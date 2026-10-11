.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R \u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;",
        "Ljava/io/Serializable;",
        "()V",
        "contentType",
        "",
        "getContentType",
        "()Ljava/lang/String;",
        "setContentType",
        "(Ljava/lang/String;)V",
        "etag",
        "getEtag",
        "setEtag",
        "partNumber",
        "",
        "getPartNumber",
        "()I",
        "setPartNumber",
        "(I)V",
        "partSize",
        "",
        "getPartSize",
        "()J",
        "setPartSize",
        "(J)V",
        "uploadUrl",
        "getUploadUrl",
        "setUploadUrl",
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


# instance fields
.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "content_type"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private partNumber:I
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "part_number"
        }
    .end annotation
.end field

.field private partSize:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "part_size"
        }
    .end annotation
.end field

.field private uploadUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "upload_url"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public final getPartNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->partNumber:I

    return p0
.end method

.method public final getPartSize()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->partSize:J

    return-wide v0
.end method

.method public final getUploadUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->uploadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->contentType:Ljava/lang/String;

    return-void
.end method

.method public final setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->etag:Ljava/lang/String;

    return-void
.end method

.method public final setPartNumber(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->partNumber:I

    return-void
.end method

.method public final setPartSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->partSize:J

    return-void
.end method

.method public final setUploadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;->uploadUrl:Ljava/lang/String;

    return-void
.end method
