.class public final Lcom/onyx/galaxy/note/account/ui/LoginFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/ui/LoginFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/onyx/galaxy/note/account/ui/LoginFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,918:1\n347#2:919\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/onyx/galaxy/note/account/ui/LoginFragment\n*L\n333#1:919\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u0082\u00012\u00020\u0001:\u0002\u0082\u0001B\t\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\"\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0008\u0010\r\u001a\u00020\u0007H\u0002J\u0008\u0010\u000e\u001a\u00020\u0007H\u0002J\u0008\u0010\u000f\u001a\u00020\u0007H\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\u0008\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0013H\u0002J\u0008\u0010\u001b\u001a\u00020\u0007H\u0002J\u0008\u0010\u001c\u001a\u00020\u0007H\u0002J\u0008\u0010\u001d\u001a\u00020\u0007H\u0002J\u0008\u0010\u001e\u001a\u00020\u0007H\u0002J\u0008\u0010\u001f\u001a\u00020\u0007H\u0002J\u0008\u0010 \u001a\u00020\u0007H\u0002J\u001c\u0010#\u001a\u00020\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!H\u0002J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\"H\u0002J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020&H\u0002J\u0010\u0010)\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020&H\u0002J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010*\u001a\u00020&H\u0002J\u0016\u0010/\u001a\u00020\u00072\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0,H\u0002J\u0008\u00100\u001a\u00020\u0013H\u0002J\u0008\u00101\u001a\u00020\u0007H\u0002J\u0008\u00102\u001a\u00020\u0007H\u0002J\u0008\u00103\u001a\u00020\u0007H\u0002J\u0008\u00104\u001a\u00020\u0007H\u0002J\u0008\u00105\u001a\u00020\u0007H\u0002J\u0008\u00106\u001a\u00020\"H\u0002J\u0008\u00108\u001a\u000207H\u0002J\u0008\u00109\u001a\u00020\u0007H\u0002J\u000e\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\"0:H\u0002J\u0008\u0010=\u001a\u00020<H\u0002J\u0008\u0010>\u001a\u00020<H\u0002J\u0010\u0010@\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\"H\u0002J\u0010\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020AH\u0002J\u0010\u0010F\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0002J\u0008\u0010G\u001a\u00020\u0007H\u0002J\u0008\u0010H\u001a\u00020\u0007H\u0002J\u0012\u0010K\u001a\u00020\u00072\u0008\u0010J\u001a\u0004\u0018\u00010IH\u0016J$\u0010Q\u001a\u00020P2\u0006\u0010M\u001a\u00020L2\u0008\u0010O\u001a\u0004\u0018\u00010N2\u0008\u0010J\u001a\u0004\u0018\u00010IH\u0016J\u001a\u0010S\u001a\u00020\u00072\u0006\u0010R\u001a\u00020P2\u0008\u0010J\u001a\u0004\u0018\u00010IH\u0016J\u0008\u0010T\u001a\u00020\u0007H\u0016J\"\u0010U\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010X\u001a\u00020\u00072\u0006\u0010W\u001a\u00020VH\u0007R\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u001b\u0010b\u001a\u00020]8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010aR\u001b\u0010g\u001a\u00020c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008d\u0010_\u001a\u0004\u0008e\u0010fR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0018\u0010o\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u001b\u0010t\u001a\u00020p8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008q\u0010_\u001a\u0004\u0008r\u0010sR\u0018\u0010x\u001a\u0004\u0018\u00010u8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR(\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/ui/LoginFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "",
        "X0",
        "q1",
        "p1",
        "b1",
        "K1",
        "a1",
        "D1",
        "Z0",
        "Lcom/onyx/galaxy/note/account/data/PolicyType;",
        "policyType",
        "F1",
        "",
        "showPhone",
        "J1",
        "showAccount",
        "I1",
        "B1",
        "enable",
        "H1",
        "s1",
        "t1",
        "v1",
        "G1",
        "L1",
        "T0",
        "",
        "",
        "N1",
        "code",
        "O1",
        "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;",
        "signInCredential",
        "Y0",
        "U0",
        "result",
        "x1",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
        "accountDataBundleObservable",
        "J0",
        "C1",
        "E0",
        "H0",
        "G0",
        "y1",
        "W0",
        "Q0",
        "Lcom/onyx/android/sdk/base/extension/StringMap;",
        "P0",
        "z1",
        "",
        "R0",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "N0",
        "M0",
        "type",
        "F0",
        "Lcom/onyx/galaxy/note/account/model/AreaCodeModel;",
        "model",
        "A1",
        "",
        "t",
        "V0",
        "E1",
        "I0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "onResume",
        "onActivityResult",
        "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;",
        "event",
        "onVerifyCodeNotifyEvent",
        "Landroid/os/Handler;",
        "d1",
        "Landroid/os/Handler;",
        "handler",
        "Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;",
        "e1",
        "Lkotlin/Lazy;",
        "S0",
        "()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;",
        "f1",
        "O0",
        "()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;",
        "areaCodeDialog",
        "Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;",
        "g1",
        "Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;",
        "binding",
        "Landroid/app/Dialog;",
        "h1",
        "Landroid/app/Dialog;",
        "wechatLoginDialog",
        "Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;",
        "i1",
        "L0",
        "()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;",
        "accountAuthCreator",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "j1",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "accountAuth",
        "k1",
        "Ljava/util/List;",
        "getThirdPartySignRequestCodes",
        "()Ljava/util/List;",
        "setThirdPartySignRequestCodes",
        "(Ljava/util/List;)V",
        "thirdPartySignRequestCodes",
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
        "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/onyx/galaxy/note/account/ui/LoginFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,918:1\n347#2:919\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/onyx/galaxy/note/account/ui/LoginFragment\n*L\n333#1:919\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/account/ui/LoginFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_BIND_EMAIL_PREFIX:Ljava/lang/String; = "key_account_bind_email_prefix_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_BIND_PHONE_PREFIX:Ljava/lang/String; = "key_account_bind_phone_prefix_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_LOGIN_ACCOUNT:Ljava/lang/String; = "key_login_account"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_LOGIN_TYPE:Ljava/lang/String; = "key_login_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REQUEST_CODE_GOOGLE_SIGN_IN:I = 0x3e9

.field public static final REQUEST_CODE_HW_SIGN_IN:I = 0x3e8

.field public static final REQUEST_CODE_MICROSOFT_SIGN_IN:I = 0x3ea

.field public static final TAG:Ljava/lang/String; = "LoginFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d1:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

.field public h1:Landroid/app/Dialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j1:Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->Companion:Lcom/onyx/galaxy/note/account/ui/LoginFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->d1:Landroid/os/Handler;

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$viewModel$2;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$areaCodeDialog$2;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->f1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$accountAuthCreator$2;->INSTANCE:Lcom/onyx/galaxy/note/account/ui/LoginFragment$accountAuthCreator$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->i1:Lkotlin/Lazy;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->k1:Ljava/util/List;

    return-void
.end method

.method public static synthetic A0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->k1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->u1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    return-void
.end method

.method public static synthetic C0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->K0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    return-void
.end method

.method public static synthetic D0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->e1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final K0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->I0()V

    return-void
.end method

.method public static final M1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->T0()V

    return-void
.end method

.method public static final P1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->h1:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getAreaCodeDialog(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->O0()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->d1:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWechatLoginDialog$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->h1:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$googleAuthLogin(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->U0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    return-void
.end method

.method public static final synthetic access$handleLoginError(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->V0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$huaweiAuthLogin(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->Y0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    return-void
.end method

.method public static final synthetic access$login(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->s1()V

    return-void
.end method

.method public static final synthetic access$microsoftAuthLogin(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->x1(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    return-void
.end method

.method public static final synthetic access$onLoginFinish(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->y1()V

    return-void
.end method

.method public static final synthetic access$selectAreaCode(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/galaxy/note/account/model/AreaCodeModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->A1(Lcom/onyx/galaxy/note/account/model/AreaCodeModel;)V

    return-void
.end method

.method public static final synthetic access$showLoginLoadingDialog(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->E1()V

    return-void
.end method

.method public static final synthetic access$showPolicyDialog(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lcom/onyx/galaxy/note/account/data/PolicyType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->F1(Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    return-void
.end method

.method public static final synthetic access$toggleObtainVerifyCode(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->H1(Z)V

    return-void
.end method

.method public static final synthetic access$toggleShowAccount(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->I1(Z)V

    return-void
.end method

.method public static final synthetic access$toggleShowPhone(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->J1(Z)V

    return-void
.end method

.method public static final synthetic access$updateLoginView(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->K1()V

    return-void
.end method

.method public static final synthetic access$wechatAppLogin(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->L1()V

    return-void
.end method

.method public static final synthetic access$wechatAppLoginByParams(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->N1(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$wechatQrCodeLogin(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public static final c1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->B1()V

    return-void
.end method

.method public static final d1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->s1()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final e1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->D1()V

    return-void
.end method

.method public static final f1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->D1()V

    return-void
.end method

.method public static final g1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->K1()V

    return-void
.end method

.method public static final h1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->s1()V

    return-void
.end method

.method public static final i1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->huaweiAuth(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static final j1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->googleAuth(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static final k1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->microsoftAuth(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->j1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final l1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->G1()V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->w1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    return-void
.end method

.method public static final m1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->c1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final n1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->vEdtBg:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->M1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    return-void
.end method

.method public static final o1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "purpose"

    const-string v1, "password_recover"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->o1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->i1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0()Z
    .locals 1

    invoke-static {}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->r1()Z

    move-result v0

    return v0
.end method

.method public static final r1()Z
    .locals 7

    new-instance v0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;

    const-string v1, "galaxy_note_sdk_android"

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return v6
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->n1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->P1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    return-void
.end method

.method public static final u1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->I0()V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->h1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->d1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final w1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->I0()V

    return-void
.end method

.method public static synthetic x0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->f1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->m1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->l1(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A1(Lcom/onyx/galaxy/note/account/model/AreaCodeModel;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->O0()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getAreaCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/model/AreaCodeModel;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    :cond_1
    return-void
.end method

.method public final B1()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isPhoneNumberValid()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->invalid_phone_number:I

    invoke-static {p0, v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isAreaCodeValid()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->invalid_area_code:I

    invoke-static {p0, v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isEmailValid()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->invalid_email_addr:I

    invoke-static {p0, v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->sendVerifyCode(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/LoginFragment$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$e;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/LoginFragment$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$f;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/LoginFragment$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$g;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    const-string v0, "subscribe(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendVerifyCode loginType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final C1()Z
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getAccountBindPrimaryType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "email"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "phone"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasPhone()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final D1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->O0()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getAreaCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;->updateAreaCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->O0()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final E0()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getAccountBindPrimaryType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->H0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->G0()V

    :goto_0
    return-void
.end method

.method public final E1()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->I0()V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/LoginFragment$showLoginLoadingDialog$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$showLoginLoadingDialog$1;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenResumed(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final F0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->R0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->Q0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "purpose"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final F1(Lcom/onyx/galaxy/note/account/data/PolicyType;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final G0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->M0()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasEmail()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    const-string v0, "bind_email_after_login"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->F0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->W0()V

    return-void
.end method

.method public final G1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkAgreedPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$showWeChatDialog$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$showWeChatDialog$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/LoginFragment$showWeChatDialog$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$showWeChatDialog$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->h1:Landroid/app/Dialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final H0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->N0()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasPhone()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    const-string v0, "bind_phone_after_login"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->F0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->W0()V

    return-void
.end method

.method public final H1(Z)V
    .locals 4

    if-eqz p1, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$string;->get_verification_code:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$string;->receiving:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final I0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "LoginLoadingDialogFragm"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public final I1(Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "binding"

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    sget-object p1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-static {p1, v1, v4, v2, v4}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/onyx/galaxy/note/R$string;->login_phone_or_email_hint:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/onyx/galaxy/note/R$string;->login_email_hint:I

    :goto_0
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_1
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    sget v5, Lcom/onyx/galaxy/note/R$string;->login_password_hint:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_3
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/16 v5, 0x80

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/galaxy/note/R$integer;->login_max_password_max_length:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v2, v0

    new-instance v0, Lcom/onyx/android/sdk/ui/EnglishLetterOrDigitInputFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ui/EnglishLetterOrDigitInputFilter;-><init>()V

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v4, p0

    :goto_1
    iget-object p0, v4, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_7
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string v5, ""

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_8
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_9
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_a
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/galaxy/note/R$integer;->login_variation_code_max_length:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v2, v0

    new-instance v0, Lcom/onyx/android/sdk/ui/DigitInputFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ui/DigitInputFilter;-><init>()V

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v4, p0

    :goto_2
    iget-object p0, v4, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_3
    return-void
.end method

.method public final J0(Lio/reactivex/rxjava3/core/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->E1()V

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$a;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/s3j;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/s3j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final J1(Z)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvAreaCodeMark:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtAreaCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->vDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivAreaCodeArrow:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    sget v2, Lcom/onyx/galaxy/note/R$string;->phone_hint:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_5
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_7
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvAreaCodeMark:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_8
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtAreaCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_9
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->vDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_a
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivAreaCodeArrow:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_b
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    sget v2, Lcom/onyx/galaxy/note/R$string;->email_hint:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_c
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/16 v2, 0x21

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    move-object v0, p1

    :goto_1
    iget-object p1, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    sget v0, Lcom/onyx/galaxy/note/R$string;->verification_code_hint:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final K1()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_440:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    sget v6, Lcom/onyx/android/sdk/device/R$dimen;->dp_660:I

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v6

    iget-object v7, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v7, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_2
    iget-object v7, v7, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-le v5, v0, :cond_3

    int-to-float v0, v0

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->login_view_max_width_percent:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->loginContentContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-ge v3, v6, :cond_6

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_6
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v1, p0

    :goto_2
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->loginContentContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final L0()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->i1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;

    return-object p0
.end method

.method public final L1()V
    .locals 9

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->isWechatInstallation(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    const-string v2, "view_galaxy_user_login_0001"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    const-string v2, "click_galaxy_user_login_0001"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->createInitSdkAction(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/g4j;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/g4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final M0()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key_account_bind_email_prefix_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final N0()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key_account_bind_phone_prefix_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final N1(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "openid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "access_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unionid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->wechatAppLogin(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->J0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->login_fail:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final O0()Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;

    return-object p0
.end method

.method public final O1(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->wechatQrCodeLogin(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/f4j;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/f4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnComplete(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "view_galaxy_user_login_0001"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    const-string v2, "click_galaxy_user_login_0001"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->J0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final P0()Lcom/onyx/android/sdk/base/extension/StringMap;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "NavigationData"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/base/extension/StringMap;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/extension/StringMap;

    if-nez p0, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/base/extension/StringMap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/extension/StringMap;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "NavigationType"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final R0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "Library"

    const-string v0, "MemberCenter"

    const-string v1, "VipCenter"

    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    return-object p0
.end method

.method public final T0()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$getWeChatInfo$1;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->getWeChatInfo(Landroid/content/Context;Landroid/app/Activity;Lcom/onyx/android/sdk/statistics/AuthResultListener;)V

    return-void
.end method

.method public final U0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getAuthId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->googleAuthLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->J0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final V0(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lcom/onyx/android/sdk/data/common/exception/ExpcetionsKt;->isNetworkErrorException(Ljava/lang/Throwable;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->network_error_hint:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_0
    instance-of p0, p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    check-cast p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->errorTypeToMessage(Lcom/onyx/android/sdk/base/common/error/OnyxException;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->login_fail:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void
.end method

.method public final W0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->z1()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method

.method public final X0(IILandroid/content/Intent;)V
    .locals 1

    iget-object p2, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->k1:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$handleThirdPartyLogin$1;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Landroid/content/Intent;I)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final Y0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getAuthCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->huaweiAuthLogin(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->J0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final Z0()V
    .locals 10

    sget v0, Lcom/onyx/galaxy/note/R$string;->login_policy:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->login_policy_connection:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/onyx/galaxy/note/R$string;->login_service_policy:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/onyx/galaxy/note/R$string;->login_privacy_policy:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/onyx/galaxy/note/R$string;->login_policy_suffix:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initCbPolicy$serviceCS$1;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initCbPolicy$serviceCS$1;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    new-instance v6, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initCbPolicy$privacyCS$1;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initCbPolicy$privacyCS$1;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    const/16 v9, 0x22

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v6, v5, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->cbPolicy:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->cbPolicy:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a1()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginGoogle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v3, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    const/16 v4, 0x8

    const/4 v5, 0x2

    invoke-static {v3, v4, v2, v5, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginMicrosoft:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v4, 0x9

    invoke-static {v3, v4, v2, v5, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginWechat:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v4, 0x5

    invoke-static {v3, v4, v2, v5, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_4

    const/4 v4, 0x4

    invoke-static {v3, v4, v2, v5, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v6

    :goto_1
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginPhone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v3, v6, v2, v5, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginHuawei:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v4, 0x3

    invoke-static {v3, v4, v2, v5, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_7
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginEmail:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v3, v5, v2, v5, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final b1()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnVerificationCode"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/h4j;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/h4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnLogin"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/t3j;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/t3j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginHuawei:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvLoginHuawei"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/u3j;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/u3j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginGoogle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvLoginGoogle"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/v3j;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/v3j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginMicrosoft:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvLoginMicrosoft"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/w3j;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/w3j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginWechat:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvLoginWechat"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/x3j;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/x3j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "btnBack"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/y3j;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/y3j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v4, Lcom/sunia/HTREnginev2/z3j;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/z3j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    iget-object v4, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnForgetPassword:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "btnForgetPassword"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/a4j;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/a4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v4, Lcom/sunia/HTREnginev2/b4j;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/b4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a
    iget-object v4, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtAreaCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "edtAreaCode"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/i4j;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/i4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_b
    iget-object v4, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivAreaCodeArrow:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivAreaCodeArrow"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/j4j;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/j4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_c
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v4, Lcom/sunia/HTREnginev2/k4j;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/k4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_d
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    const-string v4, "scrollView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initView$14;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initView$14;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->addOnLayoutChangeListener(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->a1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->Z0()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez v3, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_e
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_f
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_10

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_10
    if-eqz v2, :cond_11

    iget p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_11
    const/4 p0, 0x0

    :goto_0
    invoke-static {v3, p0}, Lcom/onyx/android/sdk/extension/ViewKt;->adjustStatusBarMargin(Landroid/view/View;I)V

    return-void
.end method

.method public final getThirdPartySignRequestCodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->k1:Ljava/util/List;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->X0(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffe6

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->setViewModel(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->W0()V

    :cond_0
    return-void
.end method

.method public final onVerifyCodeNotifyEvent(Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getLeftTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "LoginFragment"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v2, 0x0

    const-string v3, "binding"

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/galaxy/note/R$string;->get_verification_code_again:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const-string v0, "getText(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v4, Lcom/onyx/galaxy/note/R$string;->resend_after:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->g1:Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    if-nez p0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v2, p0

    :goto_1
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->p1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->b1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->q1()V

    return-void
.end method

.method public final p1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->initArgs(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/LoginFragment$d;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isShowPwd()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/LoginFragment$d;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getAreaCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$3;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/LoginFragment$d;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isLoginFinish()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$4;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$4;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$d;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final q1()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->d1:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/c4j;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/c4j;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public final s1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->t1()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->v1()V

    :goto_1
    return-void
.end method

.method public final setThirdPartySignRequestCodes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->k1:Ljava/util/List;

    return-void
.end method

.method public final t1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getPhoneOrEmail()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->invalid_phone_or_email:I

    invoke-static {p0, v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getPwdOrVerification()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->login_password_hint:I

    invoke-static {p0, v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isAgreed()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$loginByPwd$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$loginByPwd$1;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    const-string v1, "click_galaxy_user_login_0001"

    invoke-static {v0, v1, v4, v3, v4}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent$default(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$loginByPwd$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$loginByPwd$2;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->loginByPwd(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/LoginFragment$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$b;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/e4j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final v1()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getPhoneOrEmail()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getAreaCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getPwdOrVerification()Landroidx/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v5, Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneOrEmail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";areaCode:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";verifyCode:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";loginType:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v3, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isPhoneNumberValid()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v2, Lcom/onyx/galaxy/note/R$string;->invalid_phone_number:I

    invoke-static {p0, v2, v1, v3, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isAreaCodeValid()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v2, Lcom/onyx/galaxy/note/R$string;->invalid_area_code:I

    invoke-static {p0, v2, v1, v3, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isEmailValid()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v2, Lcom/onyx/galaxy/note/R$string;->invalid_email_addr:I

    invoke-static {p0, v2, v1, v3, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isVerifyCodeValid()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v2, Lcom/onyx/galaxy/note/R$string;->invalid_verify_code:I

    invoke-static {p0, v2, v1, v3, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isAgreed()Landroidx/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/LoginFragment$loginByVerifyCode$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$loginByVerifyCode$1;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    const-string v2, "click_galaxy_user_login_0001"

    invoke-static {v1, v2, v0, v3, v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent$default(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->E1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->loginByVerifyCode()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/LoginFragment$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$c;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/d4j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d4j;-><init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login loginType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final x1(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getAuthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->microsoftAuthLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->J0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final y1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->S0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->H0()V

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/data/account/bean/LoginType;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/LoginType;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/account/bean/LoginType;->isLoginByThirdParty(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->C1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->E0()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->W0()V

    return-void
.end method

.method public final z1()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->R0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->Q0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->Q0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x296a4451

    if-eq v1, v2, :cond_5

    const p0, 0x72a56b2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p0, :cond_3

    const p0, 0x6d20bc9b

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Library"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    invoke-static {p0, v3, v2, v3}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToDataRepository$default(Lcom/onyx/galaxy/note/utils/Navigator;Lcom/onyx/android/sdk/base/extension/StringMap;ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p0, "VipCenter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    invoke-static {p0, v3, v2, v3}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToVipCenter$default(Lcom/onyx/galaxy/note/utils/Navigator;Lcom/onyx/android/sdk/base/extension/StringMap;ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v1, "MemberCenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->P0()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object v3

    sget-object v1, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const-string v2, "MemberCenter"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/utils/Navigator;->navigate$default(Lcom/onyx/galaxy/note/utils/Navigator;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
