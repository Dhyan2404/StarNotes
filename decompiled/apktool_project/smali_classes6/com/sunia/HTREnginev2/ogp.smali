.class public final Lcom/sunia/HTREnginev2/ogp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/qgp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/qgp;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ogp;->a:Lcom/sunia/HTREnginev2/qgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    instance-of p1, p1, Lcom/google/firebase/FirebaseNetworkException;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/firebase/auth/internal/zzan;->a()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failure to refresh token; scheduling refresh after failure"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ogp;->a:Lcom/sunia/HTREnginev2/qgp;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qgp;->f:Lcom/google/firebase/auth/internal/zzan;

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzan;->b()V

    :cond_0
    return-void
.end method
