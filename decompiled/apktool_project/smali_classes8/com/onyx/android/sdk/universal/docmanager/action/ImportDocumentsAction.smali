.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportDocumentsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,554:1\n1603#2,9:555\n1855#2:564\n1856#2:566\n1612#2:567\n1#3:565\n*S KotlinDebug\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction\n*L\n106#1:555,9\n106#1:564\n106#1:566\n106#1:567\n106#1:565\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 l2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001lB\u001d\u0012\u0006\u0010i\u001a\u00020h\u0012\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00020;\u00a2\u0006\u0004\u0008j\u0010kJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u0008H\u0002J&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\n\u001a\u00020\u0008H\u0002J\"\u0010 \u001a\u00020\u00042\u0018\u0010\u001f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e0\u001d0\u001cH\u0002J\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00072\u0006\u0010!\u001a\u00020\u0011H\u0002J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010%\u001a\u00020\u0004H\u0002J\u0008\u0010&\u001a\u00020\u0004H\u0002J\u0010\u0010\'\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0008\u0010(\u001a\u00020\u0004H\u0002J\u0008\u0010)\u001a\u00020\u0004H\u0002J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010+\u001a\u00020*H\u0002J\u0018\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020-2\u0006\u0010+\u001a\u00020*H\u0002J\u000e\u00102\u001a\u0008\u0012\u0004\u0012\u00020100H\u0002J\u0010\u00103\u001a\u00020-2\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u00105\u001a\u0002042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u00107\u001a\u0002062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0006\u00108\u001a\u00020\u0000J\u000e\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0007H\u0014J\u0008\u0010:\u001a\u00020\u0004H\u0016R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010A\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u001a\u0010E\u001a\u0008\u0012\u0004\u0012\u00020C0B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010=R\u0016\u0010H\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001a\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00110I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0016\u0010O\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u001e\u0010R\u001a\n\u0012\u0004\u0012\u000201\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u001d\u0010W\u001a\u0008\u0012\u0004\u0012\u00020S0B8\u0006\u00a2\u0006\u000c\n\u0004\u0008T\u0010=\u001a\u0004\u0008U\u0010VR\"\u0010]\u001a\u0002068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010\u0018\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\"\u0010d\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\u001a\u0010g\u001a\u0008\u0012\u0004\u0012\u00020e0;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010=\u00a8\u0006m"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "noteImportArgs",
        "",
        "K",
        "importArgs",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
        "N",
        "resultEvent",
        "t",
        "s",
        "u",
        "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;",
        "decryptPDFArgs",
        "H",
        "",
        "path",
        "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "convertArgs",
        "v",
        "J",
        "newPath",
        "Z",
        "C",
        "E",
        "D",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "Lkotlin/Pair;",
        "",
        "progressPublisher",
        "G",
        "name",
        "B",
        "Y",
        "U",
        "T",
        "R",
        "S",
        "V",
        "Q",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "progressInfo",
        "W",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;",
        "totalStatus",
        "X",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;",
        "L",
        "M",
        "Ljava/nio/file/Path;",
        "A",
        "",
        "P",
        "disablePostEvent",
        "create",
        "dispose",
        "",
        "h",
        "Ljava/util/List;",
        "importArgsList",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
        "importResultEvent",
        "",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
        "j",
        "taskInfoList",
        "k",
        "Ljava/lang/String;",
        "createNoteDocId",
        "",
        "l",
        "Ljava/util/Set;",
        "folderIds",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "importNoteArgs",
        "n",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "eventPublisher",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "o",
        "getNoteModels",
        "()Ljava/util/List;",
        "noteModels",
        "p",
        "getEnablePostEvent",
        "()Z",
        "setEnablePostEvent",
        "(Z)V",
        "enablePostEvent",
        "q",
        "I",
        "getCompletedFileTotalCount",
        "()I",
        "setCompletedFileTotalCount",
        "(I)V",
        "completedFileTotalCount",
        "Landroid/net/Uri;",
        "r",
        "originUriList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
        "Companion",
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
        "SMAP\nImportDocumentsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,554:1\n1603#2,9:555\n1855#2:564\n1856#2:566\n1612#2:567\n1#3:565\n*S KotlinDebug\n*F\n+ 1 ImportDocumentsAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction\n*L\n106#1:555,9\n106#1:564\n106#1:566\n106#1:567\n106#1:565\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DELAY_OPEN_DOCUMENT:J = 0x32L

.field public static final PROGRESS_EVENT_INTERVAL:J = 0x32L


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/util/Set;
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

.field public m:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

.field public n:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Z

.field public q:I

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->Companion:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 7
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
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importArgsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;II)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->j:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->k:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->l:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->o:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->p:Z

    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getOriginUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->r:Ljava/util/List;

    return-void
.end method

.method public static final F(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1

    const-string v0, "$resultEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->setSuccess(Z)V

    return-void
.end method

.method public static final I(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V
    .locals 2

    const-string v0, "$resultEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$complete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->hasException()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->getDecryptDone()Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->setSuccess(Z)V

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;->onComplete()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public static final O(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "$importArgs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fileDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$documentPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getModifyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_2

    const-string p1, "fileDir"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    check-cast v2, Ljava/nio/file/Path;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->appendSuffixIfExist(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p1}, Lonyx/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAbsolutePath(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$assertCajFileValid(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->s(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$assertFileValid(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->t(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertDocumentToPdf(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->u(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertToPDF(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->v(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDocumentDir(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->A(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createNote(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->C(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createProgressObserver(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->G(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    return-void
.end method

.method public static final synthetic access$decryptPDF(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->H(Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteFile(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->J(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$disablePostEventIfMultipleTask(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->K(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    return-void
.end method

.method public static final synthetic access$getCreateNoteDocId$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getImportArgsList$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getImportNoteArgs$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->m:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    return-object p0
.end method

.method public static final synthetic access$getImportResultEvent$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    return-object p0
.end method

.method public static final synthetic access$getTaskInfoList$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$importDocument(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->N(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onImportOneFinish(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->S(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    return-void
.end method

.method public static final synthetic access$onImportStart(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->U(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    return-void
.end method

.method public static final synthetic access$onProgress(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->W(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public static final synthetic access$postResult(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->Y(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renameFile(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->Z(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCreateNoteDocId$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->k:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setImportNoteArgs$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->m:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    return-void
.end method

.method public static final synthetic access$setImportResultEvent$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->y(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/Iterator;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->x(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->O(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->F(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->w(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->I(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->z(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    return-void
.end method

.method public static final w(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V
    .locals 2

    const-string v0, "$resultEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$complete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->hasException()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->getConvertSuccess()Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->setSuccess(Z)V

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;->onComplete()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public static final x(Ljava/util/Iterator;)Z
    .locals 1

    const-string v0, "$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final y(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->V()V

    return-void
.end method

.method public static final z(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->n:Lcom/onyx/android/sdk/base/rx/RxFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Ljava/nio/file/Path;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFileUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->P(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->importDocumentTempFileDir()Ljava/nio/file/Path;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->k:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appDocResourceContentDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final B(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$integer;->edit_name_max_length:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    sget v2, Lcom/onyx/android/sdk/universal/R$string;->import_note:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final C(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->P(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->E(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->D(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final D(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->m:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "importNoteArgs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getModifyFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$createNoteFromDocFile$noteName$1;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$createNoteFromDocFile$noteName$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "."

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;->createFromPDF(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setDocumentId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getCurrentIndex()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getTagIdList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setTagList(Ljava/util/List;)V

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getNoteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->B(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$v;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$v;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$w;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$w;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$x;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$y;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$y;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final E(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getCurrentIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/UriUtils;->file2Uri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "file2Uri(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setImportFileUri(Landroid/net/Uri;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$z;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$z;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;

    invoke-direct {v2, p0, v1, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a0;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$b0;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$b0;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v2, "doOnError(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$createNoteFromNoteFile$4;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$createNoteFromNoteFile$4;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    new-instance v3, Lcom/sunia/HTREnginev2/lii;

    invoke-direct {v3, p1}, Lcom/sunia/HTREnginev2/lii;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$c0;

    invoke-direct {v2, v1, p1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$c0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$d0;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$d0;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final G(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$e0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$e0;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final H(Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$decryptPDF$request$1;

    invoke-direct {v4, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$decryptPDF$request$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->disableThrowException()V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    new-instance v6, Lcom/sunia/HTREnginev2/kii;

    invoke-direct {v6, p2, v1, v0}, Lcom/sunia/HTREnginev2/kii;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$f0;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$f0;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$g0;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$g0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$i0;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$i0;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final J(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$j0;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$j0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$k0;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$k0;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final K(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->isMultipleDoc()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->disablePostEvent()Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    :cond_0
    return-void
.end method

.method public final L()Lcom/onyx/android/sdk/base/rx/RxFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->n:Lcom/onyx/android/sdk/base/rx/RxFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$l0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$l0;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleLast(JLio/reactivex/rxjava3/functions/Consumer;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->n:Lcom/onyx/android/sdk/base/rx/RxFilter;

    :cond_0
    return-object v0
.end method

.method public final M(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->ERROR:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getSuccess()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->SUCCESS:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->IMPORTING:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    :goto_0
    return-object p0
.end method

.method public final N(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;

    invoke-direct {v3, v0, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string v3, "doOnNext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$importDocument$2;

    invoke-direct {v3, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$importDocument$2;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    new-instance v4, Lcom/sunia/HTREnginev2/jii;

    invoke-direct {v4, p1, v0, v1}, Lcom/sunia/HTREnginev2/jii;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->mapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$importDocument$4;->INSTANCE:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$importDocument$4;

    new-instance v4, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$importDocument$5;

    invoke-direct {v4, p0, v0, p1, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$importDocument$5;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$importDocument$6;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$importDocument$6;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFilePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/UriUtils;->uri2File(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->J(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;

    invoke-direct {v2, v1, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final P(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "note"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final Q()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->ERROR:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->X(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public final R()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;->onComplete()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->W(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public final S(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->j:Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getOriginalFileName()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->SUCCESS:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    invoke-direct {v1, v2, p1, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->T()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->j:Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getOriginalFileName()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->ERROR:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    invoke-direct {v1, v2, p1, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->R()V

    :goto_1
    return-void
.end method

.method public final T()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;->onComplete()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->W(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public final U(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 7

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFileName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;II)V

    iput-object v6, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    new-instance p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->W(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public final V()V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->l:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateFolderCoverAction;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->COMPLETE:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getCurrentIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getTotal()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->X(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$onImportTotalComplete$1;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createIOObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final W(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getCurrentIndex()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getTotal()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v3

    float-to-double v5, v2

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setProgress(D)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;->IMPORTING:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->X(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public final X(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 11

    new-instance v10, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getOriginalFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->M(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->j:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->i:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getCurrentIndex()I

    move-result v6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->m:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    if-nez v0, :cond_0

    const-string v0, "importNoteArgs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v8, v0

    iget-object v9, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->r:Ljava/util/List;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->n:Lcom/onyx/android/sdk/base/rx/RxFilter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v10}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->L()Lcom/onyx/android/sdk/base/rx/RxFilter;

    move-result-object p0

    invoke-virtual {p0, v10}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final Y(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->p:Z

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$o0;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$o0;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->S(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    return-object p0
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$p0;

    invoke-direct {v1, p2, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$p0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$q0;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$q0;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$o;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$o;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$p;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$p;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$q;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$q;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$r;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$r;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$s;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$s;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$t;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$t;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$u;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$u;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$i;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$i;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$j;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$j;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$k;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$k;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->onErrorResumeNext(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/nii;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/nii;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$l;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$l;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/oii;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/oii;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/pii;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pii;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final disablePostEvent()Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->p:Z

    return-object p0
.end method

.method public dispose()V
    .locals 8

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->cancelRunningRequest(Lkotlin/reflect/KClass;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->cancelRunningRequest(Lkotlin/reflect/KClass;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getCompletedFileTotalCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->q:I

    return p0
.end method

.method public final getEnablePostEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->p:Z

    return p0
.end method

.method public final getNoteModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->o:Ljava/util/List;

    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/onyx/android/sdk/reader/extension/ReaderBundleKt;->isValidContentPage(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportFileException;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportFileException;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "error(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setCompletedFileTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->q:I

    return-void
.end method

.method public final setEnablePostEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->p:Z

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->P(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$assertFileValid$2;->INSTANCE:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$assertFileValid$2;

    new-instance v3, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$assertFileValid$3;

    invoke-direct {v3, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$assertFileValid$3;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$b;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$c;

    invoke-direct {v4, v2, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$c;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string v4, "doOnNext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$2;

    invoke-direct {v4, v2, v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    new-instance v5, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$3;

    invoke-direct {v5, v1, v0, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-static {v3, v4, v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$4;

    invoke-direct {v4, v2}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-static {v3, v4, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$d;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->getSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p0 .. p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "just(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v1

    const-string v2, "create(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v6, Lcom/onyx/android/sdk/base/data/Size;

    sget-object v3, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    sget-object v4, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfCMToPx(Ljava/lang/Number;)I

    move-result v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfCMToPx(Ljava/lang/Number;)I

    move-result v3

    invoke-direct {v6, v5, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    new-instance v9, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v4

    new-instance v8, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertToPDF$request$1;

    invoke-direct {v8, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertToPDF$request$1;-><init>(Ljava/lang/Object;)V

    move-object v3, v9

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->disableThrowException()V

    invoke-static {v0, v9}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v10

    new-instance v11, Lcom/sunia/HTREnginev2/mii;

    move-object/from16 v3, p3

    invoke-direct {v11, v3, v2, v1}, Lcom/sunia/HTREnginev2/mii;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$e;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$e;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$f;

    invoke-direct {v3, v2}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$f;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$g;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$g;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
