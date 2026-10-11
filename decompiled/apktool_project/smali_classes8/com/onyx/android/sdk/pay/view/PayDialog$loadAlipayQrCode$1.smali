.class final Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/view/PayDialog;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
        "Lcom/onyx/android/sdk/pay/bean/PayBean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n262#2,2:595\n*S KotlinDebug\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1\n*L\n496#1:595,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lcom/onyx/android/sdk/pay/bean/PayBean;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPayDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n262#2,2:595\n*S KotlinDebug\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1\n*L\n496#1:595,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;->invoke(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/PayBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {v0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$getViewmodel(Lcom/onyx/android/sdk/pay/view/PayDialog;)Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/pay/bean/PayBean;

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {v0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$getBinding$p(Lcom/onyx/android/sdk/pay/view/PayDialog;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->wvQrcode:Landroid/webkit/WebView;

    const-string v1, "wvQrcode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$showAlipayQrcode(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/bean/PayBean;)V

    .line 7
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$getViewmodel(Lcom/onyx/android/sdk/pay/view/PayDialog;)Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->checkOrderStatusFromQrcode()V

    goto :goto_2

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$hideQRCodeLoading(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    .line 9
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->qrcode_load_fail_tips:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$showQrcodeTips(Lcom/onyx/android/sdk/pay/view/PayDialog;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
