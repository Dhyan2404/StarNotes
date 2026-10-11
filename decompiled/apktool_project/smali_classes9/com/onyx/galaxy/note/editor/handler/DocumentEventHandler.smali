.class public final Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;",
        "event",
        "",
        "onDocumentOpenSuccessEvent",
        "",
        "f",
        "I",
        "maxFontCheckSize",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.field public final f:I


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

    const/16 p1, 0x64

    iput p1, p0, Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;->f:I

    return-void
.end method

.method public static final synthetic access$getMaxFontCheckSize$p(Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;->f:I

    return p0
.end method


# virtual methods
.method public final onDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getFontCheckedDocumentListOption()Lcom/onyx/android/sdk/data/utils/StringListOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/StringListOption;->get()Lcom/onyx/android/sdk/base/extension/StringList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/extension/StringList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/editor/action/font/CheckDocumentFontAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler$a;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler$b;

    invoke-direct {v3, v0, p1, p0}, Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler$b;-><init>(Lcom/onyx/android/sdk/data/utils/StringListOption;Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;Lcom/onyx/galaxy/note/editor/handler/DocumentEventHandler;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeSilently(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
