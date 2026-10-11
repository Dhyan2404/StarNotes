.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;
.super Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u0016J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u0012\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0002R\u001f\u0010\u0018\u001a\n \u0014*\u0004\u0018\u00010\u00130\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "providerContext",
        "",
        "initProvider",
        "",
        "getWebDavSearchUrl",
        "logOut",
        "keyword",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;",
        "createSearchBuilder",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
        "getEnableFeatures",
        "webDavUrl",
        "a",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "Ljava/util/regex/Pattern;",
        "getDAV_PATTERN",
        "()Ljava/util/regex/Pattern;",
        "DAV_PATTERN",
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
.field public final a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;-><init>()V

    const-string v0, "^http[s]?://.+/dav/.*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;->a:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->WEBDAV:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    const-string v3, "separator"

    if-eqz v2, :cond_2

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v2, "matcher(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    const-string p0, "/dav/"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    if-eqz v0, :cond_6

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    return-object p0
.end method

.method public createSearchBuilder(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->createSearchBuilder(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/SearchBuilder;->setBody(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getDAV_PATTERN()Ljava/util/regex/Pattern;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;->a:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public getEnableFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderAccountModel()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Note:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    filled-new-array {p0, v0}, [Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderAccountModel()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getEnableFeatures()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getWebDavSearchUrl()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavSearchUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "/dav/"

    invoke-static {p0, v2, v6, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "/dav/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method public initProvider(Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->initProvider(Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "http://cloud.o-in.me:9888/remote.php/dav/files/webdav"

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;->setWebDavURL(Ljava/lang/String;)V

    return-void
.end method

.method public logOut(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;->setWebDavURL(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->logOut(Landroid/content/Context;)V

    return-void
.end method
