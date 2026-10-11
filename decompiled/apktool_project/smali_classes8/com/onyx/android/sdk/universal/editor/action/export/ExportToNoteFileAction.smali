.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010\u0016\u001a\u00020\u0010\u0012\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0004\u0008;\u0010<J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0012\u001a\u00020\nH\u0002J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002R\u0014\u0010\u0016\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\"\u0010\'\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R.\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020)0(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u0006="
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "p",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "pbDataContext",
        "Lio/reactivex/rxjava3/core/Observer;",
        "observer",
        "",
        "t",
        "w",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "noteDoc",
        "",
        "",
        "v",
        "o",
        "u",
        "h",
        "Ljava/lang/String;",
        "exportFilePath",
        "i",
        "Ljava/util/List;",
        "pageIdList",
        "j",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "Ljava/io/File;",
        "k",
        "Ljava/io/File;",
        "exportDir",
        "",
        "l",
        "[I",
        "getExportFuncTypes",
        "()[I",
        "setExportFuncTypes",
        "([I)V",
        "exportFuncTypes",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
        "m",
        "Ljava/util/Map;",
        "getExportPdfPagesResult",
        "()Ljava/util/Map;",
        "setExportPdfPagesResult",
        "(Ljava/util/Map;)V",
        "exportPdfPagesResult",
        "",
        "n",
        "Z",
        "getTransformReferenceShape",
        "()Z",
        "setTransformReferenceShape",
        "(Z)V",
        "transformReferenceShape",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;)V",
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
.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

.field public k:Ljava/io/File;

.field public l:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageIdList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->h:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->i:Ljava/util/List;

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->l:[I

    .line 7
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->m:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$export(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exportImpl(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->t(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->q(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V

    return-void
.end method

.method public static synthetic m(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->r(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->s(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->w()V

    return-void
.end method

.method public static final r(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 1

    const-string v0, "$subject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onComplete()V

    return-void
.end method

.method public static final s(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->o()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getExportFuncTypes()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->l:[I

    return-object p0
.end method

.method public final getExportPdfPagesResult()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->m:Ljava/util/Map;

    return-object p0
.end method

.method public final getTransformReferenceShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->n:Z

    return p0
.end method

.method public final o()V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->u()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;->EXPORT:Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "ROOT"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->k:Ljava/io/File;

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->o()V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    const-string v2, "noteDoc"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v1

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;-><init>(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;-><init>()V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_2
    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->k:Ljava/io/File;

    if-nez v4, :cond_3

    const-string v4, "exportDir"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getAbsolutePath(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportDirPath(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    if-nez v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_4
    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->v(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setPageIdList(Ljava/util/List;)V

    new-instance v4, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    const/4 v6, 0x0

    sget-object v5, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->getAppVersionCode(Landroid/content/Context;)J

    move-result-wide v7

    long-to-int v7, v7

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    if-nez v5, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_5
    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteDocBean()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;->getUserId()Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    if-nez v5, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_6
    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setInfoBean(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    if-nez v4, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_7
    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->setExportNoteArgs(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->l:[I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getInfoBean()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->m:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->setExportPdfPagesResult(Ljava/lang/String;)V

    :cond_a
    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->n:Z

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setTransformReferenceShape(Z)V

    :goto_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->m:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportPdfPagesResult(Ljava/util/Map;)V

    :goto_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportRemovedPages(Z)V

    :goto_3
    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v1

    const-string v2, "create(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;

    invoke-direct {v3, p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/o2g;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/o2g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/p2g;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/p2g;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$c;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$c;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/q2g;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/q2g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-object v1
.end method

.method public final setExportFuncTypes([I)V
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->l:[I

    return-void
.end method

.method public final setExportPdfPagesResult(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->m:Ljava/util/Map;

    return-void
.end method

.method public final setTransformReferenceShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->n:Z

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
            "Lio/reactivex/rxjava3/core/Observer<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->l:[I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->getCustomFuncMap([I)Ljava/util/LinkedHashMap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->exportToNoteObservable$default(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/util/LinkedHashMap;Lio/reactivex/rxjava3/core/Scheduler;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$d;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$d;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$e;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$e;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->k:Ljava/io/File;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "exportDir"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->j:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    if-nez p0, :cond_1

    const-string p0, "noteDoc"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->docDirFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getPageNameList(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->getPageNameList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->i:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->i:Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public final w()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->h:Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object v2, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->u()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v2, v3, v0, p0}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->zipFolder-RgG5Fkc(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Result;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pack note files success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
