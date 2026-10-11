.class public final synthetic Lcom/android/billingclient/api/zzbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/h;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbx;->zza:Lcom/android/billingclient/api/h;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzbx;->zza:Lcom/android/billingclient/api/h;

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/h;->n1(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
