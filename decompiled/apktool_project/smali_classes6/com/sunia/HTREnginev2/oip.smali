.class public final Lcom/sunia/HTREnginev2/oip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/internal/zzby;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/zzby;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oip;->a:Lcom/google/firebase/auth/internal/zzby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/oip;->a:Lcom/google/firebase/auth/internal/zzby;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzby;->b(Lcom/google/firebase/auth/internal/zzby;Z)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oip;->a:Lcom/google/firebase/auth/internal/zzby;

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzby;->zza()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/oip;->a:Lcom/google/firebase/auth/internal/zzby;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzby;->b(Lcom/google/firebase/auth/internal/zzby;Z)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/oip;->a:Lcom/google/firebase/auth/internal/zzby;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzby;->d(Lcom/google/firebase/auth/internal/zzby;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oip;->a:Lcom/google/firebase/auth/internal/zzby;

    invoke-static {p0}, Lcom/google/firebase/auth/internal/zzby;->a(Lcom/google/firebase/auth/internal/zzby;)Lcom/google/firebase/auth/internal/zzan;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzan;->zzc()V

    :cond_1
    return-void
.end method
