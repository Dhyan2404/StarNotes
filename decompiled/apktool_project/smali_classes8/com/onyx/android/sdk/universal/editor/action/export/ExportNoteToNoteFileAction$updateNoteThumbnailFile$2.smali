.class final Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->X(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field final synthetic $exportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

.field final synthetic $specifiedCoverPageIndex:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;->$specifiedCoverPageIndex:I

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;->$exportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;->$specifiedCoverPageIndex:I

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;->setPageIndex(Ljava/lang/Integer;)V

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appCacheThumbnailPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;->setFilePath(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2$a;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;->$exportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2$a;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;->invoke(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
