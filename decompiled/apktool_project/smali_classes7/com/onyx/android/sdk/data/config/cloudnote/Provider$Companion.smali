.class public final Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u0016\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0010J\u0016\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0008J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0004J\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u0008J\u000e\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u0008J\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00080!J\u000e\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;",
        "",
        "()V",
        "DOC_ONLY",
        "",
        "NOTE_AND_DOC",
        "NOTE_ONLY",
        "defaultProvider",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "getDefaultProvider",
        "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "providerNameMap",
        "",
        "getProviderNameMap",
        "()Ljava/util/Map;",
        "getAccountIdFromPath",
        "",
        "path",
        "getNameByPath",
        "applicationContext",
        "Landroid/content/Context;",
        "getNameByProvider",
        "provider",
        "getNameResIdByProvider",
        "defaultValue",
        "getProviderByTitle",
        "title",
        "getProviderFromPath",
        "isFileInCloudStoragePath",
        "",
        "isThirdProvider",
        "notSupportFileInRoot",
        "notSupportMultiAccountProviders",
        "",
        "providerByName",
        "name",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccountIdFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getProviderFromPath(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->DROP_BOX:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    :goto_0
    return-object p0
.end method

.method public final getNameByPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getProviderFromPath(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getProviderNameMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final getNameResIdByProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;I)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getProviderNameMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getProviderByTitle(Landroid/content/Context;Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getProviderNameMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProviderFromPath(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->values()[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getProviderRootPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object p0
.end method

.method public final getProviderNameMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/EnumMap;

    const-class v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->onyx_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->evernote_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->DROP_BOX:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->drop_box_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->YNOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->ynote_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->google_drive_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->baidu_cloud_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->one_driver_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->NUT_STORE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->nut_store_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->WEBDAV:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->webdav_cloud_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->ali_cloud_drive_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->HUAWEI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->huawei_cloud_drive_async_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final isFileInCloudStoragePath(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->values()[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getProviderRootPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isThirdProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notSupportFileInRoot(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->NUT_STORE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notSupportMultiAccountProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const/4 v0, 0x0

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v1, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final providerByName(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->values()[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    if-nez p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->YNOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    :cond_2
    return-object p0
.end method
