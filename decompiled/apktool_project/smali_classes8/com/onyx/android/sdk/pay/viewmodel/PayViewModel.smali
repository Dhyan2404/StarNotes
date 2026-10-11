.class public final Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008[\u0010\\J*\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\"\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0004H\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0012\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0006\u0010\u001c\u001a\u00020\u0014J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u001eJ\u000e\u0010\"\u001a\u00020\u00122\u0006\u0010!\u001a\u00020 J\u0012\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00040#J\u0012\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040#J\u0012\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00040#J\u0006\u0010\'\u001a\u00020\u0012J\u0006\u0010(\u001a\u00020\u0012J\u0006\u0010)\u001a\u00020\u0012J\u0006\u0010*\u001a\u00020\u0012J\u0006\u0010+\u001a\u00020\u0012J\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010.\u001a\u00020\u00122\u0006\u0010-\u001a\u00020 R\u001d\u00105\u001a\u0008\u0012\u0004\u0012\u0002000/8\u0006\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R\u001d\u0010-\u001a\u0008\u0012\u0004\u0012\u00020 0/8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u00102\u001a\u0004\u00086\u00104R\u001d\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00190/8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u00102\u001a\u0004\u00088\u00104R\u0017\u0010?\u001a\u00020:8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u0017\u0010A\u001a\u00020:8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010<\u001a\u0004\u0008@\u0010>R\"\u0010H\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR$\u0010P\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010RR$\u0010Z\u001a\u0004\u0018\u00010T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010Y\u00a8\u0006]"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "data",
        "Lio/reactivex/rxjava3/core/Observable;",
        "l",
        "Lcom/onyx/android/sdk/pay/bean/PayBean;",
        "payInfo",
        "Landroid/graphics/Bitmap;",
        "o",
        "",
        "attachType",
        "Lcom/onyx/android/sdk/pay/data/PayArgs;",
        "p",
        "order",
        "",
        "q",
        "",
        "needRetry",
        "i",
        "Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;",
        "action",
        "Lcom/onyx/android/sdk/pay/data/PayStatusType;",
        "failedStatus",
        "r",
        "enableAlipay",
        "loadOrderInfo",
        "Landroidx/fragment/app/FragmentActivity;",
        "createNewOrder",
        "Lcom/onyx/android/sdk/pay/data/PayType;",
        "type",
        "togglePayType",
        "Landroidx/lifecycle/LiveData;",
        "loadAppPayInfo",
        "loadWXQRCodePayInfo",
        "loadAlipayQRCodePayInfo",
        "onPaySuccess",
        "onPayFail",
        "onPayFailWithoutRetry",
        "onPaySuccessWithoutRetry",
        "clean",
        "checkOrderStatusFromQrcode",
        "payType",
        "updatePayment",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/android/sdk/pay/data/PayModel;",
        "h",
        "Landroidx/lifecycle/MutableLiveData;",
        "getPayModel",
        "()Landroidx/lifecycle/MutableLiveData;",
        "payModel",
        "getPayType",
        "j",
        "getPayStatusType",
        "payStatusType",
        "",
        "k",
        "I",
        "getQrcodeHeight",
        "()I",
        "qrcodeHeight",
        "getQrcodeWidth",
        "qrcodeWidth",
        "m",
        "Ljava/lang/String;",
        "getOrderId",
        "()Ljava/lang/String;",
        "setOrderId",
        "(Ljava/lang/String;)V",
        "orderId",
        "Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "n",
        "Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "getOrderArgs",
        "()Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "setOrderArgs",
        "(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V",
        "orderArgs",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "qrcodePollingDispose",
        "Lcom/onyx/android/sdk/pay/BasePayment;",
        "Lcom/onyx/android/sdk/pay/BasePayment;",
        "getPayment",
        "()Lcom/onyx/android/sdk/pay/BasePayment;",
        "setPayment",
        "(Lcom/onyx/android/sdk/pay/BasePayment;)V",
        "payment",
        "<init>",
        "()V",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/pay/data/PayModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/pay/data/PayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/pay/data/PayStatusType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:I

.field public final l:I

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/pay/data/OrderArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lcom/onyx/android/sdk/pay/BasePayment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/pay/R$dimen;->qrcode_height:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->k:I

    sget v1, Lcom/onyx/android/sdk/pay/R$dimen;->qrcode_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$checkPaymentReady(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroid/app/Activity;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->l(Landroid/app/Activity;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createQRCode(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handlePayStatus(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/bean/OrderBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->q(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V

    return-void
.end method

.method public static final synthetic access$handlePollingStatus(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;Lcom/onyx/android/sdk/pay/data/PayStatusType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->r(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;Lcom/onyx/android/sdk/pay/data/PayStatusType;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->n(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->k(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->s(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)V

    return-void
.end method

.method public static final j(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->getOrder()Lcom/onyx/android/sdk/pay/bean/OrderBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->q(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V

    return-void
.end method

.method public static final k(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->n:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayResult;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/data/PayType;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/pay/data/PayResult;-><init>(Lcom/onyx/android/sdk/pay/data/PayType;)V

    sget-object p0, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->reportNormalPayResult(Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/data/PayResult;Z)V

    :cond_1
    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->loadOrderInfo(Landroid/app/Activity;)V

    return-void
.end method

.method public static final s(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->n:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->reportPayDialogView(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkOrderStatusFromQrcode()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$checkOrderStatusFromQrcode$1;->INSTANCE:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$checkOrderStatusFromQrcode$1;

    new-instance v2, Lcom/sunia/HTREnginev2/t0l;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/t0l;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$checkOrderStatusFromQrcode$3;->INSTANCE:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$checkOrderStatusFromQrcode$3;

    new-instance v2, Lcom/sunia/HTREnginev2/u0l;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/u0l;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final clean()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final createNewOrder(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->LOADING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$c;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$createNewOrder$2;->INSTANCE:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$createNewOrder$2;

    new-instance v2, Lcom/sunia/HTREnginev2/r0l;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/r0l;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/s0l;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/s0l;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final enableAlipay()Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->checkPackageExist(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getOrderArgs()Lcom/onyx/android/sdk/pay/data/OrderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->n:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    return-object p0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getPayModel()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/pay/data/PayModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPayStatusType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/pay/data/PayStatusType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPayType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/pay/data/PayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPayment()Lcom/onyx/android/sdk/pay/BasePayment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->p:Lcom/onyx/android/sdk/pay/BasePayment;

    return-object p0
.end method

.method public final getQrcodeHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->k:I

    return p0
.end method

.method public final getQrcodeWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->l:I

    return p0
.end method

.method public final i(Z)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_LATER_REMIND:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$a;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/data/PayStatusType;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$b;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/data/PayStatusType;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l(Landroid/app/Activity;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/PayBundle;->checkedPaymentReady(Landroid/app/Activity;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final loadAlipayQRCodePayInfo()Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/PayBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->p(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/data/PayArgs;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;-><init>()V

    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v3, Lcom/onyx/android/sdk/pay/action/LoadPayInfoAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/pay/action/LoadPayInfoAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/pay/data/PayArgs;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$e;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$e;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$f;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$f;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doOnError(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-object v1
.end method

.method public final loadAppPayInfo()Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/PayBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const-string v0, "app"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->p(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/data/PayArgs;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;-><init>()V

    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v3, Lcom/onyx/android/sdk/pay/action/LoadPayInfoAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/pay/action/LoadPayInfoAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/pay/data/PayArgs;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$g;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$g;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$h;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$h;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doOnError(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-object v1
.end method

.method public final loadOrderInfo(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->LOADING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/pay/action/LoadOrderInfoAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/action/LoadOrderInfoAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$i;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$i;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$j;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$j;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$k;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$k;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnNext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$loadOrderInfo$4;->INSTANCE:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$loadOrderInfo$4;

    new-instance v1, Lcom/sunia/HTREnginev2/v0l;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v0l;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadWXQRCodePayInfo()Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->o:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->p(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/data/PayArgs;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;-><init>()V

    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v3, Lcom/onyx/android/sdk/pay/action/LoadPayInfoAction;

    iget-object v4, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/onyx/android/sdk/pay/action/LoadPayInfoAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/pay/data/PayArgs;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v3, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$l;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$l;-><init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;)V

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$m;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$m;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$n;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$n;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doOnError(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-object v1
.end method

.method public final o(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/PayBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/pay/bean/PayBean;

    if-nez p1, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/PayBean;->getCodeUrl()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->l:I

    iget p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->k:I

    invoke-direct {v0, p1, v1, p0}, Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$d;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPayFail()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPayFailWithoutRetry()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_FAIL_WITHOUT_RETRY:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPaySuccess()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->CHECKING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i(Z)V

    return-void
.end method

.method public final onPaySuccessWithoutRetry()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->CHECKING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i(Z)V

    return-void
.end method

.method public final p(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/data/PayArgs;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pay/data/PayType;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/pay/data/PayAttachArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/pay/data/PayAttachArgs;-><init>()V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pay/data/PayAttachArgs;->setType(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/pay/data/PayArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/pay/data/PayArgs;-><init>()V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/pay/data/PayArgs;->setAttach(Lcom/onyx/android/sdk/pay/data/PayAttachArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/data/PayType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/pay/data/PayArgs;->setPayType(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    iget p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->l:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->px2DpFloat(F)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/pay/data/PayArgs;->setQrcodeWidth(Ljava/lang/Integer;)V

    :cond_1
    return-object p1
.end method

.method public final q(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->LOAD_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isUnpaid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isHuaweiIapPayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->HUAWEI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->OTHER_PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isGooglePayEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->GOOGLE:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->OTHER_PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pay/data/PayModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/data/PayModel;->setOrder(Lcom/onyx/android/sdk/pay/bean/OrderBean;)Lcom/onyx/android/sdk/pay/data/PayModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_SUCCESS:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/onyx/android/sdk/pay/data/PayModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/pay/data/PayModel;-><init>()V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pay/data/PayModel;->setOrder(Lcom/onyx/android/sdk/pay/bean/OrderBean;)Lcom/onyx/android/sdk/pay/data/PayModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->ORDER_CANCEL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->LOAD_FAIL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;Lcom/onyx/android/sdk/pay/data/PayStatusType;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->getOrder()Lcom/onyx/android/sdk/pay/bean/OrderBean;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isPaid()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_SUCCESS:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setOrderArgs(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/data/OrderArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->n:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    return-void
.end method

.method public final setOrderId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->m:Ljava/lang/String;

    return-void
.end method

.method public final setPayment(Lcom/onyx/android/sdk/pay/BasePayment;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/BasePayment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->p:Lcom/onyx/android/sdk/pay/BasePayment;

    return-void
.end method

.method public final togglePayType(Lcom/onyx/android/sdk/pay/data/PayType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pay/data/PayType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updatePayment(Lcom/onyx/android/sdk/pay/data/PayType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pay/data/PayType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "payType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/PayBundle;->getPayment(Lcom/onyx/android/sdk/pay/data/PayType;)Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->p:Lcom/onyx/android/sdk/pay/BasePayment;

    return-void
.end method
