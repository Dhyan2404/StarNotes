.class public final synthetic Lcom/google/android/gms/measurement/internal/zzna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic e:Lcom/google/android/gms/measurement/internal/zzmy;

.field public synthetic f:I

.field public synthetic g:Lcom/google/android/gms/measurement/internal/zzgo;

.field public synthetic h:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzmy;ILcom/google/android/gms/measurement/internal/zzgo;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzna;->e:Lcom/google/android/gms/measurement/internal/zzmy;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzna;->f:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzna;->g:Lcom/google/android/gms/measurement/internal/zzgo;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzna;->h:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzna;->e:Lcom/google/android/gms/measurement/internal/zzmy;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzna;->f:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzna;->g:Lcom/google/android/gms/measurement/internal/zzgo;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzna;->h:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/measurement/internal/zzmy;->a(ILcom/google/android/gms/measurement/internal/zzgo;Landroid/content/Intent;)V

    return-void
.end method
