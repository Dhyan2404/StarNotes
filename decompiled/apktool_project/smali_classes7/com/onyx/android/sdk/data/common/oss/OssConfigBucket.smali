.class public final Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u001b\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\u0008R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;",
        "",
        "()V",
        "bucketName",
        "",
        "endPoint",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "bucket",
        "(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V",
        "getBucketName",
        "()Ljava/lang/String;",
        "setBucketName",
        "(Ljava/lang/String;)V",
        "getEndPoint",
        "setEndPoint",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bucketName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private endPoint:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bucket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->bucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->bucketName:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->endPoint:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->endPoint:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->bucketName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->endPoint:Ljava/lang/String;

    return-void
.end method

.method public static final create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->Companion:Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBucketName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndPoint()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->endPoint:Ljava/lang/String;

    return-object p0
.end method

.method public final setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public final setEndPoint(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;->endPoint:Ljava/lang/String;

    return-void
.end method
