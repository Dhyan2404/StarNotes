.class public final synthetic Lcom/sunia/HTREnginev2/hll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hll;->a:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hll;->a:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->n(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Ljava/lang/Exception;)V

    return-void
.end method
