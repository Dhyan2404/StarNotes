.class public final Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveFilesAsCustomTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveFilesAsCustomTemplateAction.kt\ncom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,199:1\n1#2:200\n1855#3,2:201\n*S KotlinDebug\n*F\n+ 1 SaveFilesAsCustomTemplateAction.kt\ncom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction\n*L\n197#1:201,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010\u0012\u0006\u0010!\u001a\u00020\u0008\u00a2\u0006\u0004\u0008)\u0010*J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\"\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0008H\u0002J(\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u00022\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\"\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00022\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0013H\u0002J\u001c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0018\u001a\u00020\u0011H\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002R\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001d\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00110\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001d\u001a\u0004\u0008$\u0010%\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
        "fileBean",
        "C",
        "",
        "",
        "u",
        "",
        "pageIndex",
        "filePassword",
        "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;",
        "s",
        "map",
        "",
        "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
        "x",
        "Lkotlin/Pair;",
        "data",
        "w",
        "templateImportBeanList",
        "A",
        "templateImportBean",
        "z",
        "",
        "t",
        "h",
        "Ljava/util/List;",
        "list",
        "i",
        "Ljava/lang/String;",
        "importDirPath",
        "",
        "j",
        "getBeanList",
        "()Ljava/util/List;",
        "beanList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V",
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
        "SMAP\nSaveFilesAsCustomTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveFilesAsCustomTemplateAction.kt\ncom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,199:1\n1#2:200\n1855#3,2:201\n*S KotlinDebug\n*F\n+ 1 SaveFilesAsCustomTemplateAction.kt\ncom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction\n*L\n197#1:201,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/List;
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

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importDirPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->h:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->i:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->j:Ljava/util/List;

    return-void
.end method

.method public static final B(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final synthetic access$createReaderExportArgs(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;ILjava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->s(ILjava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exportPDFPagesToPDFFiles(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->u(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadReaderPageInfo(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->w(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadReaderPageInfoList(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->x(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadThumbnail(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->z(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadThumbnailList(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->A(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveUriToFile(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->C(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->r(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->v(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->q(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->y(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->B(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static final q(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->t()V

    return-void
.end method

.method public static final v(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final y(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final A(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$y;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$y;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$z;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$z;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/q0m;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/q0m;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a0;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a0;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$b0;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$b0;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final C(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;->setFileName(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToIOSequence(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$c0;

    invoke-direct {v1, p1, v0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$c0;-><init>(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$a;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$e;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/s0m;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/s0m;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$f;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$f;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/t0m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t0m;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public final s(ILjava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->appCurUserNoteTemplateResPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->setOutputPath(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->setPages([I)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->setSourceFilePassword(Ljava/lang/String;)V

    return-object p0
.end method

.method public final t()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->h:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getExportFilePages()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getSaveFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFileExt(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final u(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getExportFilePages()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getSaveFilePath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getPageIndexList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    sget-object v4, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$h;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$h;

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$i;

    invoke-direct {v4, p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$i;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;

    invoke-direct {v4, p1, p0, v1, v0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;-><init>(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/u0m;

    invoke-direct {p1, v2}, Lcom/sunia/HTREnginev2/u0m;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$k;

    invoke-direct {p1, v2}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$k;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$l;

    invoke-direct {p1, v1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$l;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getSaveFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;-><init>()V

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/blankj/utilcode/util/ImageUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "map(...)"

    const-string v4, ""

    if-eqz v2, :cond_8

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v5, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getMAX_CUSTOM_PAGE_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    move-object p1, v4

    :cond_3
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setTitle(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getTitleList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_5
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setTitleList(Ljava/util/List;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v4, p1

    :cond_7
    :goto_1
    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToIOSequence(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$m;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$m;-><init>(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_8
    new-instance v2, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    :cond_9
    move-object p1, v4

    :cond_a
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setTitle(Ljava/lang/String;)V

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getTitleList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_c

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_c
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setTitleList(Ljava/util/List;)V

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    move-object v4, p1

    :cond_e
    :goto_2
    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$n;

    invoke-direct {v1, p0, v2}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$n;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$o;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$o;-><init>(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$p;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$p;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$q;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$q;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$r;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$r;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/r0m;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/r0m;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$s;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$s;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$t;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$t;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_PAGE_THUMBNAIL_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getThumbnailSize(Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v6

    new-instance v0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->i:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const-string v5, "get(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->thumbnail(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v4, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v2}, Lkotlin/io/path/PathsKt;->createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templateResRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;->setThumbnailRelativePath(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ImageUtils;->isImage(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "map(...)"

    if-eqz p1, :cond_0

    new-instance p1, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;-><init>(Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToIOSequence(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$u;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$u;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$v;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$v;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v3

    invoke-direct {p1, v3, v0}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$w;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$w;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$x;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$x;-><init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
