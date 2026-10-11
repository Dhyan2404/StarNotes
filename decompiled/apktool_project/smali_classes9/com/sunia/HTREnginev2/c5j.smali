.class public final synthetic Lcom/sunia/HTREnginev2/c5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c5j;->e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/c5j;->f:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c5j;->e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c5j;->f:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    return-void
.end method
