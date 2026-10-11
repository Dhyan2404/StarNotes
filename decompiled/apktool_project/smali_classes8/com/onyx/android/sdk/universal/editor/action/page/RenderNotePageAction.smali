.class public final Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderNotePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,151:1\n1855#2,2:152\n344#3,3:154\n*S KotlinDebug\n*F\n+ 1 RenderNotePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction\n*L\n51#1:152,2\n94#1:154,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010 \u001a\u00020\u0019\u00a2\u0006\u0004\u0008C\u0010DJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001a\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J(\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00040\u00040\u000b2\u0006\u0010\n\u001a\u00020\u0005H\u0002J,\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00040\u00040\u000bH\u0002J\"\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0004H\u0002J\u000c\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0006\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0008H\u0014J\u000e\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001e\u0010)\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030&0%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R(\u00100\u001a\u0008\u0012\u0004\u0012\u00020*0%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010(\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R(\u00104\u001a\u0008\u0012\u0004\u0012\u00020*0%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010(\u001a\u0004\u00082\u0010-\"\u0004\u00083\u0010/R$\u00109\u001a\u0002052\u0006\u00106\u001a\u0002058\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:R\u0017\u0010@\u001a\u00020;8\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "z",
        "",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
        "q",
        "list",
        "Lio/reactivex/rxjava3/core/Observable;",
        "v",
        "info",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "A",
        "pair",
        "r",
        "noteSliceRenderInfo",
        "s",
        "w",
        "onDispose",
        "setAbort",
        "create",
        "",
        "msg",
        "log",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "getNoteRenderArgs",
        "()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "setNoteRenderArgs",
        "(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V",
        "noteRenderArgs",
        "Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;",
        "i",
        "Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;",
        "renderRequest",
        "",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "j",
        "Ljava/util/List;",
        "requestList",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "k",
        "getSuccessList",
        "()Ljava/util/List;",
        "setSuccessList",
        "(Ljava/util/List;)V",
        "successList",
        "l",
        "getFailList",
        "setFailList",
        "failList",
        "",
        "<set-?>",
        "m",
        "Z",
        "isAbort",
        "()Z",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "n",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getRunning",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "running",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V",
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
        "SMAP\nRenderNotePageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,151:1\n1855#2,2:152\n344#3,3:154\n*S KotlinDebug\n*F\n+ 1 RenderNotePageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction\n*L\n51#1:152,2\n94#1:154,3\n*E\n"
    }
.end annotation


# instance fields
.field public h:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile m:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteRenderArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->h:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    new-instance p2, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->h:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-direct {p2, p1, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->i:Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->j:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->k:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->l:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$filterRenderingSliceInfoList(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->q()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRenderRequest$p(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->i:Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;

    return-object p0
.end method

.method public static final synthetic access$getRequestList$p(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$prepareRenderBatchShapes(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->r(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$prepareRenderShapes(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->s(Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renderNoteSliceList(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->v(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$renderShapes(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->w()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setRunning(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->z()V

    return-void
.end method

.method public static final synthetic access$splitRenderShapes(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;)Lkotlin/Pair;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->A(Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->x(Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->u(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->onDispose()V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->y(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->t(Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;)V

    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->setAbort()V

    return-void
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/request/page/PrepareRenderNotePageRequest;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2. prepareRenderShapes execute, thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method

.method public static final x(Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->setAbort()V

    return-void
.end method

.method public static final y(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3. renderShapes execute, thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->disableThrowException()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->getNoteRenderSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lkotlin/Pair;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->h:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setPageRect(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    new-instance v1, Lcom/onyx/android/sdk/note/request/page/SplitNotePageRenderShapesRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/note/request/page/SplitNotePageRenderShapesRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->m:Z

    if-nez p0, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    :cond_1
    new-instance p0, Lkotlin/Pair;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/request/page/SplitNotePageRenderShapesRequest;->getBatchShapeList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ikl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ikl;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnDispose(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFailList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->l:Ljava/util/List;

    return-object p0
.end method

.method public final getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->h:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    return-object p0
.end method

.method public final getRunning()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getSuccessList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->k:Ljava/util/List;

    return-object p0
.end method

.method public final isAbort()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->m:Z

    return p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->i:Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onDispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->setAbort()V

    return-void
.end method

.method public final q()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->h:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getSliceRenderInfoList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$filterRenderingSliceInfoList$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$filterRenderingSliceInfoList$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

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
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$e;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lkotlin/Pair;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$f;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "map(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$prepareRenderShapes$2;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$prepareRenderShapes$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    new-instance v0, Lcom/sunia/HTREnginev2/lkl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lkl;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$g;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->subNoteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "observeOn(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$prepareRenderShapes$5;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$prepareRenderShapes$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    new-instance v0, Lcom/sunia/HTREnginev2/mkl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mkl;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-static {p1, p2, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setAbort()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->m:Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->setAbort()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAbort, thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", running = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final setFailList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->l:Ljava/util/List;

    return-void
.end method

.method public final setNoteRenderArgs(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->h:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    return-void
.end method

.method public final setSuccessList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->k:Ljava/util/List;

    return-void
.end method

.method public final v(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
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
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$j;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$renderShapes$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$renderShapes$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/jkl;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/jkl;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$renderShapes$5;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$renderShapes$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/kkl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/kkl;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1. running = true, thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;->log(Ljava/lang/String;)V

    return-void
.end method
