.class public abstract Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseExportNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseExportNoteAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,409:1\n766#2:410\n857#2,2:411\n1603#2,9:413\n1855#2:422\n1856#2:424\n1612#2:425\n766#2:426\n857#2,2:427\n1747#2,3:429\n350#2,7:435\n1855#2,2:442\n1549#2:444\n1620#2,3:445\n1549#2:448\n1620#2,3:449\n766#2:452\n857#2,2:453\n1855#2,2:455\n766#2:457\n857#2,2:458\n766#2:460\n857#2,2:461\n1549#2:463\n1620#2,3:464\n1549#2:467\n1620#2,3:468\n766#2:471\n857#2,2:472\n1855#2,2:474\n766#2:476\n857#2,2:477\n1549#2:479\n1620#2,3:480\n1#3:423\n1#3:434\n13309#4,2:432\n*S KotlinDebug\n*F\n+ 1 BaseExportNoteAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction\n*L\n108#1:410\n108#1:411,2\n109#1:413,9\n109#1:422\n109#1:424\n109#1:425\n193#1:426\n193#1:427,2\n203#1:429,3\n234#1:435,7\n259#1:442,2\n275#1:444\n275#1:445,3\n287#1:448\n287#1:449,3\n294#1:452\n294#1:453,2\n331#1:455,2\n343#1:457\n343#1:458,2\n344#1:460\n344#1:461,2\n345#1:463\n345#1:464,3\n359#1:467\n359#1:468,3\n362#1:471\n362#1:472,2\n380#1:474,2\n393#1:476\n393#1:477,2\n394#1:479\n394#1:480,3\n109#1:423\n221#1:432,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\n\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010F\u001a\u00020\u000b\u0012\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020$0-\u0012\u0006\u0010)\u001a\u00020\r\u00a2\u0006\u0004\u0008l\u0010mJ\u0016\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\tH\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u001e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\r2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0014J\u001c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0004J\u0008\u0010\u001e\u001a\u00020\u0006H\u0014J\u0008\u0010\u001f\u001a\u00020\u0006H\u0014J\u0008\u0010 \u001a\u00020\u0006H\u0014J\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010!\u001a\u00020\u0004H\u0014J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\t2\u0006\u0010#\u001a\u00020\u000bH\u0014J&\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\r0\t2\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\rH&J\u0018\u0010*\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\rH\u0014J\u0018\u0010,\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u0002H\u0004J\u001c\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0-0\t2\u0006\u0010#\u001a\u00020\u000bH\u0004J\u0016\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\r0-2\u0006\u0010#\u001a\u00020\u000bH\u0004J\u0016\u00101\u001a\u0008\u0012\u0004\u0012\u0002000-2\u0006\u0010#\u001a\u00020\u000bH\u0004J\u0010\u00102\u001a\u00020$2\u0006\u0010\u0010\u001a\u00020\rH\u0004J#\u00106\u001a\u00020\u00062\u000e\u00104\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u0001032\u0006\u00105\u001a\u00020\'H\u0004\u00f8\u0001\u0000J\u0016\u00108\u001a\u0002072\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$J*\u0010:\u001a\u0008\u0012\u0004\u0012\u0002000-2\u0006\u0010#\u001a\u00020\u000b2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002000-2\u0006\u0010%\u001a\u00020$J\u001e\u0010<\u001a\u0002072\u0006\u0010#\u001a\u00020\u000b2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\r0-H\u0014J\u001e\u0010>\u001a\u00020=2\u0006\u0010#\u001a\u00020\u000b2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\r0-H\u0014J\u0010\u0010?\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u000bH\u0004J \u0010C\u001a\u00020\r2\u0006\u0010@\u001a\u00020\r2\u0006\u0010A\u001a\u00020\r2\u0006\u0010B\u001a\u00020\rH\u0004R\u0014\u0010F\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u001a\u0010I\u001a\u0008\u0012\u0004\u0012\u00020$0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0017\u0010)\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u0017\u0010(\u001a\u00020\'8\u0006\u00a2\u0006\u000c\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010QR\u001c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00040-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010HR&\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0T8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010XR\'\u0010_\u001a\u0015\u0012\u000c\u0012\n [*\u0004\u0018\u00010\u00020\u00020Z\u00a2\u0006\u0002\u0008\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0018\u0010c\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR(\u0010k\u001a\u0008\u0012\u0004\u0012\u00020\r0d8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010j\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "tree",
        "",
        "D",
        "model",
        "Lio/reactivex/rxjava3/core/Observable;",
        "x",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "t",
        "",
        "I",
        "H",
        "docId",
        "",
        "throwable",
        "G",
        "s",
        "dirPath",
        "E",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "F",
        "",
        "C",
        "create",
        "export",
        "exportUserData",
        "exportAppData",
        "exportExtraInfo",
        "noteModel",
        "openNote",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "exportArgs",
        "pageId",
        "Ljava/io/File;",
        "exportCacheDir",
        "exportFilePath",
        "packFiles",
        "progressInfo",
        "onProgress",
        "",
        "loadExportPageIdList",
        "getExportPageIdList",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "getExportVirtualPageList",
        "getExportArgs",
        "Lkotlin/Result;",
        "result",
        "cacheDir",
        "checkZipFileValid",
        "Landroid/graphics/RectF;",
        "loadExportPageRect",
        "virtualPageList",
        "filterValidExportPages",
        "ids",
        "calculateShapePageRect",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "calculateShapeQueryArgs",
        "generateValidFileName",
        "parentDir",
        "fileBaseName",
        "fileExtension",
        "generateUniqueFileName",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "docManagerBundle",
        "f",
        "Ljava/util/List;",
        "noteExportArgsList",
        "g",
        "Ljava/lang/String;",
        "getExportFilePath",
        "()Ljava/lang/String;",
        "h",
        "Ljava/io/File;",
        "getExportCacheDir",
        "()Ljava/io/File;",
        "i",
        "documentList",
        "",
        "j",
        "Ljava/util/Map;",
        "getPathMap",
        "()Ljava/util/Map;",
        "pathMap",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "k",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "progressSubject",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "l",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "exportDisposable",
        "",
        "m",
        "Ljava/util/Set;",
        "getPackedFileSet",
        "()Ljava/util/Set;",
        "setPackedFileSet",
        "(Ljava/util/Set;)V",
        "packedFileSet",
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
        "SMAP\nBaseExportNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseExportNoteAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,409:1\n766#2:410\n857#2,2:411\n1603#2,9:413\n1855#2:422\n1856#2:424\n1612#2:425\n766#2:426\n857#2,2:427\n1747#2,3:429\n350#2,7:435\n1855#2,2:442\n1549#2:444\n1620#2,3:445\n1549#2:448\n1620#2,3:449\n766#2:452\n857#2,2:453\n1855#2,2:455\n766#2:457\n857#2,2:458\n766#2:460\n857#2,2:461\n1549#2:463\n1620#2,3:464\n1549#2:467\n1620#2,3:468\n766#2:471\n857#2,2:472\n1855#2,2:474\n766#2:476\n857#2,2:477\n1549#2:479\n1620#2,3:480\n1#3:423\n1#3:434\n13309#4,2:432\n*S KotlinDebug\n*F\n+ 1 BaseExportNoteAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction\n*L\n108#1:410\n108#1:411,2\n109#1:413,9\n109#1:422\n109#1:424\n109#1:425\n193#1:426\n193#1:427,2\n203#1:429,3\n234#1:435,7\n259#1:442,2\n275#1:444\n275#1:445,3\n287#1:448\n287#1:449,3\n294#1:452\n294#1:453,2\n331#1:455,2\n343#1:457\n343#1:458,2\n344#1:460\n344#1:461,2\n345#1:463\n345#1:464,3\n359#1:467\n359#1:468,3\n362#1:471\n362#1:472,2\n380#1:474,2\n393#1:476\n393#1:477,2\n394#1:479\n394#1:480,3\n109#1:423\n221#1:432,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/List;
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

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
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

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->g:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    sget-object p3, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->i:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->j:Ljava/util/Map;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->k:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->m:Ljava/util/Set;

    return-void
.end method

.method public static final A(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lkotlin/Unit;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->exportExtraInfo()V

    return-void
.end method

.method public static final B(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->H()V

    return-void
.end method

.method public static final synthetic access$checkNoSpaceError(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$closeNote(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$export(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->x(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDocManagerBundle$p(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getProgressSubject$p(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->k:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public static final synthetic access$isNoteExportError(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->C(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$makeTreeDirs(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->D(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public static final synthetic access$mapToTree(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/base/data/Tree;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->F(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onError(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->G(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$packFile(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->I()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->u(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->y(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static synthetic n()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->w()V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lkotlin/Unit;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->A(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lkotlin/Unit;)V

    return-void
.end method

.method public static synthetic p(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->z(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->B(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->v(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    return-void
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->l:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public static final v(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final w()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->Companion:Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpDocProviderInfo$default(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final y(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->packFiles(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static final z(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final C(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result p0

    return p0
.end method

.method public final D(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->E(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Tree;)V

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->g:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/lang/String;)Z

    return-void
.end method

.method public final E(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    new-instance v9, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$makeTreeDirs$1$path$1;

    invoke-direct {v9, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$makeTreeDirs$1$path$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v4, v2

    move-object v5, p1

    invoke-static/range {v4 .. v11}, Lcom/onyx/android/sdk/base/utils/FileUtils;->generateUniqueFileName$default(Lcom/onyx/android/sdk/base/utils/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combinePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mk tree dir:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->E(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Tree;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final F(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/android/sdk/base/data/Tree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
            ")",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->f:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;-><init>(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;->execute()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    return-object p0
.end method

.method public final G(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->setThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final H()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->k:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    sget-object v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;->onComplete()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public final I()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lonyx/org/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v1

    const-string v4, "listFiles(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->notifySystemToScan(Ljava/io/File;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->g:Ljava/lang/String;

    return-object p0

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getAbsolutePath(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    const-string v6, "userData"

    invoke-virtual {v1, v5, v6}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, v3, v2}, Lcom/onyx/android/sdk/base/extension/Paths;->listFiles$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;ZILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    move v6, v3

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "first(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v6, :cond_6

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1, v0}, Lonyx/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->exportExtraInfo()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->packFiles(Ljava/io/File;Ljava/lang/String;)V

    :goto_2
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->notifySystemToScan(Ljava/io/File;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public calculateShapePageRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Landroid/graphics/RectF;
    .locals 5
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

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->calculateShapeQueryArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapePageIdList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    const v0, -0x800001

    move v1, v0

    move v2, v1

    move v0, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getCellOriginRectFCopy()Landroid/graphics/RectF;

    move-result-object v3

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v4, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public calculateShapeQueryArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 3
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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->loadShapeListQuery(Ljava/lang/String;Ljava/lang/Integer;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v1, "zorder"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    const-string p1, "pageUniqueId"

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public final checkZipFileValid(Lkotlin/Result;Ljava/io/File;)V
    .locals 8
    .param p1    # Lkotlin/Result;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Result<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    :cond_0
    check-cast v1, Ljava/io/File;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->l:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->isDisposed(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "export disposed:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    if-eqz v1, :cond_5

    new-instance v4, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v4, v1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Lnet/lingala/zip4j/ZipFile;->isValidZipFile()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v0

    :goto_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "export zip file error exist("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") isValidZipFile("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") :"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->listAllFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "size="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    move-object v2, p0

    :cond_b
    :goto_5
    throw v2
.end method

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

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNoteProviderAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNoteProviderAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/hn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hn;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/in;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/in;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/jn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jn;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final export(Lcom/onyx/android/sdk/base/data/Tree;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->childrenToList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/android/sdk/base/data/Tree;

    .line 4
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    .line 9
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->i:Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    sget-object p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;->onComplete()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    move v2, v3

    .line 17
    :cond_6
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$t;->e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$t;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 19
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$u;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$u;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 21
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$export$5;

    invoke-direct {v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$export$5;-><init>(ZLcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    new-instance v3, Lcom/sunia/HTREnginev2/kn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/kn;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-static {v0, v1, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/sunia/HTREnginev2/ln;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/ln;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$v;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$v;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 25
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$w;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$w;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$export$11;

    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$export$11;-><init>(Z)V

    new-instance v1, Lcom/sunia/HTREnginev2/mn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mn;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 30
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 31
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 32
    new-instance v0, Lcom/sunia/HTREnginev2/nn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nn;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->l:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 35
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->k:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
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

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object v2

    .line 39
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->loadExportPageIdList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 40
    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$n;

    invoke-direct {v4, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 41
    sget-object v4, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$o;->e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$o;

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    .line 42
    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$p;

    invoke-direct {v4, p0, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 43
    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$q;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 45
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$r;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 46
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$s;->e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$s;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.end method

.method public exportAppData()V
    .locals 0

    return-void
.end method

.method public exportExtraInfo()V
    .locals 0

    return-void
.end method

.method public exportUserData()V
    .locals 0

    return-void
.end method

.method public final filterValidExportPages(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isDraft(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p3, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {p3}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->calculateShapePageRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterValidExportPages calculateShapeRect origin id size = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportAndRestart(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getCellOriginRectFCopy()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterValidExportPages rect intersect target id size = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportAndRestart(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    const/4 p1, 0x0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1

    :cond_5
    :goto_2
    return-object p2
.end method

.method public final generateUniqueFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parentDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBaseName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileExtension"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const/4 v5, 0x0

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$generateUniqueFileName$1;

    invoke-direct {v6, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$generateUniqueFileName$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/onyx/android/sdk/base/utils/FileUtils;->generateUniqueFileName$default(Lcom/onyx/android/sdk/base/utils/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateValidFileName(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->f:Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;->findByNoteId(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getExportCacheDir()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->h:Ljava/io/File;

    return-object p0
.end method

.method public final getExportFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getExportPageIdList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportVirtualPageList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getExportVirtualPageList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPageIdList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v2, p1

    :cond_2
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExportVirtualPageList is empty, need exportPageIdList:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",doc virtualPageList:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v2
.end method

.method public final getPackedFileSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->m:Ljava/util/Set;

    return-object p0
.end method

.method public final getPathMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->j:Ljava/util/Map;

    return-object p0
.end method

.method public final loadExportPageIdList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$x;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$x;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadExportPageRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)Landroid/graphics/RectF;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "exportArgs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setScale(F)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->copyBoxList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportPageIdList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->isNaNBox()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getCellOriginRectFCopy()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->union(Landroid/graphics/RectF;Ljava/util/Collection;)V

    return-object p1
.end method

.method public final onProgress(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->f:Ljava/util/List;

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

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->setProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ExportNoteProgressEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/ExportNoteProgressEvent;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    :goto_2
    if-gez v1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->i:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    new-instance p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v3

    float-to-double v5, v0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const-wide v3, 0x4058c00000000000L    # 99.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setProgress(D)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->k:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public openNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->onProgress(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentDataAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentDataAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$y;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$y;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public packFiles(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exportCacheDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->zipFiles-RgG5Fkc([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Result;

    move-result-object p2

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->checkZipFileValid(Lkotlin/Result;Ljava/io/File;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->checkNoSpaceError()V

    return-void
.end method

.method public final setPackedFileSet(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->m:Ljava/util/Set;

    return-void
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->ensureCloseDoc(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->openNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$j;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$l;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$m;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$m;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
