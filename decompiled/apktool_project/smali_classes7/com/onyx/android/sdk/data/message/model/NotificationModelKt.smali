.class public final Lcom/onyx/android/sdk/data/message/model/NotificationModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "canShow",
        "",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "isOutsideTimeBound",
        "sdk-data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final canShow(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Z
    .locals 7
    .param p0    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getVersion()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->getAppVersionCode()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModelKt;->isOutsideTimeBound(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getCacheable()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static final isOutsideTimeBound(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Z
    .locals 8
    .param p0    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getEffectiveDate()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getEffectiveDate()J

    move-result-wide v6

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getExpiredDate()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getExpiredDate()J

    move-result-wide v4

    cmp-long p0, v0, v4

    if-lez p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
