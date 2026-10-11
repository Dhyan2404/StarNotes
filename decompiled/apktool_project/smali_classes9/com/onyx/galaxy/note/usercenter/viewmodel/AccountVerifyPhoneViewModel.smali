.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountVerifyPhoneViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyPhoneViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,191:1\n214#2:192\n214#2:193\n*S KotlinDebug\n*F\n+ 1 AccountVerifyPhoneViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel\n*L\n169#1:192\n180#1:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0019\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008S\u0010TJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0007R\u001d\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR%\u0010#\u001a\u0010\u0012\u000c\u0012\n  *\u0004\u0018\u00010\u001f0\u001f0\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0014\u001a\u0004\u0008\"\u0010\u0016R%\u0010&\u001a\u0010\u0012\u000c\u0012\n  *\u0004\u0018\u00010\u001f0\u001f0\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0014\u001a\u0004\u0008%\u0010\u0016R0\u0010+\u001a\u0010\u0012\u000c\u0012\n  *\u0004\u0018\u00010\u001f0\u001f0\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0014\u001a\u0004\u0008(\u0010\u0016\"\u0004\u0008)\u0010*R\u0017\u00101\u001a\u00020,8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u001d\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001f028\u0006\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u001d\u0010;\u001a\u0008\u0012\u0004\u0012\u000208028\u0006\u00a2\u0006\u000c\n\u0004\u00089\u00104\u001a\u0004\u0008:\u00106R\u001d\u0010>\u001a\u0008\u0012\u0004\u0012\u00020<028\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u00104\u001a\u0004\u0008>\u00106R\"\u0010E\u001a\u00020<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR%\u0010H\u001a\u0010\u0012\u000c\u0012\n  *\u0004\u0018\u000108080\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u0010\u0014\u001a\u0004\u0008G\u0010\u0016R%\u0010K\u001a\u0010\u0012\u000c\u0012\n  *\u0004\u0018\u000108080\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u0010\u0014\u001a\u0004\u0008J\u0010\u0016R\u001d\u0010M\u001a\u0008\u0012\u0004\u0012\u00020<028\u0006\u00a2\u0006\u000c\n\u0004\u0008L\u00104\u001a\u0004\u0008M\u00106R\u001d\u0010O\u001a\u0008\u0012\u0004\u0012\u00020<028\u0006\u00a2\u0006\u000c\n\u0004\u0008N\u00104\u001a\u0004\u0008O\u00106R\u001d\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u001f028\u0006\u00a2\u0006\u000c\n\u0004\u0008P\u00104\u001a\u0004\u0008Q\u00106\u00a8\u0006U"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "reset",
        "initAreaCode",
        "Landroid/view/View;",
        "view",
        "onAreaCodeClick",
        "onVerifyCodeClick",
        "onNextButtonClick",
        "Landroid/app/Activity;",
        "uiContext",
        "sendVerifyCode",
        "startVerify",
        "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;",
        "event",
        "onVerifyCodeWaitTimeUpdate",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "j",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "getVerifyArgs",
        "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "setVerifyArgs",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V",
        "verifyArgs",
        "",
        "kotlin.jvm.PlatformType",
        "k",
        "getPhone",
        "phone",
        "l",
        "getAreaCode",
        "areaCode",
        "m",
        "getVerificationCode",
        "setVerificationCode",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "verificationCode",
        "",
        "n",
        "J",
        "getResendWaitTime",
        "()J",
        "resendWaitTime",
        "Landroidx/lifecycle/LiveData;",
        "o",
        "Landroidx/lifecycle/LiveData;",
        "getPrefixedAreaCode",
        "()Landroidx/lifecycle/LiveData;",
        "prefixedAreaCode",
        "",
        "p",
        "getMaxPhoneLength",
        "maxPhoneLength",
        "",
        "q",
        "isNextEnabled",
        "r",
        "Z",
        "getVerifyCodeResend",
        "()Z",
        "setVerifyCodeResend",
        "(Z)V",
        "verifyCodeResend",
        "s",
        "getVerifyCodeSendStatus",
        "verifyCodeSendStatus",
        "t",
        "getVerifyCodeWaitTime",
        "verifyCodeWaitTime",
        "u",
        "isVerifyCodeEditEnabled",
        "v",
        "isVerifyCodeButtonEnabled",
        "w",
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
        "SMAP\nAccountVerifyPhoneViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyPhoneViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,191:1\n214#2:192\n214#2:193\n*S KotlinDebug\n*F\n+ 1 AccountVerifyPhoneViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel\n*L\n169#1:192\n180#1:193\n*E\n"
    }
.end annotation


# instance fields
.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
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

.field public final l:Landroidx/lifecycle/MutableLiveData;
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

.field public m:Landroidx/lifecycle/MutableLiveData;
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

.field public final n:J

.field public final o:Landroidx/lifecycle/LiveData;
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

.field public final p:Landroidx/lifecycle/LiveData;
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

.field public final q:Landroidx/lifecycle/LiveData;
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

.field public r:Z

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
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Boolean;",
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Landroidx/lifecycle/LiveData;
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


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getVerifyCodeTimeout()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->n:J

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$prefixedAreaCode$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$prefixedAreaCode$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-static {v2, v1}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->o:Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$maxPhoneLength$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$maxPhoneLength$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-static {v2, v1}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->p:Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isNextEnabled$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isNextEnabled$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->q:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeEditEnabled$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeEditEnabled$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-static {v0, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->u:Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$isVerifyCodeButtonEnabled$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-static {v0, v2}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->v:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$verifyCodeButtonTitle$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$verifyCodeButtonTitle$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-static {v1, v0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->w:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->i:Landroidx/lifecycle/MutableLiveData;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->p:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getPhone()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->k:Landroidx/lifecycle/MutableLiveData;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->o:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getResendWaitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->n:J

    return-wide v0
.end method

.method public final getVerificationCode()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->w:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getVerifyCodeResend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->r:Z

    return p0
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->s:Landroidx/lifecycle/MutableLiveData;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final initAreaCode()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/onyx/galaxy/note/utils/AreaCodeUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/AreaCodeUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/AreaCodeUtils;->getDefaultAreaCode()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final isNextEnabled()Landroidx/lifecycle/LiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->q:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final isVerifyCodeButtonEnabled()Landroidx/lifecycle/LiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->v:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final isVerifyCodeEditEnabled()Landroidx/lifecycle/LiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->u:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final onAreaCodeClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$onAreaCodeClick$callback$1;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$onAreaCodeClick$callback$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "getContext(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-direct {v2, p1, v1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/AreaCodeDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onNextButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/account/event/CloseKeyBoardEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/event/CloseKeyBoardEvent;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->startVerify()V

    return-void
.end method

.method public final onVerifyCodeClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->sendVerifyCode(Landroid/app/Activity;)V

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

    sget-object v1, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getKEY_PHONE_VERIFY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getLeftTime()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final reset()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->r:Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->initAreaCode()V

    return-void
.end method

.method public final sendVerifyCode(Landroid/app/Activity;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$a;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$b;

    invoke-direct {v2, p1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$b;-><init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$c;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$d;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$e;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$e;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnError(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$sendVerifyCode$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$sendVerifyCode$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setVerificationCode(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setVerifyArgs(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    return-void
.end method

.method public final setVerifyCodeResend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->r:Z

    return-void
.end method

.method public final startVerify()V
    .locals 10

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v8, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->getCheckCurrentAccount()Z

    move-result v6

    const/4 v7, 0x4

    const/4 v9, 0x0

    move-object v1, v8

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$f;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$f;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v1, "doOnNext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$startVerify$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel$startVerify$$inlined$handleTimeoutError$1;

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
