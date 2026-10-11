.class public final Lcom/sunia/HTREnginev2/eap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/fap;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/fap;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eap;->e:Lcom/sunia/HTREnginev2/fap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eap;->e:Lcom/sunia/HTREnginev2/fap;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fap;->a:Lcom/google/android/gms/common/api/internal/zabq;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zabq;->o(Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zabq;->o(Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, " disconnecting because it was signed out."

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void
.end method
