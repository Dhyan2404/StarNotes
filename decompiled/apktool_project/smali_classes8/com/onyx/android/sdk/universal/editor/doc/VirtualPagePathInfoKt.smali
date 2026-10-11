.class public final Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVirtualPagePathInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualPagePathInfo.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1549#2:80\n1620#2,2:81\n1622#2:84\n1#3:83\n*S KotlinDebug\n*F\n+ 1 VirtualPagePathInfo.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt\n*L\n52#1:80\n52#1:81,2\n52#1:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0004*\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "toVirtualPagePathInfo",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;",
        "toVirtualPagePathInfoList",
        "",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;",
        "documentId",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVirtualPagePathInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualPagePathInfo.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1549#2:80\n1620#2,2:81\n1622#2:84\n1#3:83\n*S KotlinDebug\n*F\n+ 1 VirtualPagePathInfo.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt\n*L\n52#1:80\n52#1:81,2\n52#1:84\n*E\n"
    }
.end annotation


# direct methods
.method public static final toVirtualPagePathInfo(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/ContentPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ContentPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/common/path/ContentPaths;->contentRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final toVirtualPagePathInfoList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appDocDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;

    sget-object v2, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;->getRelativePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->absolutePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;->getRelativePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templateResAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt$toVirtualPagePathInfoList$1$absolutePath$2;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt$toVirtualPagePathInfoList$1$absolutePath$2;-><init>(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;)V

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_2
    new-instance v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
