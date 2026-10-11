.class public final synthetic Lcom/android/billingclient/api/zzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/a;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/util/List;

.field public final synthetic zzd:Lcom/android/billingclient/api/SkuDetailsResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzz;->zza:Lcom/android/billingclient/api/a;

    iput-object p2, p0, Lcom/android/billingclient/api/zzz;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/zzz;->zzc:Ljava/util/List;

    iput-object p5, p0, Lcom/android/billingclient/api/zzz;->zzd:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/billingclient/api/zzz;->zza:Lcom/android/billingclient/api/a;

    iget-object v1, p0, Lcom/android/billingclient/api/zzz;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/zzz;->zzc:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/a;->Y0(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ujp;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ujp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ujp;->c()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/billingclient/api/zzz;->zzd:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-interface {p0, v1, v0}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object v3
.end method
