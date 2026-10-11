.class public final synthetic Lcom/sunia/HTREnginev2/c5l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

.field public final synthetic f:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c5l;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/c5l;->f:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c5l;->e:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c5l;->f:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->n(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    return-void
.end method
