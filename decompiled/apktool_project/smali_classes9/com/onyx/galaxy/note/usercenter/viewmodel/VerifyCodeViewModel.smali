.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVerifyCodeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VerifyCodeViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,296:1\n214#2:297\n214#2:298\n214#2:299\n*S KotlinDebug\n*F\n+ 1 VerifyCodeViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel\n*L\n215#1:297\n267#1:298\n283#1:299\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008q\u0010rJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rJ\u0006\u0010\u0013\u001a\u00020\u0007J$\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u001a\u001a\u00020\u000bJ\u0006\u0010\u001b\u001a\u00020\u000bJ\u0006\u0010\u001c\u001a\u00020\u0007J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0007R\u0017\u0010%\u001a\u00020 8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\"\u0010,\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u00100\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\'\u001a\u0004\u0008.\u0010)\"\u0004\u0008/\u0010+R\"\u00104\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\'\u001a\u0004\u00082\u0010)\"\u0004\u00083\u0010+R\"\u00108\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u0010\'\u001a\u0004\u00086\u0010)\"\u0004\u00087\u0010+R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\"\u0010D\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010\'\u001a\u0004\u0008B\u0010)\"\u0004\u0008C\u0010+R%\u0010K\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u00010\r0\r0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JR%\u0010N\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u000109090E8\u0006\u00a2\u0006\u000c\n\u0004\u0008L\u0010H\u001a\u0004\u0008M\u0010JR%\u0010Q\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u00010\r0\r0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008O\u0010H\u001a\u0004\u0008P\u0010JR%\u0010T\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u000109090E8\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010H\u001a\u0004\u0008S\u0010JR%\u0010\u0017\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u00010\r0\r0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008U\u0010H\u001a\u0004\u0008V\u0010JR\u001d\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\r0W8\u0006\u00a2\u0006\u000c\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[R%\u0010_\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u000109090W8\u0006\u00a2\u0006\u000c\n\u0004\u0008]\u0010Y\u001a\u0004\u0008^\u0010[R%\u0010b\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u00010\r0\r0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008`\u0010H\u001a\u0004\u0008a\u0010JR\"\u0010e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010f\"\u0004\u0008g\u0010hR\"\u0010j\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008i\u0010d\u001a\u0004\u0008j\u0010f\"\u0004\u0008k\u0010hR\u001d\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u00070W8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010Y\u001a\u0004\u0008m\u0010[R\u001d\u0010p\u001a\u0008\u0012\u0004\u0012\u00020\r0W8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010Y\u001a\u0004\u0008o\u0010[\u00a8\u0006s"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "d",
        "f",
        "g",
        "",
        "e",
        "Landroid/view/View;",
        "view",
        "",
        "clearSocialAccount",
        "",
        "getVerifyFragmentTitle",
        "getVerifyFragmentTipText",
        "getBindFragmentTitle",
        "getBindFragmentHeaderTitle",
        "getBindFragmentHeaderTipText",
        "isRebindMode",
        "Landroid/app/Activity;",
        "activityContext",
        "phoneOrEmail",
        "areaCode",
        "sendVerifyCode",
        "sendVerifyCodeWithSubscribe",
        "checkVerifyResult",
        "logoffWithPhoneEmail",
        "checkEmailFormat",
        "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;",
        "event",
        "onVerifyCodeWaitTimeUpdate",
        "",
        "i",
        "J",
        "getResendWaitTime",
        "()J",
        "resendWaitTime",
        "j",
        "Ljava/lang/String;",
        "getPurpose",
        "()Ljava/lang/String;",
        "setPurpose",
        "(Ljava/lang/String;)V",
        "purpose",
        "k",
        "getOldSocialAccount",
        "setOldSocialAccount",
        "oldSocialAccount",
        "l",
        "getOldVerifyCode",
        "setOldVerifyCode",
        "oldVerifyCode",
        "m",
        "getToken",
        "setToken",
        "token",
        "",
        "n",
        "I",
        "getVerifyType",
        "()I",
        "setVerifyType",
        "(I)V",
        "verifyType",
        "o",
        "getVerifyCodeTag",
        "setVerifyCodeTag",
        "verifyCodeTag",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "p",
        "Landroidx/lifecycle/MutableLiveData;",
        "getVerifyCode",
        "()Landroidx/lifecycle/MutableLiveData;",
        "verifyCode",
        "q",
        "getVerifyCodeSendStatus",
        "verifyCodeSendStatus",
        "r",
        "getVerifyCodeCheckResult",
        "verifyCodeCheckResult",
        "s",
        "getVerifyCodeWaitTime",
        "verifyCodeWaitTime",
        "t",
        "getAreaCode",
        "Landroidx/lifecycle/LiveData;",
        "u",
        "Landroidx/lifecycle/LiveData;",
        "getPrefixedAreaCode",
        "()Landroidx/lifecycle/LiveData;",
        "prefixedAreaCode",
        "v",
        "getMaxPhoneLength",
        "maxPhoneLength",
        "w",
        "getSocialAccount",
        "socialAccount",
        "x",
        "Z",
        "isResend",
        "()Z",
        "setResend",
        "(Z)V",
        "y",
        "isReconfirmed",
        "setReconfirmed",
        "z",
        "getVerifyCodeButtonEnable",
        "verifyCodeButtonEnable",
        "getVerifyCodeButtonTitle",
        "verifyCodeButtonTitle",
        "<init>",
        "()V",
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
        "SMAP\nVerifyCodeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VerifyCodeViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,296:1\n214#2:297\n214#2:298\n214#2:299\n*S KotlinDebug\n*F\n+ 1 VerifyCodeViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel\n*L\n215#1:297\n267#1:298\n283#1:299\n*E\n"
    }
.end annotation


# instance fields
.field public final J:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:J

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:I

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Z

.field public y:Z

.field public final z:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getVerifyCodeTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->i:J

    const-string v0, "none"

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->o:Ljava/lang/String;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/onyx/galaxy/note/utils/AreaCodeUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/AreaCodeUtils;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/utils/AreaCodeUtils;->getDefaultAreaCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$prefixedAreaCode$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$prefixedAreaCode$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-static {v3, v4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->u:Landroidx/lifecycle/LiveData;

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$maxPhoneLength$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$maxPhoneLength$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-static {v3, v4}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    iput-object v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->v:Landroidx/lifecycle/LiveData;

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$verifyCodeButtonEnable$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$verifyCodeButtonEnable$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-static {v1, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->z:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$verifyCodeButtonTitle$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$verifyCodeButtonTitle$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-static {v2, v0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->J:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$checkBindState(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->d()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkEmailFormat()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->checkEmailFormat(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final checkVerifyResult()V
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v8, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$a;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$b;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v1, "doOnError(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$checkVerifyResult$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$checkVerifyResult$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final clearSocialAccount(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "just(...)"

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "bind_email_before_verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_1
    const-string v1, "bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_2
    const-string v1, "password_recover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->g()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_1

    :sswitch_3
    const-string v1, "rebind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->f()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_1

    :sswitch_4
    const-string v1, "bind_email_after_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_5
    const-string v1, "bind_phone_after_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->f()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ea93d8d -> :sswitch_5
        -0x5bdc045f -> :sswitch_4
        -0x37ba1f10 -> :sswitch_3
        -0x54a3c40 -> :sswitch_2
        0x2e243d -> :sswitch_1
        0x43b176d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->n:I

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/data/account/action/EmailBindStateCheckAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/data/account/action/PhoneBindStateCheckAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/data/account/action/PhoneBindStateCheckAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final g()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->n:I

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/account/action/EmailRegisterStateCheckAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/data/account/action/EmailRegisterStateCheckAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/data/account/action/PhoneRegisterStateCheckAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/data/account/action/PhoneRegisterStateCheckAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final getAreaCode()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getBindFragmentHeaderTipText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->n:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_bind_email:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_bind_phone:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBindFragmentHeaderTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->n:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_bind_email_verify:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_bind_phone_verify:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBindFragmentTitle()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->isRebindMode()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->n:I

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_rebind_email:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_rebind_phone:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->n:I

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    :goto_0
    const-string p0, ""

    return-object p0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_bind_email:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_bind_phone:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMaxPhoneLength()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->v:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getOldSocialAccount()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final getOldVerifyCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrefixedAreaCode()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->u:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getPurpose()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getResendWaitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->i:J

    return-wide v0
.end method

.method public final getSocialAccount()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getVerifyCode()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getVerifyCodeButtonEnable()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->z:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getVerifyCodeButtonTitle()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->J:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getVerifyCodeCheckResult()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getVerifyCodeTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final getVerifyCodeWaitTime()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getVerifyFragmentTipText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->j:Ljava/lang/String;

    const-string v0, "destroy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_logoff_warning_2:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "password_recover"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_password_recover_verify:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_security_verify:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getVerifyFragmentTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->j:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0xb316555

    if-eq v0, v1, :cond_4

    const v1, -0x54a3c40

    if-eq v0, v1, :cond_2

    const v1, 0x5cd39ffa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "destroy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_log_off:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string v0, "password_recover"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_password_recover:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string v0, "password_reset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const-string p0, ""

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_password_recover:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getVerifyType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->n:I

    return p0
.end method

.method public final isRebindMode()Z
    .locals 1

    const-string v0, "rebind"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->j:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isReconfirmed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->y:Z

    return p0
.end method

.method public final isResend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->x:Z

    return p0
.end method

.method public final logoffWithPhoneEmail()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/LogOffByPhoneEmailAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/data/account/action/LogOffByPhoneEmailAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$c;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$c;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$d;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$d;

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v1, "flatMap(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$logoffWithPhoneEmail$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$logoffWithPhoneEmail$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnError(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onVerifyCodeWaitTimeUpdate(Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getLeftTime()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final sendVerifyCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneOrEmail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "areaCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$e;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->u:Landroidx/lifecycle/LiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    iget-object v5, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$f;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$f;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/EmailCheckAction;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/data/account/action/EmailCheckAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$g;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$h;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final sendVerifyCodeWithSubscribe(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->user_tip_account_is_same:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->u:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->sendVerifyCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$i;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$i;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$j;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$j;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$k;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$k;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnError(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$sendVerifyCodeWithSubscribe$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel$sendVerifyCodeWithSubscribe$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setOldSocialAccount(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->k:Ljava/lang/String;

    return-void
.end method

.method public final setOldVerifyCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->l:Ljava/lang/String;

    return-void
.end method

.method public final setPurpose(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->j:Ljava/lang/String;

    return-void
.end method

.method public final setReconfirmed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->y:Z

    return-void
.end method

.method public final setResend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->x:Z

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->m:Ljava/lang/String;

    return-void
.end method

.method public final setVerifyCodeTag(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->o:Ljava/lang/String;

    return-void
.end method

.method public final setVerifyType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->n:I

    return-void
.end method
