.class public final synthetic Lcom/android/billingclient/api/zzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/a;

.field public final synthetic zzb:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzp;->zza:Lcom/android/billingclient/api/a;

    iput-object p2, p0, Lcom/android/billingclient/api/zzp;->zzb:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzp;->zza:Lcom/android/billingclient/api/a;

    iget-object p0, p0, Lcom/android/billingclient/api/zzp;->zzb:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/a;->h0(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
