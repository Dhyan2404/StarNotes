.class final Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$initListener$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "<anonymous parameter 1>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$initListener$2$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/ui/CommonDialog;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$initListener$2$1;->invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/CommonDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$initListener$2$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->getCallback()Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;->onDelete()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$initListener$2$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->setCallback(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;)V

    return-void
.end method
