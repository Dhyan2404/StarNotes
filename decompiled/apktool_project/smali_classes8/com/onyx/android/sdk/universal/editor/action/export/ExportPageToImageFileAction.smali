.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExportPageToImageFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportPageToImageFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002R\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "n",
        "l",
        "",
        "index",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;",
        "args",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "i",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "getOrientation",
        "()Lcom/onyx/android/sdk/base/data/Orientation;",
        "setOrientation",
        "(Lcom/onyx/android/sdk/base/data/Orientation;)V",
        "orientation",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nExportPageToImageFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportPageToImageFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"
    }
.end annotation


# instance fields
.field public h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/base/data/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    sget-object p1, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->i:Lcom/onyx/android/sdk/base/data/Orientation;

    return-void
.end method

.method public static final synthetic access$saveFile(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->n(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v9, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getPageIndex()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getRenderTemplate()Z

    move-result v4

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRenderTapeInImage()Z

    move-result v5

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getRenderExcerptIndicator()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getExportSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;->setExportSize(Lcom/onyx/android/sdk/base/data/Size;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;

    invoke-direct {v1, v0, v9}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorWithFileLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->i:Lcom/onyx/android/sdk/base/data/Orientation;

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getOutputDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getOutputDir()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final m(I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getOutputFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->getExportName$default(Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getOutputFileName()Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_3

    const-string p0, ""

    :cond_3
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getOrientation(Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->i:Lcom/onyx/android/sdk/base/data/Orientation;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToImageFileArgs;->getPageIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->m(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->l()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p0, v3, v0, v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->save$default(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAbsolutePath(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToImageFileAction;->i:Lcom/onyx/android/sdk/base/data/Orientation;

    return-void
.end method
