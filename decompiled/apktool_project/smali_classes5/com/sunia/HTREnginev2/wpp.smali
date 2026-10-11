.class public final Lcom/sunia/HTREnginev2/wpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zznv;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzmy;Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wpp;->e:Lcom/google/android/gms/measurement/internal/zznv;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/wpp;->f:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wpp;->e:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->h0()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wpp;->e:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/wpp;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->u(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wpp;->e:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->l0()V

    return-void
.end method
