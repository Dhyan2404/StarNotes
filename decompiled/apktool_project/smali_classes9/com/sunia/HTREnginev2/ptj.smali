.class public final synthetic Lcom/sunia/HTREnginev2/ptj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Landroid/net/ConnectivityManager;

.field public final synthetic b:Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager;Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ptj;->a:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ptj;->b:Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ptj;->a:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ptj;->b:Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;->l(Landroid/net/ConnectivityManager;Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
