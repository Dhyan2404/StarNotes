.class public final Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1;->invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/CounterView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1$a;->e:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/ResetCounterAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/ResetCounterAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1$a;->e:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/CounterView;)Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->resetState()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/ResetCounterAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1$a;->a(Lcom/onyx/galaxy/note/editor/action/counter/ResetCounterAction;)V

    return-void
.end method
