.class public final Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;->onShowLongPressPopupEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ShowLongPressPopupEvent;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->getLongPressPopup()Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;->access$setLongPressPopup$p(Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler;Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/LongPressEventHandler$a;->a(Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;)V

    return-void
.end method
