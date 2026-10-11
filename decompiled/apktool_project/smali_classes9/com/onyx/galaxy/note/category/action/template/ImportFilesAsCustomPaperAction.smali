.class public final Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\"\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0006H\u0002R(\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
        "list",
        "m",
        "bean",
        "o",
        "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
        "h",
        "Ljava/util/List;",
        "getList",
        "()Ljava/util/List;",
        "setList",
        "(Ljava/util/List;)V",
        "Lkotlin/Function1;",
        "",
        "",
        "i",
        "Lkotlin/jvm/functions/Function1;",
        "checkDuplicate",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
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
.field public h:Ljava/util/List;
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

.field public final i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->h:Ljava/util/List;

    sget-object p1, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$checkDuplicate$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$checkDuplicate$1;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$createCustomPaper(Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCheckDuplicate$p(Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->i:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$saveModel(Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->o(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->n(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static final n(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->h:Ljava/util/List;

    sget-object v3, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    sget-object v4, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->appUserNoteTemplateResDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public final m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$b;->e:Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$b;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$d;

    invoke-direct {v2, v0, p0}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$d;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/sii;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/sii;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$e;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$e;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$f;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$f;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .locals 8

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/4 v4, 0x1

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

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->getResourceType(Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v5, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getThumbnailRelativePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->loadResourceColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setFillColor(I)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTitle(Ljava/lang/String;)V

    const-string v1, "CUSTOM"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setCategoryId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setContentPageId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setResourceIdList(Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSource(I)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->getOrientation(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setOrientation(I)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTemplateResourceWrapper(Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper$Companion;->generateResourceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setTemplateUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    filled-new-array {v2}, [Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setResourceList(Ljava/util/List;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getTemplateProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplate(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getResourceList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->saveTemplateResourceList$default(Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;Ljava/util/List;ZILjava/lang/Object;)J

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ImportCustomPaperEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/ImportCustomPaperEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->h:Ljava/util/List;

    return-void
.end method
