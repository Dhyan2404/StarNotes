.class public final synthetic Lcom/sunia/HTREnginev2/m4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic a:Lio/reactivex/rxjava3/subjects/ReplaySubject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m4h;->a:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m4h;->a:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;->m(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
