.class public final Lcom/sunia/HTREnginev2/nqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzok;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zznv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzok;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nqp;->e:Lcom/google/android/gms/measurement/internal/zzok;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nqp;->f:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nqp;->f:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nqp;->e:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->r(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzok;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nqp;->f:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzv()V

    return-void
.end method
