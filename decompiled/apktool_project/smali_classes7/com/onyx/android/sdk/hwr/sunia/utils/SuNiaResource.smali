.class public final Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuNiaResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResource.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1747#2,3:94\n*S KotlinDebug\n*F\n+ 1 SuNiaResource.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource\n*L\n91#1:94,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010!\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0008\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "resource",
        "",
        "getResourceZipPath",
        "getResourceUnzipPath",
        "getResourceInstalledKey",
        "getDefaultResourceInstalledKey",
        "",
        "isResourceInstalled",
        "",
        "setDefaultResourceInstalled",
        "installed",
        "setResourceInstalled",
        "isDefaultResourceInstalled",
        "addDownloadingResource",
        "removeDownloadingResource",
        "isDownloading",
        "a",
        "Ljava/lang/String;",
        "KEY_RESOURCE_INSTALLED",
        "b",
        "KEY_DEFAULT_RESOURCE_INSTALLED",
        "",
        "c",
        "Ljava/util/List;",
        "downloadingResources",
        "<init>",
        "()V",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSuNiaResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResource.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1747#2,3:94\n*S KotlinDebug\n*F\n+ 1 SuNiaResource.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource\n*L\n91#1:94,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "resource_installed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "default_resource_installed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic setResourceInstalled$default(Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->setResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Z)V

    return-void
.end method


# virtual methods
.method public final addDownloadingResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getDefaultResourceInstalledKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "1.0"

    const-string v0, "default_resource_installed"

    const-string v1, "SuNia"

    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "/"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceInstalledKey(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object p0

    const-string p1, "resource_installed"

    const-string v0, "SuNia"

    const-string v1, "1.0"

    filled-new-array {v0, v1, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "/"

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceUnzipPath(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PRIVATE_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    const-string v3, "hwr"

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getDirectory(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getEngineType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "resolve(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getResourceZipPath(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zip"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->concatFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PRIVATE_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    const-string v3, "hwr"

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getDirectory(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "resolve(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isDefaultResourceInstalled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->getDefaultResourceInstalledKey()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isDownloading(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->c:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->getINTERNAL_LANG_LIST()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->isDefaultResourceInstalled()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->getResourceInstalledKey(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final removeDownloadingResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->c:Ljava/util/List;

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource$removeDownloadingResource$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource$removeDownloadingResource$1;-><init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public final setDefaultResourceInstalled()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->getDefaultResourceInstalledKey()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final setResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->getResourceInstalledKey(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
