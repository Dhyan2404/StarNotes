.class public abstract Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final flyHeader:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flyLoading:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flyQrcode:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flyQrcodeLoading:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flyStatus:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivQrcode:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivQrcodeLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llyAliPay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llyPayContain:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llyPayStatus:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llyQrcodeInvalid:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llyWechatPay:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvActualPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvLoading:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvOrderName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvOriginalPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvPay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvPayErrorMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvPayStatusTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvQrcodeTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvRetry:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewAliLine:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewWechatLine:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final wvQrcode:Landroid/webkit/WebView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/view/View;Landroid/view/View;Landroid/webkit/WebView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyHeader:Landroid/widget/FrameLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyLoading:Landroid/widget/FrameLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyQrcode:Landroid/widget/FrameLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyQrcodeLoading:Landroid/widget/FrameLayout;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->flyStatus:Landroid/widget/FrameLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivQrcode:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->ivQrcodeLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyAliPay:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayContain:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyPayStatus:Landroid/widget/LinearLayout;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyQrcodeInvalid:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->llyWechatPay:Landroid/widget/LinearLayout;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvActualPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvLoading:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvOrderName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvOriginalPrice:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayErrorMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatus:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvPayStatusTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvQrcodeTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->tvRetry:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->viewAliLine:Landroid/view/View;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->viewWechatLine:Landroid/view/View;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->wvQrcode:Landroid/webkit/WebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/android/sdk/pay/R$layout;->dialog_pay:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/android/sdk/pay/R$layout;->dialog_pay:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/onyx/android/sdk/pay/R$layout;->dialog_pay:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;

    return-object p0
.end method
