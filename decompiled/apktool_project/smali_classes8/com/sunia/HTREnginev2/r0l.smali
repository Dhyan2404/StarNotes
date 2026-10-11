.class public final synthetic Lcom/sunia/HTREnginev2/r0l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r0l;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r0l;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->d(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Ljava/lang/String;)V

    return-void
.end method
