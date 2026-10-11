.class public final Lcom/onyx/android/sdk/pay/interfaces/IPaymentIAP$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pay/interfaces/IPaymentIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic gotoThemePaymentActivity$default(Lcom/onyx/android/sdk/pay/interfaces/IPaymentIAP;Landroid/content/Context;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, -0x1

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/pay/interfaces/IPaymentIAP;->gotoThemePaymentActivity(Landroid/content/Context;Ljava/lang/String;II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: gotoThemePaymentActivity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
