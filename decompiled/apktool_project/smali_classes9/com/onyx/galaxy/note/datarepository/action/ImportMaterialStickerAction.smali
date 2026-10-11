.class public final Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0018\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0018\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
        "template",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "o",
        "",
        "tempPath",
        "l",
        "tempId",
        "tempName",
        "tempFormat",
        "n",
        "sticker",
        "p",
        "q",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "h",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "library",
        "",
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

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    iput-object p3, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$copyToTempPath(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Lcom/onyx/galaxy/note/category/data/TemplateFileBean;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->l(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$ensureStickerCategoryModel(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->m()V

    return-void
.end method

.method public static final synthetic access$generateStickerModel(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$importSticker(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->o(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$moveToCachePath(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->p(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveStickerToDatabase(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->q(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$a;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$b;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$c;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "concatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$d;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->i:Ljava/util/List;

    return-object p0
.end method

.method public final l(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)J

    return-void
.end method

.method public final m()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;-><init>()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getGroupName()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setTitleList(Ljava/util/List;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setType(I)V

    const-string v2, "category_type_materials"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadStickerByCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteRelationByStickerId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getAttachments()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$ensureStickerCategoryModel$1;

    invoke-direct {v5, v3}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$ensureStickerCategoryModel$1;-><init>(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->deleteSticker(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->addCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;-><init>()V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;->setType(I)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModelKt;->getSavedFile(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;->setImageUrl(Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->getLocalCacheDir()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v4, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$f;

    invoke-direct {v4, p0, v3}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$f;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v4, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$g;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$h;

    invoke-direct {v0, p0, v3}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$h;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction$i;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 2

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModelKt;->getSavedFile(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->delete(Ljava/io/File;)Ljava/io/File;

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lonyx/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    return-object p1
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialStickerAction;->h:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->addSticker(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V

    return-object p1
.end method
