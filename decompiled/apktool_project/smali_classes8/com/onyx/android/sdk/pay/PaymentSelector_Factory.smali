.class public final Lcom/onyx/android/sdk/pay/PaymentSelector_Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/pay/BasePayment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/pay/BasePayment;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/PaymentSelector_Factory;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/onyx/android/sdk/pay/PaymentSelector_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/pay/BasePayment;",
            ">;>;)",
            "Lcom/onyx/android/sdk/pay/PaymentSelector_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/pay/PaymentSelector_Factory;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/pay/PaymentSelector_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/Map;Ljava/lang/String;)Lcom/onyx/android/sdk/pay/PaymentSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/pay/BasePayment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/pay/PaymentSelector;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/pay/PaymentSelector;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/pay/PaymentSelector;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/PaymentSelector;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/PaymentSelector_Factory;->a:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/PaymentSelector_Factory;->newInstance(Ljava/util/Map;Ljava/lang/String;)Lcom/onyx/android/sdk/pay/PaymentSelector;

    move-result-object p0

    return-object p0
.end method
