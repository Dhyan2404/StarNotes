.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;
.super Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001a\u0012\u0006\u0010\u001c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J&\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J&\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "export",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "exportArgs",
        "",
        "pageId",
        "N",
        "",
        "pageIndex",
        "O",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "L",
        "Lcom/onyx/android/sdk/neopdf/export/PdfExport;",
        "P",
        "",
        "K",
        "n",
        "Lcom/onyx/android/sdk/neopdf/export/PdfExport;",
        "pdfExport",
        "docManagerBundle",
        "",
        "noteExportArgsList",
        "exportFilePath",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V",
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
.field public n:Lcom/onyx/android/sdk/neopdf/export/PdfExport;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "docManagerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteExportArgsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportFilePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic J(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->M(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;)V

    return-void
.end method

.method public static final M(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->K()V

    return-void
.end method

.method public static final synthetic access$drawBitmapPage(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->L(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exportToFile(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->O(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPdfExport(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/neopdf/export/PdfExport;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->P(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final K()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->n:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->n:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    return-void
.end method

.method public final L(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->P(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    move-result-object p0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-interface {p0, p1, v0, p2}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->appendPage(Ljava/util/List;II)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->save(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final N(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$exportTOC$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$exportTOC$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createReaderObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$d;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final O(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;I)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            "I)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;

    new-instance v9, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportTemplate()Z

    move-result v4

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRenderTapeInImage()Z

    move-result v5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRenderExcerptIndicatorInPdf()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, p1, v9}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportPageToBitmapAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ExportPageToBitmapArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$e;

    invoke-direct {p3, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final P(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/neopdf/export/PdfExport;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->n:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getPathMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v2, "pdf"

    invoke-virtual {v0, p1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/lang/String;)Z

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->getPdfExportCreateArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/neopdf/export/NeoPdfExport;->create(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->n:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$export$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$export$1;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;->N(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/sunia/HTREnginev2/m2g;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/m2g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    .line 7
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
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
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    .line 9
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    .line 10
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$b;

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    .line 11
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToBitmapPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
