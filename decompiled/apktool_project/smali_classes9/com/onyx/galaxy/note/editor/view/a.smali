.class public final synthetic Lcom/onyx/galaxy/note/editor/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/CounterView;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/a;->e:Lcom/onyx/galaxy/note/editor/view/CounterView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/a;->e:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$refreshSplitTimeButtonRunnable$2;->a(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    return-void
.end method
