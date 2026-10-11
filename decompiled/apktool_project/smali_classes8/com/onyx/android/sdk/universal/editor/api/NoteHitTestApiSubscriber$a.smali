.class public final Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->onLongPressEvent(Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$a;->e:Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$a;->e:Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;->getStartDragExcerptTimerKey()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->setStartDragExcerptTimerKey(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$a;->a(Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;)V

    return-void
.end method
