.class public final Lcom/onyx/android/sdk/filepicker/QueryDocAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/util/HashMap<",
        "Lcom/onyx/android/sdk/filepicker/DocumentType;",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryDocAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryDocAction.kt\ncom/onyx/android/sdk/filepicker/QueryDocAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Cursor.kt\nandroidx/core/database/CursorKt\n*L\n1#1,170:1\n1855#2,2:171\n766#2:173\n857#2,2:174\n766#2:176\n857#2,2:177\n112#3:179\n*S KotlinDebug\n*F\n+ 1 QueryDocAction.kt\ncom/onyx/android/sdk/filepicker/QueryDocAction\n*L\n54#1:171,2\n133#1:173\n133#1:174,2\n137#1:176\n137#1:177,2\n168#1:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u000020\u0012,\u0012*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004`\u00060\u0001BC\u0012\u0006\u0010&\u001a\u00020!\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\'\u0012\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0004\u0012\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020100\u0012\u0006\u00108\u001a\u000205\u00a2\u0006\u0004\u00089\u0010:J6\u0010\u0008\u001a0\u0012,\u0012*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004`\u00060\u0007H\u0014J\u0008\u0010\n\u001a\u00020\tH\u0002J0\u0010\u000b\u001a*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004`\u0006H\u0002J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\\\u0010\u0014\u001a*\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004`\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00042\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eH\u0002J*\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0015j\u0008\u0012\u0004\u0012\u00020\u0003`\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u0018H\u0002J\u001a\u0010 \u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u0018H\u0002R\u0017\u0010&\u001a\u00020!8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u0019\u0010,\u001a\u0004\u0018\u00010\'8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u001a\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R \u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u000201008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u0006;"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/QueryDocAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Ljava/util/HashMap;",
        "Lcom/onyx/android/sdk/filepicker/DocumentType;",
        "",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "Lkotlin/collections/HashMap;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "t",
        "s",
        "Landroid/database/Cursor;",
        "data",
        "",
        "o",
        "documentTypes",
        "Ljava/util/Comparator;",
        "comparator",
        "documents",
        "n",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "types",
        "",
        "path",
        "p",
        "string",
        "",
        "r",
        "cursor",
        "columnName",
        "q",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "getActivityContext",
        "()Landroid/content/Context;",
        "activityContext",
        "Ljava/io/File;",
        "f",
        "Ljava/io/File;",
        "getPickerFile",
        "()Ljava/io/File;",
        "pickerFile",
        "g",
        "Ljava/util/List;",
        "selectDocumentTypes",
        "",
        "",
        "h",
        "Ljava/util/Map;",
        "docFilterSizeMap",
        "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
        "i",
        "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
        "sortType",
        "<init>",
        "(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Lcom/onyx/android/sdk/filepicker/sort/SortType;)V",
        "sdk-imagepicker_overseasRelease"
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
        "SMAP\nQueryDocAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryDocAction.kt\ncom/onyx/android/sdk/filepicker/QueryDocAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Cursor.kt\nandroidx/core/database/CursorKt\n*L\n1#1,170:1\n1855#2,2:171\n766#2:173\n857#2,2:174\n766#2:176\n857#2,2:177\n112#3:179\n*S KotlinDebug\n*F\n+ 1 QueryDocAction.kt\ncom/onyx/android/sdk/filepicker/QueryDocAction\n*L\n54#1:171,2\n133#1:173\n133#1:174,2\n137#1:176\n137#1:177,2\n168#1:179\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/filepicker/sort/SortType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Lcom/onyx/android/sdk/filepicker/sort/SortType;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/filepicker/sort/SortType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/onyx/android/sdk/filepicker/sort/SortType;",
            ")V"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectDocumentTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docFilterSizeMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->f:Ljava/io/File;

    iput-object p3, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->g:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->h:Ljava/util/Map;

    iput-object p5, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->i:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    return-void
.end method

.method public static final synthetic access$queryDocs(Lcom/onyx/android/sdk/filepicker/QueryDocAction;)Ljava/util/HashMap;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->s()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->m(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 1

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/HashMap<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    iget-object v1, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setDialogType(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/filepicker/QueryDocAction$a;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction$a;-><init>(Lcom/onyx/android/sdk/filepicker/QueryDocAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/lal;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/lal;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getActivityContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->e:Landroid/content/Context;

    return-object p0
.end method

.method public final getPickerFile()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->f:Ljava/io/File;

    return-object p0
.end method

.method public final n(Ljava/util/List;Ljava/util/Comparator;Ljava/util/List;)Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/filepicker/DocumentType;

    move-object/from16 v5, p3

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "."

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "this as java.lang.String).substring(startIndex)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lcom/onyx/android/sdk/filepicker/FilePickerUtils;->INSTANCE:Lcom/onyx/android/sdk/filepicker/FilePickerUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getExtensions()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v13, v10}, Lcom/onyx/android/sdk/filepicker/FilePickerUtils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getExtensions()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move v8, v9

    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    iget-object v11, v0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->h:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getPath()Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->e:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "getApplicationContext(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileSize(Landroid/net/Uri;Landroid/content/Context;)J

    move-result-wide v10

    iget-object v12, v0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->h:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    goto :goto_3

    :cond_5
    move v10, v8

    goto :goto_4

    :cond_6
    :goto_3
    move v10, v9

    :goto_4
    if-eqz v10, :cond_4

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    :cond_8
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-object v2
.end method

.method public final o(Landroid/database/Cursor;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "filter doc data start"

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v0, "_data"

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->q(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocTypes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->p(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/onyx/android/sdk/filepicker/DocumentType;

    move-result-object v15

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "external"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const-string v7, "withAppendedId(...)"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v15, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v14, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x38

    const/4 v0, 0x0

    move-object v4, v14

    move-object v12, v15

    move-object/from16 v16, v3

    move-object v3, v14

    move-object v14, v0

    :try_start_1
    invoke-direct/range {v4 .. v14}, Lcom/onyx/android/sdk/filepicker/DocumentBean;-><init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/filepicker/DocumentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v15}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setDocumentType(Lcom/onyx/android/sdk/filepicker/DocumentType;)V

    const-string v0, "mime_type"

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->q(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, ""

    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setMimeType(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setMimeType(Ljava/lang/String;)V

    :goto_1
    const-string v0, "_size"

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->q(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v4

    :cond_2
    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setSize(Ljava/lang/String;)V

    const-string v0, "date_added"

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->q(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setTime(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v4, v16

    :try_start_3
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-class v3, Lcom/onyx/android/sdk/filepicker/QueryDocAction;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query doc error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_4
    move-object v3, v4

    goto/16 :goto_0

    :cond_5
    move-object v4, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter doc data end! data size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doc size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    return-object v4
.end method

.method public final p(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/onyx/android/sdk/filepicker/DocumentType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/onyx/android/sdk/filepicker/DocumentType;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ALL"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getExtensions()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->r(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-static {p2, v6, v7}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/filepicker/DocumentType;

    return-object p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 1

    new-instance p0, Lkotlin/text/Regex;

    const-string v0, ".*\\..*"

    invoke-direct {p0, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final s()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->t()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    sget-object v3, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getSupportExtensions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    array-length v3, v2

    const-string v4, ""

    move-object v7, v4

    :goto_1
    if-ge v1, v3, :cond_2

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_data LIKE ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_data LIKE ? or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v7, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "_size"

    const-string v3, "date_added"

    const-string v4, "_id"

    const-string v5, "_data"

    const-string v6, "mime_type"

    filled-new-array {v4, v5, v6, v1, v3}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v8, v2

    check-cast v8, [Ljava/lang/String;

    const-string v9, "date_added DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->i:Lcom/onyx/android/sdk/filepicker/sort/SortType;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/filepicker/sort/SortType;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->o(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->n(Ljava/util/List;Ljava/util/Comparator;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public final t()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/QueryDocAction;->f:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->notifySystemToScan(Ljava/io/File;)V

    :cond_0
    return-void
.end method
