.class public final synthetic Lcom/android/billingclient/api/zzbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/h;

.field public final synthetic zzb:Landroid/app/Activity;

.field public final synthetic zzc:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/h;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbo;->zza:Lcom/android/billingclient/api/h;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbo;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbo;->zzc:Lcom/android/billingclient/api/BillingFlowParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzbo;->zza:Lcom/android/billingclient/api/h;

    iget-object v1, p0, Lcom/android/billingclient/api/zzbo;->zzb:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/billingclient/api/zzbo;->zzc:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-virtual {v0, v1, p0}, Lcom/android/billingclient/api/h;->G1(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method
