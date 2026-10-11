.class public final Lcom/sunia/HTREnginev2/upp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzmq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzmq;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/upp;->e:Lcom/google/android/gms/measurement/internal/zzmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/upp;->e:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmq;->g:Lcom/google/android/gms/measurement/internal/zzls;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/upp;->e:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzmq;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zza()Landroid/content/Context;

    move-result-object p0

    const-string v2, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzls;->d(Lcom/google/android/gms/measurement/internal/zzls;Landroid/content/ComponentName;)V

    return-void
.end method
