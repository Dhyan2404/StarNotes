.class public final Lcom/onyx/android/sdk/universal/editor/eventhandler/NoteEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/eventhandler/NoteEventHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000cH\u0007J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000eH\u0017J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0012H\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/NoteEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "onActivityResumeEvent",
        "",
        "event",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityResumeEvent;",
        "onDocumentClosedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;",
        "onDocumentStateEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;",
        "onOpenNoteDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/OpenNoteDocumentEvent;",
        "onStartActivateDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method


# virtual methods
.method public final onActivityResumeEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ActivityResumeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ActivityResumeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->resetUIStateInfo()V

    return-void
.end method

.method public final onDocumentClosedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->onDocumentClosed()V

    return-void
.end method

.method public final onDocumentStateEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;->getDocumentState()Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->setDocumentState(Lcom/onyx/android/sdk/universal/editor/config/DocumentState;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;->getDocumentState()Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/eventhandler/NoteEventHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->onDocumentClosed()V

    :goto_0
    return-void
.end method

.method public onOpenNoteDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/note/OpenNoteDocumentEvent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/OpenNoteDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onStartActivateDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->stopScroll(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->toDummyProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->updateVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    return-void
.end method
