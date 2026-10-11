.class public final Lcom/onyx/android/sdk/pay/view/PayDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;,
        Lcom/onyx/android/sdk/pay/view/PayDialog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n262#2,2:595\n262#2,2:597\n262#2,2:599\n262#2,2:601\n283#2,2:603\n262#2,2:605\n262#2,2:607\n283#2,2:609\n262#2,2:611\n262#2,2:613\n262#2,2:615\n262#2,2:617\n283#2,2:619\n262#2,2:621\n262#2,2:623\n262#2,2:625\n262#2,2:627\n262#2,2:629\n283#2,2:631\n262#2,2:633\n262#2,2:635\n262#2,2:637\n262#2,2:639\n283#2,2:641\n262#2,2:643\n262#2,2:645\n262#2,2:647\n262#2,2:649\n262#2,2:651\n262#2,2:653\n262#2,2:655\n262#2,2:657\n262#2,2:659\n262#2,2:661\n262#2,2:663\n262#2,2:665\n262#2,2:667\n262#2,2:669\n262#2,2:671\n262#2,2:673\n262#2,2:675\n*S KotlinDebug\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog\n*L\n175#1:595,2\n187#1:597,2\n189#1:599,2\n211#1:601,2\n212#1:603,2\n221#1:605,2\n222#1:607,2\n231#1:609,2\n232#1:611,2\n236#1:613,2\n237#1:615,2\n238#1:617,2\n243#1:619,2\n244#1:621,2\n246#1:623,2\n247#1:625,2\n248#1:627,2\n249#1:629,2\n254#1:631,2\n255#1:633,2\n258#1:635,2\n259#1:637,2\n260#1:639,2\n265#1:641,2\n266#1:643,2\n268#1:645,2\n269#1:647,2\n270#1:649,2\n271#1:651,2\n277#1:653,2\n396#1:655,2\n402#1:657,2\n416#1:659,2\n417#1:661,2\n422#1:663,2\n445#1:665,2\n450#1:667,2\n472#1:669,2\n473#1:671,2\n489#1:673,2\n490#1:675,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001dB\u0011\u0012\u0008\u0008\u0002\u0010I\u001a\u00020D\u00a2\u0006\u0004\u0008b\u0010cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J \u0010\u0014\u001a\u00020\u00022\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0018\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0014\u0010!\u001a\u00020\u00022\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0008\u0010#\u001a\u00020\u0002H\u0002J\u0008\u0010$\u001a\u00020\u0002H\u0002J\u0008\u0010%\u001a\u00020\u0002H\u0002J\u0012\u0010\'\u001a\u00020\u00022\u0008\u0010&\u001a\u0004\u0018\u00010\u001fH\u0002J\u0008\u0010(\u001a\u00020\u0002H\u0002J\u0008\u0010)\u001a\u00020\u0002H\u0002J\u0008\u0010*\u001a\u00020\u0002H\u0002J\u0008\u0010+\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u0008\u0010-\u001a\u00020\u0002H\u0002J\u0008\u0010.\u001a\u00020\u0002H\u0002J\u0008\u00100\u001a\u00020/H\u0002J\u0010\u00101\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0008\u00102\u001a\u00020\u0002H\u0002J\u001a\u00104\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0008\u0002\u00103\u001a\u00020\u0015H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0007J\u0012\u0010:\u001a\u00020\u00022\u0008\u00109\u001a\u0004\u0018\u000108H\u0016J\u0008\u0010;\u001a\u00020\u0002H\u0016J$\u0010A\u001a\u00020@2\u0006\u0010=\u001a\u00020<2\u0008\u0010?\u001a\u0004\u0018\u00010>2\u0008\u00109\u001a\u0004\u0018\u000108H\u0016J\u001a\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020@2\u0008\u00109\u001a\u0004\u0018\u000108H\u0016R\u0017\u0010I\u001a\u00020D8\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR\u0014\u0010L\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0016\u0010P\u001a\u00020M8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001b\u0010V\u001a\u00020Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\u0016\u0010Y\u001a\u00020/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR$\u0010a\u001a\u0004\u0018\u00010Z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`\u00a8\u0006e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/view/PayDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "",
        "V0",
        "U0",
        "N0",
        "M0",
        "Lcom/onyx/android/sdk/pay/data/PayModel;",
        "model",
        "k1",
        "Lcom/onyx/android/sdk/pay/data/PayType;",
        "payType",
        "m1",
        "Lcom/onyx/android/sdk/pay/data/PayStatusType;",
        "type",
        "l1",
        "a1",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lcom/onyx/android/sdk/pay/bean/PayBean;",
        "payInfo",
        "E0",
        "",
        "B0",
        "payBean",
        "Lcom/onyx/android/sdk/pay/BasePayment;",
        "payment",
        "c1",
        "Y0",
        "Lcom/onyx/android/sdk/pay/data/PayResult;",
        "payResult",
        "F0",
        "",
        "title",
        "g1",
        "K0",
        "n1",
        "i1",
        "L0",
        "tips",
        "j1",
        "f1",
        "Z0",
        "X0",
        "W0",
        "d1",
        "z0",
        "C0",
        "",
        "A0",
        "J0",
        "b1",
        "showErrorMessage",
        "H0",
        "Lcom/onyx/android/sdk/pay/event/PayResultEvent;",
        "event",
        "onPayResultEvent",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "z1",
        "Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "getOrderArgs",
        "()Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "orderArgs",
        "A1",
        "Ljava/lang/String;",
        "orderId",
        "Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;",
        "B1",
        "Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;",
        "binding",
        "Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;",
        "C1",
        "Lkotlin/Lazy;",
        "D0",
        "()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;",
        "viewmodel",
        "D1",
        "J",
        "viewTime",
        "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;",
        "E1",
        "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;",
        "getListener",
        "()Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;",
        "setListener",
        "(Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V",
        "listener",
        "<init>",
        "(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V",
        "PayListener",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPayDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n262#2,2:595\n262#2,2:597\n262#2,2:599\n262#2,2:601\n283#2,2:603\n262#2,2:605\n262#2,2:607\n283#2,2:609\n262#2,2:611\n262#2,2:613\n262#2,2:615\n262#2,2:617\n283#2,2:619\n262#2,2:621\n262#2,2:623\n262#2,2:625\n262#2,2:627\n262#2,2:629\n283#2,2:631\n262#2,2:633\n262#2,2:635\n262#2,2:637\n262#2,2:639\n283#2,2:641\n262#2,2:643\n262#2,2:645\n262#2,2:647\n262#2,2:649\n262#2,2:651\n262#2,2:653\n262#2,2:655\n262#2,2:657\n262#2,2:659\n262#2,2:661\n262#2,2:663\n262#2,2:665\n262#2,2:667\n262#2,2:669\n262#2,2:671\n262#2,2:673\n262#2,2:675\n*S KotlinDebug\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog\n*L\n175#1:595,2\n187#1:597,2\n189#1:599,2\n211#1:601,2\n212#1:603,2\n221#1:605,2\n222#1:607,2\n231#1:609,2\n232#1:611,2\n236#1:613,2\n237#1:615,2\n238#1:617,2\n243#1:619,2\n244#1:621,2\n246#1:623,2\n247#1:625,2\n248#1:627,2\n249#1:629,2\n254#1:631,2\n255#1:633,2\n258#1:635,2\n259#1:637,2\n260#1:639,2\n265#1:641,2\n266#1:643,2\n268#1:645,2\n269#1:647,2\n270#1:649,2\n271#1:651,2\n277#1:653,2\n396#1:655,2\n402#1:657,2\n416#1:659,2\n417#1:661,2\n422#1:663,2\n445#1:665,2\n450#1:667,2\n472#1:669,2\n473#1:671,2\n489#1:673,2\n490#1:675,2\n*E\n"
    }
.end annotation


# instance fields
.field public final A1:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

.field public final C1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D1:J

.field public E1:Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/pay/view/PayDialog;-><init>(Lcom/onyx/android/sdk/pay/data/OrderArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pay/data/OrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orderArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->A1:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/onyx/android/sdk/pay/view/PayDialog$viewmodel$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$viewmodel$2;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->C1:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/pay/data/OrderArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Lcom/onyx/android/sdk/pay/data/OrderArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;-><init>(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V

    return-void
.end method

.method public static final G0()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/pay/R$string;->pay_cancel_tips:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic I0(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/data/PayResult;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/view/PayDialog;->H0(Lcom/onyx/android/sdk/pay/data/PayResult;Z)V

    return-void
.end method

.method public static final O0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayType;->ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->togglePayType(Lcom/onyx/android/sdk/pay/data/PayType;)V

    return-void
.end method

.method public static final P0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->togglePayType(Lcom/onyx/android/sdk/pay/data/PayType;)V

    return-void
.end method

.method public static final Q0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->b1()V

    return-void
.end method

.method public static final R0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->A0()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->reportPayDialogClose(Lcom/onyx/android/sdk/pay/data/OrderArgs;J)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->Z0()V

    return-void
.end method

.method public static final S0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->a1()V

    return-void
.end method

.method public static final T0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->loadOrderInfo(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/android/sdk/pay/view/PayDialog;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    return-object p0
.end method

.method public static final synthetic access$getViewmodel(Lcom/onyx/android/sdk/pay/view/PayDialog;)Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleAppPay(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/data/account/bean/DataResponse;Lcom/onyx/android/sdk/pay/data/PayType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/view/PayDialog;->E0(Lcom/onyx/android/sdk/data/account/bean/DataResponse;Lcom/onyx/android/sdk/pay/data/PayType;)V

    return-void
.end method

.method public static final synthetic access$handlePayResult(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/data/PayResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->F0(Lcom/onyx/android/sdk/pay/data/PayResult;)V

    return-void
.end method

.method public static final synthetic access$hideQRCodeLoading(Lcom/onyx/android/sdk/pay/view/PayDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->L0()V

    return-void
.end method

.method public static final synthetic access$showAlipayQrcode(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/bean/PayBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->d1(Lcom/onyx/android/sdk/pay/bean/PayBean;)V

    return-void
.end method

.method public static final synthetic access$showQrcodeTips(Lcom/onyx/android/sdk/pay/view/PayDialog;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->j1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateOrderInfo(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/data/PayModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->k1(Lcom/onyx/android/sdk/pay/data/PayModel;)V

    return-void
.end method

.method public static final synthetic access$updatePayStatusType(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/data/PayStatusType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->l1(Lcom/onyx/android/sdk/pay/data/PayStatusType;)V

    return-void
.end method

.method public static final synthetic access$updatePayType(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/data/PayType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->m1(Lcom/onyx/android/sdk/pay/data/PayType;)V

    return-void
.end method

.method public static final e1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic h1(Lcom/onyx/android/sdk/pay/view/PayDialog;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->g1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->e1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->T0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->R0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->S0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/pay/view/PayDialog;->G0()V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->P0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->Q0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->O0(Lcom/onyx/android/sdk/pay/view/PayDialog;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A0()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->D1:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final B0()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pay/data/PayType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/BasePayment;->isPaymentInstalled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    if-ne v0, p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/pay/R$string;->wx_not_exist_tips:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final C0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public final D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->C1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    return-object p0
.end method

.method public final E0(Lcom/onyx/android/sdk/data/account/bean/DataResponse;Lcom/onyx/android/sdk/pay/data/PayType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/PayBean;",
            ">;",
            "Lcom/onyx/android/sdk/pay/data/PayType;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/pay/bean/PayBean;

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/pay/view/PayDialog$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->A1:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p0, p1}, Lcom/onyx/android/sdk/pay/BasePayment;->gotoPayActivity(Landroid/content/Context;Lcom/onyx/android/sdk/pay/data/PayType;Ljava/lang/String;Lcom/onyx/android/sdk/pay/bean/PayBean;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/view/PayDialog;->c1(Lcom/onyx/android/sdk/pay/bean/PayBean;Lcom/onyx/android/sdk/pay/BasePayment;)V

    sget-object p1, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    iget-object p2, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->A0()J

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->reportAppPay(Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/data/PayType;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/view/PayDialog;->Y0(Lcom/onyx/android/sdk/pay/bean/PayBean;Lcom/onyx/android/sdk/pay/BasePayment;)V

    sget-object p1, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    iget-object p2, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->A0()J

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->reportAppPay(Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/data/PayType;J)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    return-void
.end method

.method public final F0(Lcom/onyx/android/sdk/pay/data/PayResult;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->J0(Lcom/onyx/android/sdk/pay/data/PayResult;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->getPayType()Lcom/onyx/android/sdk/pay/data/PayType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->HUAWEI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v3, v2}, Lcom/onyx/android/sdk/pay/view/PayDialog;->I0(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/data/PayResult;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->getPayType()Lcom/onyx/android/sdk/pay/data/PayType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->GOOGLE:Lcom/onyx/android/sdk/pay/data/PayType;

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, v4}, Lcom/onyx/android/sdk/pay/view/PayDialog;->H0(Lcom/onyx/android/sdk/pay/data/PayResult;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->getStatus()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->onPayFail()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_4

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/j0l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/j0l;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->loadOrderInfo(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->onPaySuccess()V

    :goto_1
    return-void
.end method

.method public final H0(Lcom/onyx/android/sdk/pay/data/PayResult;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->getStatus()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p2, :cond_1

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    iget-object p2, p2, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayErrorMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->onPayFailWithoutRetry()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->Z0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->Z0()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->onPaySuccessWithoutRetry()V

    :goto_0
    return-void
.end method

.method public final J0(Lcom/onyx/android/sdk/pay/data/PayResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->getPayType()Lcom/onyx/android/sdk/pay/data/PayType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->HUAWEI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->reportHuaweiPayResult(Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/data/PayResult;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->reportNormalPayResult(Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/data/PayResult;Z)V

    :goto_0
    return-void
.end method

.method public final K0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyLoading:Landroid/widget/FrameLayout;

    const-string v3, "flyLoading"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_3
    return-void
.end method

.method public final L0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyQrcodeLoading:Landroid/widget/FrameLayout;

    const-string v3, "flyQrcodeLoading"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivQrcodeLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_3
    return-void
.end method

.method public final M0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->A1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->setOrderId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->setOrderArgs(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/pay/view/PayDialog$initData$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$initData$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/android/sdk/pay/view/PayDialog$b;

    invoke-direct {v3, v2}, Lcom/onyx/android/sdk/pay/view/PayDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayStatusType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/pay/view/PayDialog$initData$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$initData$2;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/android/sdk/pay/view/PayDialog$b;

    invoke-direct {v3, v2}, Lcom/onyx/android/sdk/pay/view/PayDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/view/PayDialog$initData$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$initData$3;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/android/sdk/pay/view/PayDialog$b;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/pay/view/PayDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->loadOrderInfo(Landroid/app/Activity;)V

    return-void
.end method

.method public final N0()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyAliPay:Landroid/widget/LinearLayout;

    const-string v0, "llyAliPay"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/k0l;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/k0l;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v3, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyWechatPay:Landroid/widget/LinearLayout;

    const-string v0, "llyWechatPay"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/l0l;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/l0l;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v3, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyQrcodeInvalid:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "llyQrcodeInvalid"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/m0l;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/m0l;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v3, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivClose"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/n0l;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/n0l;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v3, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvPay"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/o0l;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/o0l;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    iget-object v2, v1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvRetry:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvRetry"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/p0l;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/p0l;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final U0()V
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/pay/R$string;->pay_agreement_tips:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/pay/R$string;->pay_agreement:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/onyx/android/sdk/pay/view/UnderLineSpan;

    sget v4, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    new-instance v4, Lcom/onyx/android/sdk/pay/view/PayDialog$initPayAgreement$underLineSpan$1;

    invoke-direct {v4, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$initPayAgreement$underLineSpan$1;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    invoke-direct {v1, v0, v4}, Lcom/onyx/android/sdk/pay/view/UnderLineSpan;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/16 v4, 0x21

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

.method public final V0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->U0()V

    return-void
.end method

.method public final W0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->wvQrcode:Landroid/webkit/WebView;

    const-string v3, "wvQrcode"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivQrcode:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivQrcode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->loadAlipayQRCodePayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$loadAlipayQrCode$1;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    new-instance p0, Lcom/onyx/android/sdk/pay/view/PayDialog$b;

    invoke-direct {p0, v2}, Lcom/onyx/android/sdk/pay/view/PayDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final X0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->wvQrcode:Landroid/webkit/WebView;

    const-string v3, "wvQrcode"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivQrcode:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivQrcode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->loadWXQRCodePayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$loadWXQrcode$1;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    new-instance v2, Lcom/onyx/android/sdk/pay/view/PayDialog$b;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/pay/view/PayDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final Y0(Lcom/onyx/android/sdk/pay/bean/PayBean;Lcom/onyx/android/sdk/pay/BasePayment;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/PayBean;->getOrderStr()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/pay/BasePayment;->getAliPayAction(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/action/BasePayAction;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "requireActivity(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/pay/action/BasePayAction;->setActivity(Landroid/app/Activity;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/pay/view/PayDialog$a;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$a;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final Z0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayStatusType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->CHECKING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/pay/data/PayResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/pay/data/PayType;

    if-nez v2, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/pay/data/PayResult;-><init>(Lcom/onyx/android/sdk/pay/data/PayType;)V

    sget-object v2, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAY_SUCCESS:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/pay/data/PayResult;->setStatus(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/pay/data/PayResult;->setStatus(I)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->E1:Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;->onPayResult(Lcom/onyx/android/sdk/pay/data/PayResult;)V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public final a1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayStatusType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->ORDER_CANCEL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->B0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/pay/R$string;->dialog_playing:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->g1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/pay/data/PayType;

    sget v2, Lcom/onyx/android/sdk/pay/R$string;->qrcode_invalid_tips:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->j1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->loadAppPayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/pay/view/PayDialog$onPayFromApp$1;

    invoke-direct {v3, p0, v1}, Lcom/onyx/android/sdk/pay/view/PayDialog$onPayFromApp$1;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;Lcom/onyx/android/sdk/pay/data/PayType;)V

    new-instance p0, Lcom/onyx/android/sdk/pay/view/PayDialog$b;

    invoke-direct {p0, v3}, Lcom/onyx/android/sdk/pay/view/PayDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final b1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayStatusType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayStatusType;->ORDER_CANCEL:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->createNewOrder(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->n1()V

    :goto_0
    return-void
.end method

.method public final c1(Lcom/onyx/android/sdk/pay/bean/PayBean;Lcom/onyx/android/sdk/pay/BasePayment;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/pay/BasePayment;->onWechatPay(Lcom/onyx/android/sdk/pay/bean/PayBean;)V

    return-void
.end method

.method public final d1(Lcom/onyx/android/sdk/pay/bean/PayBean;)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/PayBean;->getOrderStr()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v2, p1

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_1

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object v0, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->wvQrcode:Landroid/webkit/WebView;

    const-string p1, "wvQrcode"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string v1, "getSettings(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance p1, Lcom/onyx/android/sdk/pay/view/PayDialog$showAlipayQrcode$1;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/pay/view/PayDialog$showAlipayQrcode$1;-><init>(Lcom/onyx/android/sdk/pay/view/PayDialog;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    new-instance p0, Lcom/sunia/HTREnginev2/q0l;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q0l;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    const-string v3, "flyStatus"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/pay/R$string;->load_pay_fail:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatusTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v4, Lcom/onyx/android/sdk/pay/R$string;->load_pay_fail_tips:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/android/sdk/pay/R$drawable;->ic_pay_fail:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final g1(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->dialog_loading:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyLoading:Landroid/widget/FrameLayout;

    const-string v3, "flyLoading"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvLoading:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_4

    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_5
    return-void
.end method

.method public final getListener()Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->E1:Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;

    return-object p0
.end method

.method public final getOrderArgs()Lcom/onyx/android/sdk/pay/data/OrderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    return-object p0
.end method

.method public final i1()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyQrcodeInvalid:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "llyQrcodeInvalid"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyQrcodeLoading:Landroid/widget/FrameLayout;

    const-string v3, "flyQrcodeLoading"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivQrcodeLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_4
    return-void
.end method

.method public final j1(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v0, p1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/pay/R$string;->qrcode_refresh:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v1, Lcom/onyx/android/sdk/pay/view/PayDialog$showQrcodeTips$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/pay/view/PayDialog$showQrcodeTips$1;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    const/16 v2, 0x21

    invoke-virtual {v6, v1, v0, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvQrcodeTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyQrcodeInvalid:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string p1, "llyQrcodeInvalid"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final k1(Lcom/onyx/android/sdk/pay/data/PayModel;)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayModel;->getOrder()Lcom/onyx/android/sdk/pay/bean/OrderBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isUnpaid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isHuaweiIapPayEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isGooglePayEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->a1()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvOrderName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvActualPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->getFinalAmount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvOriginalPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->getTotalAmount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvOriginalPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvOriginalPrice"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->getFinalAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->getTotalAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvOriginalPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvOriginalPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isUnpaid()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->n1()V

    :cond_b
    return-void
.end method

.method public final l1(Lcom/onyx/android/sdk/pay/data/PayStatusType;)V
    .locals 11

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayStatusType;->PAYING:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->z0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->C0()V

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/pay/view/PayDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "tvPayStatus"

    const-string v1, "tvPayErrorMessage"

    const-string v2, "tvRetry"

    const-string v3, "tvPayStatusTips"

    const/4 v4, 0x4

    const-string v5, "llyPayContain"

    const-string v6, "flyStatus"

    const/4 v7, 0x0

    const/16 v8, 0x8

    const-string v9, "binding"

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_1
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_2

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v10, p1

    :goto_1
    iget-object p1, v10, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayContain:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->order_close_tips:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->j1(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_3

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_3
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayContain:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_4

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_4
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_5
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/pay/R$drawable;->ic_pay_fail:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_6

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_6
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_7

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_7
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatusTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_8

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_8
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvRetry:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_9
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayErrorMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_a

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v10, p1

    :goto_2
    iget-object p1, v10, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayErrorMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->pay_success_later_remind:I

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    goto/16 :goto_7

    :pswitch_2
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_b

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_b
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayContain:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_c

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_c
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_d

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_d
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/pay/R$drawable;->ic_pay_success:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_e

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_e
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v4, Lcom/onyx/android/sdk/pay/R$string;->pay_success:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_f

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_f
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatusTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_10

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_10
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvRetry:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_11

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    move-object v10, p1

    :goto_3
    iget-object p1, v10, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayErrorMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    goto/16 :goto_7

    :pswitch_3
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_12

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_12
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayContain:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_13

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_13
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_14

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_14
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/pay/R$drawable;->ic_pay_fail:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_15

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_15
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_16

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_16
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatusTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_17

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_17
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvRetry:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_18

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_18
    move-object v10, p1

    :goto_4
    iget-object p1, v10, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayErrorMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    goto/16 :goto_7

    :pswitch_4
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_19

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_19
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayContain:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_1a

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_1a
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_1b

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_1b
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/pay/R$drawable;->ic_pay_fail:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_1c

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_1c
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v4, Lcom/onyx/android/sdk/pay/R$string;->pay_fail:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_1d

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_1d
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatusTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v4, Lcom/onyx/android/sdk/pay/R$string;->pay_fail_tips:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_1e

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_1e
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatusTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_1f

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_1f
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvRetry:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_20

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_20
    move-object v10, p1

    :goto_5
    iget-object p1, v10, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayErrorMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    goto :goto_7

    :pswitch_5
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->dialog_playing:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->g1(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_21

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_21
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_22

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_22
    move-object v10, p1

    :goto_6
    iget-object p1, v10, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayContain:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->K0()V

    goto :goto_7

    :pswitch_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->f1()V

    goto :goto_7

    :pswitch_8
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_23

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_23
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_24

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v10

    :cond_24
    iget-object p1, p1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayContain:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-static {p0, v10, p1, v10}, Lcom/onyx/android/sdk/pay/view/PayDialog;->h1(Lcom/onyx/android/sdk/pay/view/PayDialog;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m1(Lcom/onyx/android/sdk/pay/data/PayType;)V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->updatePayment(Lcom/onyx/android/sdk/pay/data/PayType;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyAliPay:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/onyx/android/sdk/pay/data/PayType;->ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->viewAliLine:Landroid/view/View;

    const-string v6, "viewAliLine"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v3, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    const/16 v7, 0x8

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyWechatPay:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    if-ne p1, v6, :cond_6

    move v8, v4

    goto :goto_3

    :cond_6
    move v8, v5

    :goto_3
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->viewWechatLine:Landroid/view/View;

    const-string v8, "viewWechatLine"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v6, :cond_8

    move v6, v4

    goto :goto_4

    :cond_8
    move v6, v5

    :goto_4
    if-eqz v6, :cond_9

    move v7, v5

    :cond_9
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyQrcode:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_b

    goto :goto_5

    :cond_b
    move v4, v5

    :goto_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    if-ne p1, v3, :cond_d

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    move-object v1, p1

    :goto_6
    iget-object p1, v1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->alipay_app_pay:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_d
    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object v1, p1

    :goto_7
    iget-object p1, v1, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->wechat_app_pay:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/pay/data/PayModel;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayModel;->getOrder()Lcom/onyx/android/sdk/pay/bean/OrderBean;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isUnpaid()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->n1()V

    :cond_f
    return-void
.end method

.method public final n1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->i1()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->W0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->X0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffee

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez p1, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/pay/PayBundle;->unRegister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->B1:Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->wvQrcode:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->D0()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->clean()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->C0()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onPayResultEvent(Lcom/onyx/android/sdk/pay/event/PayResultEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pay/event/PayResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/event/PayResultEvent;->getResult()Lcom/onyx/android/sdk/pay/data/PayResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/view/PayDialog;->F0(Lcom/onyx/android/sdk/pay/data/PayResult;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->z1:Lcom/onyx/android/sdk/pay/data/OrderArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getOrderId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_560:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/extension/DialogKt;->setLayout(Landroid/app/Dialog;II)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->V0()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->N0()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/view/PayDialog;->M0()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->D1:J

    return-void
.end method

.method public final setListener(Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/view/PayDialog;->E1:Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;

    return-void
.end method

.method public final z0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method
