.class public final Lcom/sunia/HTREnginev2/pip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzej;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/android/billingclient/api/h;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/h;ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0

    iput p2, p0, Lcom/sunia/HTREnginev2/pip;->d:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/pip;->a:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/pip;->b:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pip;->c:Lcom/android/billingclient/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const-string v1, "BillingClientTesting"

    const/16 v2, 0x1c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pip;->c:Lcom/android/billingclient/api/h;

    const/16 v3, 0x72

    sget-object v4, Lcom/android/billingclient/api/i;->G:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v3, v2, v4}, Lcom/android/billingclient/api/h;->u1(Lcom/android/billingclient/api/h;IILcom/android/billingclient/api/BillingResult;)V

    const-string v0, "Asynchronous call to Billing Override Service timed out."

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/pip;->c:Lcom/android/billingclient/api/h;

    const/16 v3, 0x6b

    sget-object v4, Lcom/android/billingclient/api/i;->G:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v3, v2, v4}, Lcom/android/billingclient/api/h;->u1(Lcom/android/billingclient/api/h;IILcom/android/billingclient/api/BillingResult;)V

    const-string v0, "An error occurred while retrieving billing override."

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/pip;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pip;->c:Lcom/android/billingclient/api/h;

    invoke-static {v1, v0}, Lcom/android/billingclient/api/h;->q1(Lcom/android/billingclient/api/h;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sunia/HTREnginev2/pip;->d:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/android/billingclient/api/h;->s1(Lcom/android/billingclient/api/h;II)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pip;->a:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/pip;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
