.class public final synthetic Lcom/sunia/HTREnginev2/q2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

.field public final synthetic f:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q2h;->e:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q2h;->f:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q2h;->e:Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q2h;->f:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->l(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V

    return-void
.end method
