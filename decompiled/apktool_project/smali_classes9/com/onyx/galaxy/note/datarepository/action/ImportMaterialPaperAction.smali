.class public final Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;
.super Lcom/onyx/galaxy/note/datarepository/action/BaseMaterialAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/datarepository/action/BaseMaterialAction<",
        "Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportMaterialPaperAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportMaterialPaperAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1549#2:113\n1620#2,3:114\n*S KotlinDebug\n*F\n+ 1 ImportMaterialPaperAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction\n*L\n72#1:113\n72#1:114,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;",
        "Lcom/onyx/galaxy/note/datarepository/action/BaseMaterialAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "",
        "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
        "list",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "l",
        "bean",
        "n",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "h",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "getLibrary",
        "()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "library",
        "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
        "i",
        "Ljava/util/List;",
        "getTemplateFiles",
        "()Ljava/util/List;",
        "templateFiles",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;Ljava/util/List;)V",
        "note_overseasRelease"
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
        "SMAP\nImportMaterialPaperAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportMaterialPaperAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1549#2:113\n1620#2,3:114\n*S KotlinDebug\n*F\n+ 1 ImportMaterialPaperAction.kt\ncom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction\n*L\n72#1:113\n72#1:114,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "library"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateFiles"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/BaseMaterialAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    iput-object p3, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createMaterialPaper(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveCategoryModel(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$a;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$b;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$c;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$d;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$e;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLibrary()Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    return-object p0
.end method

.method public final getTemplateFiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->i:Ljava/util/List;

    return-object p0
.end method

.method public final l(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->n(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final m()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->setSource(I)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getGroupName()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;->setTitleList(Ljava/util/List;)V

    filled-new-array {v1}, [Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateCategoryList$default(Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;Ljava/util/List;ZILjava/lang/Object;)J

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->removeTemplateByCategory(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setSource(I)V

    sget-object v5, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templateResRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setRelativePath(Ljava/lang/String;)V

    sget-object v5, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;

    sget-object v6, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->getResourceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setResourceType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getThumbnailRelativePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setThumbnailRelativePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setResRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getThumbnailRelativePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/datarepository/action/BaseMaterialAction;->loadResourceColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setFillColor(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getTitleList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTitleList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialPaperAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setCategoryId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setContentPageId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setResourceIdList(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSource(I)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->getOrientation(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setOrientation(I)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTemplateResourceWrapper(Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;->generateResourceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setTemplateUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p0

    filled-new-array {v2}, [Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setResourceList(Ljava/util/List;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getResourceList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateResourceList$default(Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;Ljava/util/List;ZILjava/lang/Object;)J

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplate(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-object v0
.end method
