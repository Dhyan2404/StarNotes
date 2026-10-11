.class public final Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$a;->e:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$a;->e:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$a;->e:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/DismissExcerptPopupEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/DismissExcerptPopupEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$a;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
