.class public final synthetic Lcom/sunia/HTREnginev2/all;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lio/reactivex/rxjava3/subjects/ReplaySubject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/all;->a:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/all;->a:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->l(Lio/reactivex/rxjava3/subjects/ReplaySubject;Ljava/lang/Exception;)V

    return-void
.end method
