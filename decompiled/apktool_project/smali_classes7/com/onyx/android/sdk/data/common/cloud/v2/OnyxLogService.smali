.class public interface abstract Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\u0008f\u0018\u00002\u00020\u0001J4\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J \u0010\n\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000c0\u000b0\u0003H\'\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;",
        "",
        "feedbacks",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "",
        "token",
        "type",
        "feedbacksParams",
        "Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;",
        "getEncryptionKey",
        "Lcom/onyx/android/sdk/data/common/data/ResponeData;",
        "",
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


# virtual methods
.method public abstract feedbacks(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "client-type"
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "feedbacks"
    .end annotation
.end method

.method public abstract getEncryptionKey()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/common/data/ResponeData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "encrypt/key"
    .end annotation
.end method
