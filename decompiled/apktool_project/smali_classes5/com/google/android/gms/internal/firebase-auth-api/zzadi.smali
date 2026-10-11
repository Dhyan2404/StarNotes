.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzadi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

.field private synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadl;

.field private synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Lcom/google/android/gms/internal/firebase-auth-api/zzadl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadl;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadl;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaci;

    invoke-interface {v1, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadl;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzaci;)V

    return-void
.end method
