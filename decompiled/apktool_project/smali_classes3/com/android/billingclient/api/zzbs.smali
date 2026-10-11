.class public final synthetic Lcom/android/billingclient/api/zzbs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/h;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbs;->zza:Lcom/android/billingclient/api/h;

    iput p2, p0, Lcom/android/billingclient/api/zzbs;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzr;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzbs;->zza:Lcom/android/billingclient/api/h;

    iget p0, p0, Lcom/android/billingclient/api/zzbs;->zzb:I

    invoke-virtual {v0, p0, p1}, Lcom/android/billingclient/api/h;->t1(ILcom/google/android/gms/internal/play_billing/zzr;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
