.class public final synthetic Lcom/sunia/HTREnginev2/k2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/core/ObservableEmitter;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/core/ObservableEmitter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k2h;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k2h;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k2h;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k2h;->f:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;->l(Lio/reactivex/rxjava3/core/ObservableEmitter;Landroid/view/View;)V

    return-void
.end method
