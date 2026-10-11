.class public final Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontModelExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontModelExt.kt\ncom/onyx/android/sdk/replicator/note/db/model/FontModelExt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\rJ\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000b*\u0008\u0012\u0004\u0012\u00020\u000b0\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\n\u0010\u0010\u001a\u00020\u0004*\u00020\u000bJ\n\u0010\u0011\u001a\u00020\u0004*\u00020\u000bJ\n\u0010\u0012\u001a\u00020\u0004*\u00020\u000bJ\u0012\u0010\u0013\u001a\n \u0014*\u0004\u0018\u00010\u00040\u0004*\u00020\u000bJ\u0014\u0010\u0015\u001a\u00020\u0004*\u00020\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004J\n\u0010\u0017\u001a\u00020\u0007*\u00020\u000bJ\n\u0010\u0018\u001a\u00020\u0019*\u00020\u000bJ\n\u0010\u001a\u001a\u00020\u0019*\u00020\u000bJ\n\u0010\u001b\u001a\u00020\u0019*\u00020\u000bJ\n\u0010\u001c\u001a\u00020\u0019*\u00020\u000bJ\n\u0010\u001d\u001a\u00020\u0019*\u00020\u000bJ\u0015\u0010\u001e\u001a\u00020\u0007*\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u000bH\u0086\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;",
        "",
        "()V",
        "FONT_THUMBNAIL_DIR",
        "",
        "ID_DEFAULT_FONT",
        "TYPE_DEFAULT",
        "",
        "TYPE_LOCAL",
        "TYPE_OFFICIAL",
        "createDefault",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "getTypeOrders",
        "",
        "findByDisplayName",
        "name",
        "getCachedInkContentThumbnailFile",
        "getCachedInkTitleThumbnailFile",
        "getCachedPreviewFile",
        "getDisplayName",
        "kotlin.jvm.PlatformType",
        "getSavePath",
        "dir",
        "getSourceType",
        "isDefaultResource",
        "",
        "isDownloaded",
        "isDownloading",
        "isLocalResource",
        "isThumbnailCached",
        "minus",
        "other",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFontModelExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontModelExt.kt\ncom/onyx/android/sdk/replicator/note/db/model/FontModelExt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
    }
.end annotation


# static fields
.field public static final FONT_THUMBNAIL_DIR:Ljava/lang/String; = "FontThumbnail"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID_DEFAULT_FONT:Ljava/lang/String; = "default"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_LOCAL:I = 0x0

.field public static final TYPE_OFFICIAL:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/data/common/path/AppPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/AppPaths;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/path/AppPaths;->appFontDir()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createDefault()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/replicator/R$string;->default_font:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setName(Ljava/lang/String;)V

    return-object p0
.end method

.method public final findByDisplayName(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getDisplayName(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    return-object p1
.end method

.method public final getCachedInkContentThumbnailFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PRIVATE_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    const-string v3, "FontThumbnail"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-ink-content"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png"

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getFile(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCachedInkTitleThumbnailFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PRIVATE_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    const-string v3, "FontThumbnail"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-ink-title"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png"

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getFile(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCachedPreviewFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PRIVATE_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    const-string v3, "FontThumbnail"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png"

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getFile(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayName(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dir"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getFormat()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt$getSavePath$ext$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt$getSavePath$ext$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->ifEmpty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSourceType(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isDefaultResource(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isLocalResource(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public final getTypeOrders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isDefaultResource(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDownloaded(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isDownloading(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getState()B

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLocalResource(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isThumbnailCached(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getCachedPreviewFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final minus(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSourceType(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSourceType(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getTypeOrders()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
