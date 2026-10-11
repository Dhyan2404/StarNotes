.class public interface abstract Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0008\u0008\u0001\u0010\t\u001a\u00020\nH\'J\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u000eH\'J\u0018\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0012H\'\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;",
        "",
        "docConvertASync",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;",
        "requestBody",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;",
        "docConvertV2",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;",
        "convertBean",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;",
        "queryDocConvertResult",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/QueryConvertResultResponse;",
        "ticket",
        "",
        "queryDocConvertResultV2",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;",
        "queryBean",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;",
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
.method public abstract docConvertASync(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "converter/convertAsync/"
    .end annotation
.end method

.method public abstract docConvertV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "converter/startCloudConvertTask/"
    .end annotation
.end method

.method public abstract queryDocConvertResult(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "ticket"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/QueryConvertResultResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "converter/query"
    .end annotation
.end method

.method public abstract queryDocConvertResultV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "converter/queryCloudConvertTask/"
    .end annotation
.end method
