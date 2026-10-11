.class public final synthetic Lcom/sunia/HTREnginev2/fll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fll;->a:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fll;->a:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;

    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->l(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
