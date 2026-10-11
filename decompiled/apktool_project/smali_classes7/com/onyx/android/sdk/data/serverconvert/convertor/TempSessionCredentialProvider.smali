.class public final Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;
.super Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;",
        "Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;",
        "tmpSecretId",
        "",
        "tmpSecretKey",
        "sessionToken",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "fetchNewCredentials",
        "Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;",
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
.field private final sessionToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpSecretId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpSecretKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tmpSecretId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tmpSecretKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qcloud/core/auth/BasicLifecycleCredentialProvider;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;->tmpSecretId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;->tmpSecretKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;->sessionToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fetchNewCredentials()Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    const/16 v0, 0x3c

    int-to-long v0, v0

    mul-long v2, v8, v0

    mul-long v10, v2, v0

    new-instance v0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    iget-object v5, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;->tmpSecretId:Ljava/lang/String;

    iget-object v6, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;->tmpSecretKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TempSessionCredentialProvider;->sessionToken:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method
