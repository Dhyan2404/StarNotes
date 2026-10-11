.class public final synthetic Lcom/google/android/gms/measurement/internal/zzmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic e:Lcom/google/android/gms/measurement/internal/zzmy;

.field public synthetic f:Lcom/google/android/gms/measurement/internal/zzgo;

.field public synthetic g:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzmy;Lcom/google/android/gms/measurement/internal/zzgo;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmx;->e:Lcom/google/android/gms/measurement/internal/zzmy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmx;->f:Lcom/google/android/gms/measurement/internal/zzgo;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmx;->g:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmx;->e:Lcom/google/android/gms/measurement/internal/zzmy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmx;->f:Lcom/google/android/gms/measurement/internal/zzgo;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzmx;->g:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzmy;->b(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/app/job/JobParameters;)V

    return-void
.end method
