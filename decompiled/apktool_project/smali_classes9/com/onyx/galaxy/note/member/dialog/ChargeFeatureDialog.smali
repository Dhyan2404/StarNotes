.class public final Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChargeFeatureDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,383:1\n256#2,2:384\n256#2,2:386\n256#2,2:388\n256#2,2:394\n256#2,2:396\n256#2,2:398\n256#2,2:400\n1549#3:390\n1620#3,3:391\n215#4,2:402\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog\n*L\n202#1:384,2\n209#1:386,2\n217#1:388,2\n236#1:394,2\n244#1:396,2\n247#1:398,2\n255#1:400,2\n228#1:390\n228#1:391,3\n289#1:402,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 F2\u00020\u0001:\u0001FB\u0007\u00a2\u0006\u0004\u0008D\u0010EJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J$\u0010$\u001a\u00020#2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020#2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010\'\u001a\u00020\u0002H\u0016J\u0008\u0010(\u001a\u00020\u0002H\u0016R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010?\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006G"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "",
        "J0",
        "I0",
        "A0",
        "C0",
        "H0",
        "D0",
        "z0",
        "U0",
        "S0",
        "V0",
        "Lcom/onyx/galaxy/note/member/data/ChargeProduct;",
        "product",
        "K0",
        "",
        "index",
        "T0",
        "L0",
        "M0",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "order",
        "P0",
        "Q0",
        "O0",
        "y0",
        "",
        "x0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "onPause",
        "onDestroy",
        "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;",
        "z1",
        "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;",
        "chargeFeature",
        "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;",
        "A1",
        "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;",
        "featureChargeArgs",
        "Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;",
        "B1",
        "Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;",
        "C1",
        "Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;",
        "featuresAdapter",
        "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;",
        "D1",
        "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;",
        "featuresResourceAdapter",
        "E1",
        "J",
        "viewTime",
        "Lcom/onyx/galaxy/note/member/data/Feature;",
        "F1",
        "Lcom/onyx/galaxy/note/member/data/Feature;",
        "currentFeature",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
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
        "SMAP\nChargeFeatureDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,383:1\n256#2,2:384\n256#2,2:386\n256#2,2:388\n256#2,2:394\n256#2,2:396\n256#2,2:398\n256#2,2:400\n1549#3:390\n1620#3,3:391\n215#4,2:402\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog\n*L\n202#1:384,2\n209#1:386,2\n217#1:388,2\n236#1:394,2\n244#1:396,2\n247#1:398,2\n255#1:400,2\n228#1:390\n228#1:391,3\n289#1:402,2\n*E\n"
    }
.end annotation


# static fields
.field public static final CHARGE_CLICK_DURATION:J = 0xbb8L

.field public static final CHARGE_FEATURE_ARGS_DATA:Ljava/lang/String; = "CHARGE_FEATURE_ARGS_DATA"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CHARGE_FEATURE_DATA:Ljava/lang/String; = "CHARGE_FEATURE_DATA"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

.field public B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

.field public C1:Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;

.field public D1:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

.field public E1:J

.field public F1:Lcom/onyx/galaxy/note/member/data/Feature;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->Companion:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final B0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->T0(I)V

    return-void
.end method

.method public static final E0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->L0()V

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->M0()V

    return-void
.end method

.method public static final G0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->O0()V

    return-void
.end method

.method public static final N0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->llyCharge:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static final R0()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    sget-object v1, Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    return-object p0
.end method

.method public static final synthetic access$handlePaymentAgreement(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->y0()V

    return-void
.end method

.method public static final synthetic access$onPay(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Lcom/onyx/android/sdk/pay/bean/OrderBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->P0(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V

    return-void
.end method

.method public static final synthetic access$onPaySuccess(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->Q0()V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->N0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->E0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->F0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->G0(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->R0()V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 10

    new-instance v0, Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->C1:Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->rvFeatures:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->C1:Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;

    const-string v4, "featuresAdapter"

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->C1:Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    new-instance v3, Lcom/sunia/HTREnginev2/nrd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/nrd;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->rvFeatures:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "rvFeatures"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "requireContext(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/android/sdk/device/R$dimen;->dp_32:I

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->addMaterialItemDecoration$default(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->rvFeatures:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public final C0()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->D1:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->rvFeatureResource:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->D1:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    if-nez v3, :cond_1

    const-string v3, "featuresResourceAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->rvFeatureResource:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$initFeatureResourceAdapter$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$initFeatureResourceAdapter$1;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public final D0()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->ivBanner:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivBanner"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/krd;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/krd;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->llyCharge:Landroid/widget/LinearLayout;

    const-string v3, "llyCharge"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/sunia/HTREnginev2/lrd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/lrd;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    const-wide/16 v4, 0xbb8

    invoke-static {v0, v4, v5, v3}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivClose"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/mrd;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/mrd;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final H0()V
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/pay/R$string;->pay_agreement_tips:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/pay/R$string;->pay_agreement:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$initPayAgreement$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$initPayAgreement$1;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/16 v4, 0x21

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

.method public final I0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->C0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->H0()V

    return-void
.end method

.method public final J0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_560:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/extension/DialogKt;->setLayout(Landroid/app/Dialog;II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public final K0(Lcom/onyx/galaxy/note/member/data/ChargeProduct;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/data/ChargeProduct;->getGoogleProductId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/pay/PayBundle;->getProductInfoByProductIdAction(Landroid/content/Context;Ljava/util/List;)Lcom/onyx/android/sdk/pay/action/BasePayAction;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvActive:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvActive"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$a;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$b;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final L0()V
    .locals 13

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    if-nez p0, :cond_0

    const-string p0, "chargeFeature"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getGuide()Lcom/onyx/galaxy/note/member/data/ChargeGuide;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/data/ChargeGuide;->getNavType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const-string v2, "Market"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/utils/Navigator;->navigate$default(Lcom/onyx/galaxy/note/utils/Navigator;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v9, Lcom/onyx/android/sdk/base/extension/StringMap;

    invoke-direct {v9}, Lcom/onyx/android/sdk/base/extension/StringMap;-><init>()V

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/data/ChargeGuide;->getWebLink()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const-string v8, "WebUrl"

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/galaxy/note/utils/Navigator;->navigate$default(Lcom/onyx/galaxy/note/utils/Navigator;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/onyx/android/sdk/base/extension/StringMap;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/extension/StringMap;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/data/ChargeGuide;->getArgs()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/data/ChargeGuide;->getAppPage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/utils/Navigator;->navigate$default(Lcom/onyx/galaxy/note/utils/Navigator;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final M0()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->llyCharge:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->D1:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    if-nez v0, :cond_1

    const-string v0, "featuresResourceAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->pausePlayer()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    if-nez v0, :cond_2

    const-string v0, "chargeFeature"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getProduct()Lcom/onyx/galaxy/note/member/data/ChargeProduct;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v2, Lcom/onyx/android/sdk/pay/data/OrderProductArgs;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeProduct;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/onyx/android/sdk/pay/data/OrderProductArgs;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;

    filled-new-array {v2}, [Lcom/onyx/android/sdk/pay/data/OrderProductArgs;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;-><init>(Ljava/util/List;)V

    sget-object v2, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->getQuotaInfo()Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->getDocCountIncludeDustbin()I

    move-result v2

    sget-object v3, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v4, Lcom/onyx/android/sdk/event/StatisticMemberPayDialogClickEvent;

    invoke-direct {v4, v2}, Lcom/onyx/android/sdk/event/StatisticMemberPayDialogClickEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/galaxy/note/member/action/CreateOrderAction;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/member/action/CreateOrderAction;-><init>(Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$c;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$c;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$d;->e:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/ord;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/ord;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->F1:Lcom/onyx/galaxy/note/member/data/Feature;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;->INSTANCE:Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;

    iget-object v3, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    if-nez v3, :cond_4

    const-string v3, "featureChargeArgs"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/Feature;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->x0()J

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;->reportChargeDialogOpen(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;Ljava/lang/String;J)V

    :cond_5
    return-void
.end method

.method public final O0()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;->INSTANCE:Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    if-nez v1, :cond_0

    const-string v1, "featureChargeArgs"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->x0()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;->reportChargeDialogClose(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;J)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public final P0(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->Q0()V

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/pay/data/OrderArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pay/data/OrderArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->getOrderNo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->setOrderId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    const/4 v1, 0x0

    const-string v2, "featureChargeArgs"

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->getFunctionFrom()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->setStatisticSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->getInterfaceFrom()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->setInterfaceFrom(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->getOperationCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->setOperationCode(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/common/action/PayAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$onPay$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$onPay$1;-><init>(Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/onyx/galaxy/note/common/action/PayAction;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final Q0()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/ReloadAccountAction;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/account/action/ReloadAccountAction;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/jrd;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/jrd;-><init>()V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doFinally(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->purchase_pro_success:I

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final S0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "chargeFeature"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getFeatures()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/member/data/Feature;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/member/data/Feature;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->C1:Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;

    if-nez v0, :cond_3

    const-string v0, "featuresAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addAll(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->T0(I)V

    return-void
.end method

.method public final T0(I)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "chargeFeature"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getFeatures()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/member/data/Feature;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    const-string v3, "binding"

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvSubTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/Feature;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->C1:Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;

    if-nez v2, :cond_3

    const-string v2, "featuresAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2, p1}, Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;->updateSelected(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->D1:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    if-nez p1, :cond_4

    const-string p1, "featuresResourceAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->updateFeatureResource(Lcom/onyx/galaxy/note/member/data/Feature;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->rvFeatureResource:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez p1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->chargeIndicator:Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/Feature;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :cond_7
    invoke-virtual {p1, v4}, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->updateIndicatorTotal(I)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->F1:Lcom/onyx/galaxy/note/member/data/Feature;

    :cond_8
    :goto_1
    return-void
.end method

.method public final U0()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    const-string v1, "chargeFeature"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getGuide()Lcom/onyx/galaxy/note/member/data/ChargeGuide;

    move-result-object v0

    const-string v3, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeGuide;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v3

    :cond_2
    iget-object v4, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    const-string v5, "binding"

    if-nez v4, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvProductTag:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v4, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvProductTag:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v6, "tvProductTag"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_0

    :cond_5
    move v0, v6

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v4, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    if-nez v4, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getGuide()Lcom/onyx/galaxy/note/member/data/ChargeGuide;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/member/data/ChargeGuide;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    goto :goto_1

    :cond_8
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getGuide()Lcom/onyx/galaxy/note/member/data/ChargeGuide;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeGuide;->getBanner()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    move-object v3, v0

    :cond_b
    :goto_2
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "llyFeatureContent"

    const-string v4, "ivBanner"

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->ivBanner:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/view/View;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/common/glide/GlideRequests;->load(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v3, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_d
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->ivBanner:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->ivBanner:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez p0, :cond_f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    move-object v2, p0

    :goto_3
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->llyFeatureContent:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_64:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    invoke-static {p0, v7, v0, v7, v7}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setMargins(Landroid/view/View;IIII)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_11

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->ivBanner:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez p0, :cond_12

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_12
    move-object v2, p0

    :goto_4
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->llyFeatureContent:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v7, v7, v7, v7}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setMargins(Landroid/view/View;IIII)V

    :goto_5
    return-void
.end method

.method public final V0()V
    .locals 11

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "chargeFeature"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getProduct()Lcom/onyx/galaxy/note/member/data/ChargeProduct;

    move-result-object v0

    const/16 v2, 0x8

    const-string v3, "llyProduct"

    const-string v4, "binding"

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez p0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->llyProduct:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeProduct;->getGoogleProductId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->K0(Lcom/onyx/galaxy/note/member/data/ChargeProduct;)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v5, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_5
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvFinalAmount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0xa5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeProduct;->getFinalAmount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v5, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_6
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvTotalAmount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeProduct;->getTotalAmount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v5, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_7
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvTotalAmount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v8, "tvTotalAmount"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeProduct;->getFinalAmount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/data/ChargeProduct;->getTotalAmount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_8

    move v2, v7

    :cond_8
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->llyProduct:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez v0, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvTotalAmount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    if-nez p0, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v1, p0

    :goto_3
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->tvTotalAmount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->B1:Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;

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

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->D1:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    if-nez v0, :cond_0

    const-string v0, "featuresResourceAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->stopPlayer()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->D1:Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;

    if-nez v0, :cond_0

    const-string v0, "featuresResourceAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;->pausePlayer()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

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

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "CHARGE_FEATURE_DATA"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const-class v1, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    invoke-virtual {p1, p2, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    if-nez p2, :cond_1

    new-instance p2, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    invoke-direct {p2}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v1, "CHARGE_FEATURE_ARGS_DATA"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    const-class v1, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-virtual {p1, p2, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    if-nez p1, :cond_3

    new-instance p1, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;-><init>()V

    :cond_3
    iput-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    iget-object p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z1:Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    if-nez p1, :cond_4

    const-string p1, "chargeFeature"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;->getFeatures()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->J0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->I0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->D0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->z0()V

    sget-object p1, Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;->INSTANCE:Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;

    iget-object p2, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    const-string v1, "featureChargeArgs"

    if-nez p2, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_6
    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/member/utils/ChargeStatisticUtils;->reportChargeDialogView(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->E1:J

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->A1:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    if-nez p0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v0, p0

    :goto_2
    const-string p0, "paid_guide_popups"

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->setInterfaceFrom(Ljava/lang/String;)V

    return-void
.end method

.method public final x0()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->E1:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final y0()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/account/data/PolicyType;->MEMBER_PAYMENT_AGREEMENT:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final z0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->U0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->S0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->V0()V

    return-void
.end method
