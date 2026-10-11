.class public final Lcom/onyx/galaxy/note/editor/view/CounterView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/CounterView;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$a;->e:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$a;->e:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/CounterView;)Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->isEnableAutoCollapse()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$a;->e:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/CounterView;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/CounterView;)Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCounterViewBinding;->counterTimeList:Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/CounterTimeListView;->setExpand(Z)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$a;->e:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView;->refreshUI()V

    return-void
.end method
