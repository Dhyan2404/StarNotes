.class public final synthetic Lcom/sunia/HTREnginev2/s0l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

.field public final synthetic f:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s0l;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s0l;->f:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s0l;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s0l;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->f(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
