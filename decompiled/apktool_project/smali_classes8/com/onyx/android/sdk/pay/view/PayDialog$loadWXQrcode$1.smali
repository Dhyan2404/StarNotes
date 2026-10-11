.class final Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/view/PayDialog;->X0()V
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
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
        "Landroid/graphics/Bitmap;",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;->invoke(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {v0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$getViewmodel(Lcom/onyx/android/sdk/pay/view/PayDialog;)Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {v0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$hideQRCodeLoading(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {v0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$getBinding$p(Lcom/onyx/android/sdk/pay/view/PayDialog;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivQrcode:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    invoke-static {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$getViewmodel(Lcom/onyx/android/sdk/pay/view/PayDialog;)Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->checkOrderStatusFromQrcode()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;->this$0:Lcom/onyx/android/sdk/pay/view/PayDialog;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->qrcode_load_fail_tips:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->access$showQrcodeTips(Lcom/onyx/android/sdk/pay/view/PayDialog;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
