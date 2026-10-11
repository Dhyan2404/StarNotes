.class public final Lcom/sunia/HTREnginev2/hip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hip;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hip;->b:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/BillingResult;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hip;->b:Lcom/android/billingclient/api/BillingResult;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hip;->a:Ljava/util/List;

    return-object p0
.end method
