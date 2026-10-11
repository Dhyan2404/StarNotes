.class public final Lcom/google/android/gms/measurement/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/j;->e:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j;->f:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->f:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/xjp;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzb;->zza(J)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->f:Lcom/google/android/gms/measurement/internal/zzlj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzlk;

    return-void
.end method
