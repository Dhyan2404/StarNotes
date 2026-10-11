.class public final Lcom/sunia/HTREnginev2/tpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzmq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzmq;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tpp;->e:Lcom/google/android/gms/measurement/internal/zzmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tpp;->e:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmq;->g:Lcom/google/android/gms/measurement/internal/zzls;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzls;->e(Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/measurement/internal/zzgb;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tpp;->e:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzmq;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzls;->o(Lcom/google/android/gms/measurement/internal/zzls;)V

    return-void
.end method
