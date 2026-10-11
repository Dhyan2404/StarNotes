.class public interface abstract Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00040\u0003H\'J\u0016\u0010\n\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00040\u0003H\'J\u001a\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r0\u0003H\'J\u0016\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u0003H\'\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;",
        "",
        "createThemeOrder",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/data/common/data/ResponeData;",
        "Lcom/onyx/android/sdk/data/common/data/theme/ThemeOrderBean;",
        "orderBean",
        "Lcom/onyx/android/sdk/data/common/data/theme/ThemeCreateOrderBean;",
        "getThemeConfig",
        "Lcom/onyx/android/sdk/data/common/data/theme/ThemePaymentEnableBean;",
        "getThemeProductInfo",
        "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;",
        "getUsersTheme",
        "Lcom/onyx/android/sdk/data/account/bean/ResponseData;",
        "",
        "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;",
        "queryThemeOrder",
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
.method public abstract createThemeOrder(Lcom/onyx/android/sdk/data/common/data/theme/ThemeCreateOrderBean;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/common/data/theme/ThemeCreateOrderBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/data/theme/ThemeCreateOrderBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/common/data/ResponeData<",
            "Lcom/onyx/android/sdk/data/common/data/theme/ThemeOrderBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "themes/huaweiOrder"
    .end annotation
.end method

.method public abstract getThemeConfig()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/common/data/ResponeData<",
            "Lcom/onyx/android/sdk/data/common/data/theme/ThemePaymentEnableBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "config/theme"
    .end annotation
.end method

.method public abstract getThemeProductInfo()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/common/data/ResponeData<",
            "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "themes/huaweiProduct"
    .end annotation
.end method

.method public abstract getUsersTheme()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ResponseData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "themes"
    .end annotation
.end method

.method public abstract queryThemeOrder()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/common/data/ResponeData<",
            "Lcom/onyx/android/sdk/data/common/data/theme/ThemeOrderBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "themes/huaweiOrder"
    .end annotation
.end method
