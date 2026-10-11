.class public final Lcom/sunia/HTREnginev2/vmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/measurement/zzdo;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vmp;->e:Lcom/google/android/gms/internal/measurement/zzdo;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/vmp;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/vmp;->g:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sunia/HTREnginev2/vmp;->h:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vmp;->i:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vmp;->i:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vmp;->e:Lcom/google/android/gms/internal/measurement/zzdo;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/vmp;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/vmp;->g:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/vmp;->h:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
