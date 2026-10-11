.class public interface abstract Lcom/sunia/HTREnginev2/fjp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzkn;->zzb:Lcom/google/android/gms/internal/play_billing/zzkn;

    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzkn;->zzc:Lcom/google/android/gms/internal/play_billing/zzkn;

    const-string v4, "com.android.vending.billing.ALTERNATIVE_BILLING"

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzkn;->zzd:Lcom/google/android/gms/internal/play_billing/zzkn;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzcr;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcr;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/play_billing/zzlq;)V
.end method

.method public abstract b(Lcom/google/android/gms/internal/play_billing/zzlu;)V
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzlu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract c(Lcom/google/android/gms/internal/play_billing/zzjz;)V
.end method

.method public abstract d(Lcom/google/android/gms/internal/play_billing/zzkd;I)V
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzkd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract e(Lcom/google/android/gms/internal/play_billing/zzkl;)V
.end method

.method public abstract f(Lcom/google/android/gms/internal/play_billing/zzjz;I)V
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzjz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract g(Lcom/google/android/gms/internal/play_billing/zzkd;)V
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzkd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
