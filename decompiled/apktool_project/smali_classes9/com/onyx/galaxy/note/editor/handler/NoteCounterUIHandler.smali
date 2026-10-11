.class public final Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010!\u001a\u00020\u001e\u00a2\u0006\u0004\u0008+\u0010,J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u000cH\u0007J(\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001e\u0010*\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
        "",
        "init",
        "destroy",
        "Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;",
        "event",
        "onShowCounterEvent",
        "Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;",
        "onShowCounterTipsEvent",
        "Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;",
        "onCounterSegmentDoneEvent",
        "Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;",
        "onCounterDoneEvent",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "counterBundle",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "",
        "isShow",
        "isExpand",
        "c",
        "",
        "type",
        "b",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;",
        "a",
        "e",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "f",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "fragment",
        "Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;",
        "g",
        "Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;",
        "counterWindow",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;",
        "h",
        "Ljava/lang/ref/WeakReference;",
        "counterTipsWindow",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->init()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getCounterWindowLocationOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/galaxy/note/editor/data/CounterEntry;I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->h:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->dismiss()V

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorContainerRect$note_overseasRelease()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Landroid/app/Activity;Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->h:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTaskModel()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->getCountTimes()I

    move-result p1

    sget-object p2, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getCountList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/onyx/galaxy/note/utils/CounterUtils;->getFormatedSegmentName(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->showCountDownEndOne(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTaskModel()Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->showCountDownEnd(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V

    :goto_0
    return-void
.end method

.method public final c(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->g:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->dismiss()V

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    invoke-direct {v1, p1, p2}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    if-eqz p3, :cond_2

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->a()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;

    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->getX()I

    move-result p3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->getY()I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorContainerRect$note_overseasRelease()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, v0, p2, p1, p4}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->show(Landroid/app/Activity;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->dismiss()V

    :goto_0
    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->g:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->g:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->g:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->g:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->h:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCounterDoneEvent(Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->isManualStop()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;->getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->b(Lcom/onyx/galaxy/note/editor/data/CounterEntry;I)V

    :cond_1
    return-void
.end method

.method public final onCounterSegmentDoneEvent(Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/CounterSegmentDoneEvent;->getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->b(Lcom/onyx/galaxy/note/editor/data/CounterEntry;I)V

    return-void
.end method

.method public final onShowCounterEvent(Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->getShow()Z

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;->isExpand()Z

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->c(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V

    return-void
.end method

.method public final onShowCounterTipsEvent(Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;->getCounterEntry()Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ShowCounterTipsEvent;->getType()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/handler/NoteCounterUIHandler;->b(Lcom/onyx/galaxy/note/editor/data/CounterEntry;I)V

    return-void
.end method
