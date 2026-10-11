.class public final Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$onPay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->P0(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$onPay$1",
        "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;",
        "onPayResult",
        "",
        "result",
        "Lcom/onyx/android/sdk/pay/data/PayResult;",
        "onPaymentAgreement",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$onPay$1;->a:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayResult(Lcom/onyx/android/sdk/pay/data/PayResult;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pay/data/PayResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$onPay$1;->a:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->access$onPaySuccess(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    :cond_0
    return-void
.end method

.method public onPaymentAgreement()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$onPay$1;->a:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->access$handlePaymentAgreement(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    return-void
.end method
