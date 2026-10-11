.class public final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenDocumentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,400:1\n79#2,5:401\n113#2,7:406\n*S KotlinDebug\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction\n*L\n390#1:401,5\n390#1:406,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010A\u001a\u00020@\u0012\u0006\u00108\u001a\u000201\u00a2\u0006\u0004\u0008B\u0010CJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000c\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u000c\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0002J\u000c\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0002J\u000c\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u000c\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002J\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002J\u0008\u0010!\u001a\u00020\u0002H\u0002J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020&H\u0002J+\u0010)\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010)2\u0006\u0010\'\u001a\u00020&2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000*H\u0002\u00a2\u0006\u0004\u0008)\u0010,J\u0008\u0010.\u001a\u00020-H\u0002J\u000e\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0016J\u000e\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0014R\"\u00108\u001a\u0002018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u0018\u0010;\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "x",
        "d0",
        "Lio/reactivex/rxjava3/core/Observable;",
        "v",
        "C",
        "I",
        "D",
        "f0",
        "B",
        "V",
        "X",
        "W",
        "u",
        "F",
        "M",
        "L",
        "R",
        "J",
        "P",
        "N",
        "c0",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;",
        "openResultInfo",
        "Z",
        "E",
        "y",
        "a0",
        "Y",
        "e0",
        "t",
        "s",
        "b0",
        "",
        "it",
        "G",
        "",
        "msg",
        "U",
        "T",
        "Lkotlin/Function0;",
        "block",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "",
        "K",
        "build",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "getOpenDocArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "setOpenDocArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V",
        "openDocArgs",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;",
        "virtualDocOpenResultInfo",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "j",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "benchmarkSinceOpen",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V",
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
        "SMAP\nOpenDocumentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,400:1\n79#2,5:401\n113#2,7:406\n*S KotlinDebug\n*F\n+ 1 OpenDocumentAction.kt\ncom/onyx/android/sdk/universal/editor/action/OpenDocumentAction\n*L\n390#1:401,5\n390#1:406,7\n*E\n"
    }
.end annotation


# instance fields
.field public h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/base/utils/Benchmark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openDocArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    new-instance p1, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->j:Lcom/onyx/android/sdk/base/utils/Benchmark;

    return-void
.end method

.method public static final A(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->d0()V

    return-void
.end method

.method public static final H()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/android/sdk/universal/R$string;->open_fail_default_tip:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void
.end method

.method public static final O(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final Q(Ljava/lang/String;)V
    .locals 4

    const-string v0, "$actionName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->INSTANCE:Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->endRequest$default(Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final S(Ljava/lang/String;)V
    .locals 4

    const-string v0, "$msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->INSTANCE:Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->endRequest$default(Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$activatePenBox(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->s()V

    return-void
.end method

.method public static final synthetic access$activateReadingHandler(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$afterDocumentOpen(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$beforeOpenDocument(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->v()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$beginPerformanceWatch(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->x()V

    return-void
.end method

.method public static final synthetic access$checkContentValid(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->y(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    return-void
.end method

.method public static final synthetic access$ensureLoadCustomFonts(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->B()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exportToDBFromPB(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->C()V

    return-void
.end method

.method public static final synthetic access$getContentViewSize(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->D()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVirtualDocOpenResultInfo$p(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    return-object p0
.end method

.method public static final synthetic access$gotoPageIfNeed(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->E()V

    return-void
.end method

.method public static final synthetic access$handleCoreAfterDocumentOpen(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->F()V

    return-void
.end method

.method public static final synthetic access$handleOpenDocumentException(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->G(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$importStashShapes(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->I()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initReaderViewSize(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->J()V

    return-void
.end method

.method public static final synthetic access$loadData(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->M()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadNoteAudioList(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->N()V

    return-void
.end method

.method public static final synthetic access$loadNoteData(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->P()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadReaderData(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->R()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$logMeasureTimeSinceBeginOpen(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$logTimeSinceBeginOpen(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->U(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$openDocument(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->V()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openNoteDocument(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->W()V

    return-void
.end method

.method public static final synthetic access$openVirtualDoc(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->X()V

    return-void
.end method

.method public static final synthetic access$postDocumentSuccessEvent(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->Y()V

    return-void
.end method

.method public static final synthetic access$preLoadNoteDataIf(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->Z(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    return-void
.end method

.method public static final synthetic access$preOpenReaderDocIf(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->a0(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    return-void
.end method

.method public static final synthetic access$prepareHWR(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->b0()V

    return-void
.end method

.method public static final synthetic access$prepareNoteData(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->c0()V

    return-void
.end method

.method public static final synthetic access$setVirtualDocOpenResultInfo$p(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    return-void
.end method

.method public static final synthetic access$updateContentViewSizeIf(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->e0()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateRotation(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->f0()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->H()V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->O(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->z(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->A(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->Q(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->S(Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .locals 4

    const-string v0, "$actionName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->INSTANCE:Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->endRequest$default(Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final z(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UI thread prepared"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->U(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final B()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->getSingleIO()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$ensureLoadCustomFonts$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$ensureLoadCustomFonts$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$z;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$z;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final C()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$exportToDBFromPB$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$exportToDBFromPB$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    const-string v1, "exportToDBFromPB"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final D()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getUseExternalViewSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "getContentViewSize start"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->U(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$b0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$b0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/page/GotoPageByIdRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/request/page/GotoPageByIdRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method

.method public final F()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$handleCoreAfterDocumentOpen$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$handleCoreAfterDocumentOpen$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    const-string v1, "handleCoreAfterDocumentOpen"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final G(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open document fail, docId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,exception:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/sunia/HTREnginev2/ahk;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/ahk;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    const-string v0, "importStashShapes start"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->U(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->buildFast()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$c0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$c0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$d0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$d0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final J()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/request/InitReaderViewSizeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/reader/request/InitReaderViewSizeRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method

.method public final K()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->isPreLoadData()Z

    move-result p0

    return p0
.end method

.method public final L()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final M()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    const-string v0, "loadData start"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->U(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->L()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$e0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$e0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$f0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$f0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final N()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteAudioList$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteAudioList$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    const-string v1, "loadNoteAudioList"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/wgk;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/wgk;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/util/List;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final P()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loadNoteData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    if-nez v1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$g0;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$g0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteData$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/zgk;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zgk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final R()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->i:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loadReaderData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$h0;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$h0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadReaderData$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadReaderData$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/xgk;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/xgk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    new-instance v2, Lkotlin/time/TimedValue;

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-direct {v2, p2, v0, v1, v3}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->j:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", functionTime = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkotlin/time/TimedValue;->getDuration-UwyO8pc()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", sinceBeginOpen"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final U(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->j:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final V()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$i0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$i0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$j0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$j0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$k0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$k0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$l0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$l0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$m0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$m0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final W()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    const-string v1, "openNoteDocument"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final X()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openVirtualDoc$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openVirtualDoc$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    const-string v1, "openVirtualDoc"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final Y()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final Z(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preLoadNoteData, pageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preLoadNoteDataIf$1$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preLoadNoteDataIf$1$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    :cond_1
    return-void
.end method

.method public final a0(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preOpenReaderDocIf$1;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$preOpenReaderDocIf$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    const-string p1, "preOpenReaderDoc"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final b0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HWRPrepareInitEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HWRPrepareInitEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public build()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/LooperKt;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->buildFast()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final c0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$prepareNoteData$1;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$prepareNoteData$1;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    const-string v0, "prepareNoteData"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ugk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ugk;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$u;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$u;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$v;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$v;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$w;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$w;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$x;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$x;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$y;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$y;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/vgk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vgk;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d0()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->INSTANCE:Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->toPerformanceStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", durationSinceCreateAction = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->j:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/utils/Benchmark;->durationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isPreLoadData = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->K()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->documentState(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->endOpenDoc(Ljava/lang/String;)V

    return-void
.end method

.method public final e0()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewSize(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content view size changed after opened. before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/ContentViewSizeChangedAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/ContentViewSizeChangedAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$n0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$n0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f0()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$o0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$o0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    return-object p0
.end method

.method public final s()V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setOpenDocArgs(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->h:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    return-void
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/ActivateReadingHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/ActivateReadingHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " beforeOpenDocument"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$p;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$q;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$r;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$s;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$t;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$t;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/ygk;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ygk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x()V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->INSTANCE:Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->beginOpenDoc()V

    return-void
.end method

.method public final y(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$checkContentValid$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    const-string p1, "checkContentValid"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->T(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method
