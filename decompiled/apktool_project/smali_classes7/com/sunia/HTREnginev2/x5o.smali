.class public final synthetic Lcom/sunia/HTREnginev2/x5o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x5o;->e:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x5o;->e:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->l(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V

    return-void
.end method
