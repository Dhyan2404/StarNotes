.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo$Companion;",
        "",
        "()V",
        "getMediaCategory",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;",
        "categoryName",
        "",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMediaCategory(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory$Companion;->safeValueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Unknown:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    :cond_0
    return-object p0
.end method
