.class public final Lcom/sunia/HTREnginev2/ijp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/billingclient/api/BillingResult;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ijp;->a:Lcom/android/billingclient/api/BillingResult;

    iput p2, p0, Lcom/sunia/HTREnginev2/ijp;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/BillingResult;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ijp;->a:Lcom/android/billingclient/api/BillingResult;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/ijp;->b:I

    return p0
.end method
