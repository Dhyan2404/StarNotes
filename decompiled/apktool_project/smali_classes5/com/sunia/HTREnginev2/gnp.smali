.class public final Lcom/sunia/HTREnginev2/gnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/measurement/zzdo;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzdo;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gnp;->e:Lcom/google/android/gms/internal/measurement/zzdo;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/gnp;->f:Lcom/google/android/gms/measurement/internal/zzbf;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/gnp;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gnp;->h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gnp;->h:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gnp;->e:Lcom/google/android/gms/internal/measurement/zzdo;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/gnp;->f:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gnp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V

    return-void
.end method
