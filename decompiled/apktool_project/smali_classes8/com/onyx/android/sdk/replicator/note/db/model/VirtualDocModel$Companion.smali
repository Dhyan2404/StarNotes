.class public final Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005J\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;",
        "",
        "()V",
        "loadContentResourceRelativePath",
        "",
        "Lcom/onyx/android/sdk/data/common/data/template/TemplateData;",
        "updateContentResourceRelativePath",
        "",
        "relativePath",
        "sdk-replicator_overseasRelease"
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
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadContentResourceRelativePath(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/data/template/TemplateData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "import_pdf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentRelativePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "geo_layout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->INSTANCE:Lcom/onyx/android/sdk/base/utils/AppFilePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentRelativePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->filesDirAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->isFile(Ljava/nio/file/Path;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p0}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFileSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getImageAttr()Lcom/onyx/android/sdk/genericshape/ImageAttr;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/ImageAttr;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final updateContentResourceRelativePath(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/common/data/template/TemplateData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "relativePath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "import_pdf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->setContentRelativePath(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "geo_layout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->INSTANCE:Lcom/onyx/android/sdk/base/utils/AppFilePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;->getContentRelativePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->filesDirAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->isFile(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFileSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getImageAttr()Lcom/onyx/android/sdk/genericshape/ImageAttr;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/genericshape/ImageAttr;->setRelativePath(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    const/4 p2, 0x2

    invoke-static {p0, p1, v1, p2, v1}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    nop

    :cond_4
    :goto_2
    return-void
.end method
