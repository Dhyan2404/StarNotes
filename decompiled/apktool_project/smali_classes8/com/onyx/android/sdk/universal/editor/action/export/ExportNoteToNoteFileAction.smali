.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;
.super Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExportNoteToNoteFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportNoteToNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,371:1\n1#2:372\n1549#3:373\n1620#3,3:374\n766#3:377\n857#3,2:378\n766#3:380\n857#3,2:381\n1855#3,2:383\n1726#3,3:385\n*S KotlinDebug\n*F\n+ 1 ExportNoteToNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction\n*L\n166#1:373\n166#1:374,3\n195#1:377\n195#1:378,2\n247#1:380\n247#1:381,2\n248#1:383,2\n333#1:385,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010:\u001a\u00020\u0002\u0012\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020.0\n\u0012\u0006\u0010P\u001a\u00020\u0006\u00a2\u0006\u0004\u0008Q\u0010RJ\u0014\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J8\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\r0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J \u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u0018\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010 \u001a\u00020\u001fH\u0002J\u0018\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u0012H\u0002J\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0014J\u0008\u0010+\u001a\u00020\u0017H\u0014J\u0008\u0010,\u001a\u00020\u0017H\u0014J\u0008\u0010-\u001a\u00020\u0017H\u0014J&\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u0006H\u0016J\u001e\u00103\u001a\u0002022\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0014J\u001e\u00105\u001a\u0002042\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0014R\u0017\u0010:\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u001a\u0010=\u001a\u0008\u0012\u0004\u0012\u00020.0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u001a\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00080>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010<R\"\u0010G\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\"\u0010K\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010B\u001a\u0004\u0008I\u0010D\"\u0004\u0008J\u0010FR\"\u0010O\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010B\u001a\u0004\u0008M\u0010D\"\u0004\u0008N\u0010F\u00a8\u0006S"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lio/reactivex/rxjava3/core/Observable;",
        "X",
        "",
        "Q",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
        "exportNoteArgs",
        "",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPageList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
        "W",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "pbDataContext",
        "Ljava/io/File;",
        "pbExportDir",
        "exportFile",
        "R",
        "Y",
        "",
        "T",
        "N",
        "debugDir",
        "M",
        "P",
        "O",
        "K",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;",
        "L",
        "",
        "throwable",
        "",
        "V",
        "exportCacheDir",
        "U",
        "export",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "openNote",
        "exportUserData",
        "exportAppData",
        "exportExtraInfo",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "exportArgs",
        "pageId",
        "ids",
        "Landroid/graphics/RectF;",
        "calculateShapePageRect",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "calculateShapeQueryArgs",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getDocManagerBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "docManagerBundle",
        "o",
        "Ljava/util/List;",
        "noteExportArgsList",
        "",
        "p",
        "exportNoteArgsList",
        "q",
        "Z",
        "getExportAllFolder",
        "()Z",
        "setExportAllFolder",
        "(Z)V",
        "exportAllFolder",
        "r",
        "getExportAllTag",
        "setExportAllTag",
        "exportAllTag",
        "s",
        "getExportFont",
        "setExportFont",
        "exportFont",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExportNoteToNoteFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportNoteToNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,371:1\n1#2:372\n1549#3:373\n1620#3,3:374\n766#3:377\n857#3,2:378\n766#3:380\n857#3,2:381\n1855#3,2:383\n1726#3,3:385\n*S KotlinDebug\n*F\n+ 1 ExportNoteToNoteFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction\n*L\n166#1:373\n166#1:374,3\n195#1:377\n195#1:378,2\n247#1:380\n247#1:381,2\n248#1:383,2\n333#1:385,3\n*E\n"
    }
.end annotation


# instance fields
.field public final n:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Z

.field public r:Z

.field public s:Z


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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->n:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->p:Ljava/util/List;

    return-void
.end method

.method public static synthetic J(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->S(Ljava/io/File;)V

    return-void
.end method

.method public static final S(Ljava/io/File;)V
    .locals 1

    const-string v0, "$pbExportDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    return-void
.end method

.method public static final synthetic access$checkVirtualPagePBFile(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->K(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    return-void
.end method

.method public static final synthetic access$exportFile(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->Q(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exportPB(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->R(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onExportErrorReturn(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Ljava/lang/Throwable;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->V(Ljava/lang/Throwable;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$savePagesAsPdf(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->W(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateNoteThumbnailFile(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->X(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$zipExportFolder(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->Y(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final K(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/VirtualPagePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/VirtualPagePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/data/common/path/VirtualPagePaths;->pagePBFileDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->listFiles(Ljava/nio/file/Path;Z)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "ExportNote checkVirtualPagePBFile fail, no exist"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public final L()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->setExportDirPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->setExportNoteArgsList(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->q:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->setExportAllFolder(Z)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->r:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->setExportAllTag(Z)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->s:Z

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->setExportFont(Z)V

    return-object v0
.end method

.method public final M(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getDocDataProviderInfo()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;->getBaseDir()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v0, "db"

    invoke-direct {p0, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lonyx/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public final N(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const-string v1, "toPath(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "debug"

    invoke-virtual {v0, p2, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->M(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->P(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->O(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final O(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PointPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PointPaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/path/PointPaths;->appDocPointDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const-string v0, "point"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public final P(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V
    .locals 1

    new-instance p0, Ljava/io/File;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->getPBFileDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string v0, "page"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public final Q(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object v12

    new-instance v13, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    invoke-direct {v13, v0, v11}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;-><init>(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getPathMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :try_start_0
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/base/utils/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "note"

    invoke-virtual {v1, v4, v0, v6}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->generateUniqueFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$exportFile$fileName$2;

    invoke-direct {v6, v5}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$exportFile$fileName$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v0, v6}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neopdf/lib/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v6, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/lang/String;)Z

    invoke-virtual {v6, v14}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    iget-object v4, v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->o:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPageIdList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isDraft(I)Z

    move-result v4

    if-nez v4, :cond_2

    move v10, v15

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    move v10, v4

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportVirtualPageList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v12}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->filterValidExportPages(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)Ljava/util/List;

    move-result-object v9

    new-instance v8, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    invoke-direct {v8}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;-><init>()V

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getAbsolutePath(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportDirPath(Ljava/lang/String;)V

    move-object v4, v9

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v5}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setPageIdList(Ljava/util/List;)V

    new-instance v7, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->getAppVersionCode(Landroid/content/Context;)J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteDocBean()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v4, v7

    const/4 v5, 0x0

    move-object v15, v7

    move-object v7, v3

    move-object v3, v8

    move-object v8, v11

    move-object/from16 v18, v9

    move/from16 v9, v16

    move-object/from16 v16, v0

    move v0, v10

    move-object/from16 v10, v17

    invoke-direct/range {v4 .. v10}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v15}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setInfoBean(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V

    invoke-virtual {v3, v11}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportTemplate()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportTemplate(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportGlobalPage(Z)V

    invoke-virtual {v12}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportStashArchivedData()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportStashArchivedData(Z)V

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setExportRemovedPages(Z)V

    invoke-virtual {v13, v3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->setExportNoteArgs(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;)V

    iget-object v0, v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->p:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;

    move-object/from16 v5, v18

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$e;

    move-object/from16 v3, v16

    invoke-direct {v2, v1, v13, v3, v14}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/OpenDocumentException;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/exception/OpenDocumentException;-><init>()V

    throw v0
.end method

.method public final R(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->exportToNoteObservable$default(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/util/LinkedHashMap;Lio/reactivex/rxjava3/core/Scheduler;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$f;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$g;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p3, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$i;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$i;

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p3, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$j;

    invoke-direct {p3, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/e2g;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/e2g;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final T(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const-string v1, "toPath(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->stash(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/file/Path;

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/StashPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/StashPaths;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/common/path/StashPaths;->stashShapePBFileDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportStashArchivedData()Z

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/common/path/StashPaths;->stashShapePBArchivedDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/nio/file/Path;

    new-array v3, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v3, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    if-eqz v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, p2}, Lonyx/org/apache/commons/io/FileUtils;->copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public final U(Ljava/io/File;)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteExtraInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteExtraInfo;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->getExportExtraInfoName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->appendContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method

.method public final V(Ljava/lang/Throwable;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->o:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/SecurityUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/SecurityUtils;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/SecurityUtils;->maskUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    const-class v3, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExportNote("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "):"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " onError"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2, p1}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    if-nez v1, :cond_3

    return p2

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->setThrowable(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->o:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result v0

    if-nez v0, :cond_5

    move v1, p2

    :cond_6
    :goto_1
    if-nez v1, :cond_7

    return p2

    :cond_7
    throw p1
.end method

.method public final W(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPageIdList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    const-string v1, "just(...)"

    if-eqz p0, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    sget-object v4, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isImportPDF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$savePagesAsPdf$pdfPagesMap$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$savePagesAsPdf$pdfPagesMap$2;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$savePagesAsPdf$pdfPagesMap$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$savePagesAsPdf$pdfPagesMap$3;

    invoke-static {p0, p3, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMapList(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    sget-object p3, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->docResourceContentDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p3

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

    invoke-interface {p3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p3, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;->setUseOriginFileName(Z)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$m;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$m;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final X(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportThumbnailPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPageIdList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/ComputeCoverThumbnailPageIndexAction;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3, v4}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/ComputeCoverThumbnailPageIndexAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$1;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$1;-><init>(I)V

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;

    invoke-direct {v4, p1, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$updateNoteThumbnailFile$2;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$n;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final Y(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDebugData()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->N(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->T(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->zipFolder-RgG5Fkc(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Result;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->checkZipFileValid(Lkotlin/Result;Ljava/io/File;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    check-cast v0, Ljava/io/File;

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public calculateShapePageRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Landroid/graphics/RectF;
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
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->calculateShapePageRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->getSMALLEST_RECT()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-object p0
.end method

.method public calculateShapeQueryArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ids"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->loadShapeListQuery(Ljava/lang/String;Ljava/lang/Integer;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v0, "pageUniqueId"

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, v0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "onErrorReturn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
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

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "exportArgs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p3}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public exportAppData()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->setExportDirPath(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->p:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->setExportNoteArgsList(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;->setExportNoteListArgs(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPbFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPbFactory;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPbFactory;->exportToFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;)V

    return-void
.end method

.method public exportExtraInfo()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->U(Ljava/io/File;)V

    return-void
.end method

.method public exportUserData()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->L()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->setExportNoteListArgs(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->exportToFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V

    return-void
.end method

.method public final getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->n:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getExportAllFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->q:Z

    return p0
.end method

.method public final getExportAllTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->r:Z

    return p0
.end method

.method public final getExportFont()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->s:Z

    return p0
.end method

.method public openNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "noteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->openNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$k;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$l;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setExportAllFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->q:Z

    return-void
.end method

.method public final setExportAllTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->r:Z

    return-void
.end method

.method public final setExportFont(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->s:Z

    return-void
.end method
