.class public final synthetic Lcom/sunia/HTREnginev2/p2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

.field public final synthetic g:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p2h;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/p2h;->f:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/p2h;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p2h;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/p2h;->f:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p2h;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->m(Ljava/util/concurrent/atomic/AtomicReference;Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V

    return-void
.end method
