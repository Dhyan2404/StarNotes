.class public final Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->loginByVerifyCode()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$f;->e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$f;->f:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$f;->e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$f;->f:Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->access$loginObservable(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$f;->a(Z)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
