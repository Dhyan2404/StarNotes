.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008&\u0010\'R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\u0008R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0011\u0010#\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0016R\u0011\u0010%\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getBaiduName",
        "()Ljava/lang/String;",
        "setBaiduName",
        "(Ljava/lang/String;)V",
        "baiduName",
        "b",
        "getNetdiskName",
        "setNetdiskName",
        "netdiskName",
        "c",
        "getAvatarUrl",
        "setAvatarUrl",
        "avatarUrl",
        "",
        "d",
        "I",
        "getVipType",
        "()I",
        "setVipType",
        "(I)V",
        "vipType",
        "",
        "e",
        "J",
        "getUk",
        "()J",
        "setUk",
        "(J)V",
        "uk",
        "getLimitUploadSizeOnce",
        "limitUploadSizeOnce",
        "getLimitUploadFileSize",
        "limitUploadFileSize",
        "<init>",
        "()V",
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
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "baidu_name"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "netdisk_name"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "avatar_url"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "vip_type"
        }
    .end annotation
.end field

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAvatarUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getBaiduName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getLimitUploadFileSize()J
    .locals 5

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->d:I

    const/4 v0, 0x4

    const-wide/32 v1, 0x40000000

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    :cond_0
    int-to-long v3, v0

    :goto_0
    mul-long/2addr v3, v1

    return-wide v3

    :cond_1
    const/16 p0, 0x14

    :goto_1
    int-to-long v3, p0

    goto :goto_0

    :cond_2
    const/16 p0, 0xa

    goto :goto_1
.end method

.method public final getLimitUploadSizeOnce()I
    .locals 0

    const/high16 p0, 0x400000

    return p0
.end method

.method public final getNetdiskName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getUk()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->e:J

    return-wide v0
.end method

.method public final getVipType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->d:I

    return p0
.end method

.method public final setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->c:Ljava/lang/String;

    return-void
.end method

.method public final setBaiduName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->a:Ljava/lang/String;

    return-void
.end method

.method public final setNetdiskName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->b:Ljava/lang/String;

    return-void
.end method

.method public final setUk(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->e:J

    return-void
.end method

.method public final setVipType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;->d:I

    return-void
.end method
