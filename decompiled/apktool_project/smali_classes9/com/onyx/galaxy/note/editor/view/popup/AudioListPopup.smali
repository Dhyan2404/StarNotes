.class public final Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AudioListPopup\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,301:1\n41#2,5:302\n*S KotlinDebug\n*F\n+ 1 AudioListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AudioListPopup\n*L\n171#1:302,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001PB\u001f\u0012\u0006\u00106\u001a\u00020/\u0012\u0006\u0010<\u001a\u000207\u0012\u0006\u0010M\u001a\u00020L\u00a2\u0006\u0004\u0008N\u0010OJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J.\u0010\u0016\u001a\u00020\u00022\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0012\u0010\u0018\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u0019\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002J\u0012\u0010\u001a\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0016\u0010\u001d\u001a\u00020\u00022\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000eH\u0002J\u0016\u0010\u001e\u001a\u00020\u00022\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000eH\u0002J\u001a\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$J\u0012\u0010(\u001a\u00020\u00022\u0008\u0010\'\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010 \u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010 \u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010 \u001a\u00020-H\u0007R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u0017\u0010<\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\u001b\u0010@\u001a\u00020=8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010>\u001a\u0004\u00088\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0018\u0010%\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR$\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010K\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "A",
        "v",
        "O",
        "N",
        "P",
        "s",
        "Landroid/view/View;",
        "view",
        "",
        "pos",
        "L",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "anchorView",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "viewLocationPoint",
        "M",
        "selectedItem",
        "D",
        "E",
        "H",
        "F",
        "list",
        "G",
        "C",
        "",
        "event",
        "K",
        "I",
        "J",
        "Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;",
        "listener",
        "setListener",
        "anchor",
        "showAsDropDown",
        "Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameDoneEvent;",
        "onAudioRenameDoneEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameCancelEvent;",
        "onAudioRenameCancelEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameStartEvent;",
        "onAudioRenameStartEvent",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "editorBundle",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "getAudioDataSet",
        "()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "audioDataSet",
        "Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;",
        "t",
        "Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;",
        "adapter",
        "u",
        "Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;",
        "Landroid/view/View;",
        "getAnchorView",
        "()Landroid/view/View;",
        "setAnchorView",
        "(Landroid/view/View;)V",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;Landroid/content/Context;)V",
        "ItemChangedListener",
        "note_overseasRelease"
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
        "SMAP\nAudioListPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AudioListPopup\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,301:1\n41#2,5:302\n*S KotlinDebug\n*F\n+ 1 AudioListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AudioListPopup\n*L\n171#1:302,5\n*E\n"
    }
.end annotation


# instance fields
.field public q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;Landroid/content/Context;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioDataSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p3, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$binding$2;

    invoke-direct {p1, p3}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->s:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->A()V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;

    return-object p0
.end method

.method public static final synthetic access$onAudioItemDeleted(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->C(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onAudioLink(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->D(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public static final synthetic access$onAudioRecognize(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->E(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public static final synthetic access$removeAudioList(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->G(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$renameAudio(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->H(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public static final synthetic access$reportOperateEvent(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->K(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public static final synthetic access$showActionPopup(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/util/List;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->M(Ljava/util/List;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->y(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->w(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->z(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->u(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->x(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->B(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->L(Landroid/view/View;I)V

    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->onItemClick(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->P()V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->O()V

    const-string p1, "click_galaxy_audioRecord_0008"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->J(Ljava/lang/String;)V

    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->O()V

    const-string p1, "click_galaxy_audioRecord_0011"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->J(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->P()V

    return-void
.end method

.method public static final y(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->N()V

    const-string p1, "click_galaxy_audioRecord_0009"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->J(Ljava/lang/String;)V

    return-void
.end method

.method public static final z(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->F()V

    const-string p1, "click_galaxy_audioRecord_0010"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->J(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->s()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->v()V

    new-instance v0, Lcom/sunia/HTREnginev2/xh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public final C(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getAudioInfoList()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getAudioInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->P()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;->onItemChanged(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public final D(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/link/CreateAudioShapeLinkBeanAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$a;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$b;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$b;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final E(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const-string v1, "onAudioRecognize click"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void
.end method

.method public final F()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->G(Ljava/util/List;)V

    return-void
.end method

.method public final G(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$c;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final H(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v6, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getAudioInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "record_amount"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "view_galaxy_audioRecord_0005"

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final K(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->getRecordIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "record_id"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->msToSecLong(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "record_times"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    filled-new-array {v0, p2}, [Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final L(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->v:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {v1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget p1, p1, v3

    int-to-float p1, p1

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getAudioPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/audio/FindAudioShapesAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/audio/FindAudioShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final M(Ljava/util/List;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Landroid/view/View;",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;

    invoke-direct {v3, p0, p3, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;-><init>(Landroid/content/Context;ZLcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p4

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/TouchPoint;IIILjava/lang/Object;)V

    const-string p1, "view_galaxy_audioRecord_0006"

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->K(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public final N()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->toggleSelectAll()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->P()V

    return-void
.end method

.method public final O()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->toggleSelectionMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->selection:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->selectionLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->hasItemContains()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->recyclerView:Lcom/aitsuki/swipe/SwipeMenuRecyclerView;

    invoke-virtual {p0}, Lcom/aitsuki/swipe/SwipeMenuRecyclerView;->closeMenus()V

    return-void
.end method

.method public final P()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->isAllItemSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->hasItemContains()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->v:Landroid/view/View;

    return-object p0
.end method

.method public final getAudioDataSet()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final onAudioRenameCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameCancelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "click_galaxy_audioRecord_0014"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameCancelEvent;->getAudioInfoBean()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->K(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public final onAudioRenameDoneEvent(Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "click_galaxy_audioRecord_0015"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameDoneEvent;->getAudioInfoBean()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->K(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public final onAudioRenameStartEvent(Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameStartEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameStartEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view_galaxy_audioRecord_0007"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameStartEvent;->getAudioInfoBean()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->K(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public final r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    return-object p0
.end method

.method public final s()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    iget-object v2, v0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getAudioInfoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v3, v0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    sget v4, Lcom/onyx/galaxy/note/R$id;->more_settings:I

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/vh;

    invoke-direct {v7, v0}, Lcom/sunia/HTREnginev2/vh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v10, v0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    sget v11, Lcom/onyx/galaxy/note/R$id;->rl_content_layout:I

    const-wide/16 v12, 0x0

    new-instance v14, Lcom/sunia/HTREnginev2/wh;

    invoke-direct {v14, v0}, Lcom/sunia/HTREnginev2/wh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$initAudioListView$3;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$initAudioListView$3;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;->setListener(Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter$ItemSelectionListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->recyclerView:Lcom/aitsuki/swipe/SwipeMenuRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->recyclerView:Lcom/aitsuki/swipe/SwipeMenuRecyclerView;

    iget-object v0, v0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->t:Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->v:Landroid/view/View;

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->v:Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->I()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final v()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->selection:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "selection"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/yh;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/yh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "finish"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/zh;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/zh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "selectAll"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/ai;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ai;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->r()Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioListBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "delete"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/bi;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/bi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method
