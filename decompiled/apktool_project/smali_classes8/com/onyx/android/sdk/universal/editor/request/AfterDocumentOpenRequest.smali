.class public final Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0008H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0012\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002R$\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;",
        "virtualDocModel",
        "h",
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "boxManager",
        "i",
        "model",
        "j",
        "k",
        "",
        "coverPageId",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;",
        "getVirtualDocOpenResultInfo",
        "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;",
        "setVirtualDocOpenResultInfo",
        "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V",
        "virtualDocOpenResultInfo",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->g(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->getVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->h(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "geo_layout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFileSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getImageAttr()Lcom/onyx/android/sdk/genericshape/ImageAttr;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/ImageAttr;->getRelativePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {v1, p1, p0}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docTemplateResAbsolutePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    sget-object v2, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docTemplateResDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->onDocOpened()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getVirtualDocOpenResultInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->setDocOptions(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->initBoxManagerBySettings(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setViewport(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->boxInfoSnapshot()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setData(Ljava/util/List;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getViewportId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateCurrentMinScale(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getViewportId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->j(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->i(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V

    :goto_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getCoverPageId()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    move-object p2, v2

    :goto_4
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setAlignCenterAfterOpen(Z)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/DocumentState;->OPENED:Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->setDocumentState(Lcom/onyx/android/sdk/universal/editor/config/DocumentState;)V

    invoke-static {p1, v2, v3, v2}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postVirtualDocViewInfo$default(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postDocumentState(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentBoxId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updatePageIdOnInit(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->k()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->alignCenter()V

    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V
    .locals 8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->getAlignCenterAfterOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->k()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getViewportId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;FFILjava/lang/Object;)Z

    move-result p0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->alignCenter()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getActualScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    const-string v2, "scaleRange(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->initScaleWithinRange(FLorg/apache/commons/lang3/Range;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getViewportId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getOffsetX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getOffsetY()F

    move-result p1

    invoke-virtual {v1, p0, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(Ljava/lang/String;FF)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "restoreViewport fail, auto align center"

    invoke-virtual {p0, p1, v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->alignCenter()V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->getWorkFeature(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/work/WorkFeature;->supportAutoScaleToViewport()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scaleToViewportWithAspectScaleCheck(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->initScale(F)V

    :goto_0
    return-void
.end method

.method public final setVirtualDocOpenResultInfo(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;->f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    return-void
.end method
