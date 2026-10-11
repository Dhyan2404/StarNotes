.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountVerifyEmailViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyEmailViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,154:1\n214#2:155\n214#2:156\n*S KotlinDebug\n*F\n+ 1 AccountVerifyEmailViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel\n*L\n132#1:155\n143#1:156\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008H\u0010IJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0007R\u001d\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR%\u0010!\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u001d0\u001d0\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0012\u001a\u0004\u0008 \u0010\u0014R0\u0010&\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u001d0\u001d0\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0012\u001a\u0004\u0008#\u0010\u0014\"\u0004\u0008$\u0010%R\u0017\u0010,\u001a\u00020\'8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u001d\u00101\u001a\u0008\u0012\u0004\u0012\u00020.0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\"\u00109\u001a\u00020.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R%\u0010=\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010:0:0\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010\u0012\u001a\u0004\u0008<\u0010\u0014R%\u0010@\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010:0:0\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008>\u0010\u0012\u001a\u0004\u0008?\u0010\u0014R\u001d\u0010B\u001a\u0008\u0012\u0004\u0012\u00020.0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008A\u00100\u001a\u0004\u0008B\u00102R\u001d\u0010D\u001a\u0008\u0012\u0004\u0012\u00020.0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008C\u00100\u001a\u0004\u0008D\u00102R\u001d\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u001d0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u00100\u001a\u0004\u0008F\u00102\u00a8\u0006J"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "reset",
        "Landroid/view/View;",
        "view",
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
        "getEmail",
        "email",
        "l",
        "getVerificationCode",
        "setVerificationCode",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "verificationCode",
        "",
        "m",
        "J",
        "getResendWaitTime",
        "()J",
        "resendWaitTime",
        "Landroidx/lifecycle/LiveData;",
        "",
        "n",
        "Landroidx/lifecycle/LiveData;",
        "isNextEnabled",
        "()Landroidx/lifecycle/LiveData;",
        "o",
        "Z",
        "getVerifyCodeResend",
        "()Z",
        "setVerifyCodeResend",
        "(Z)V",
        "verifyCodeResend",
        "",
        "p",
        "getVerifyCodeSendStatus",
        "verifyCodeSendStatus",
        "q",
        "getVerifyCodeWaitTime",
        "verifyCodeWaitTime",
        "r",
        "isVerifyCodeEditEnabled",
        "s",
        "isVerifyCodeButtonEnabled",
        "t",
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
        "SMAP\nAccountVerifyEmailViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyEmailViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,154:1\n214#2:155\n214#2:156\n*S KotlinDebug\n*F\n+ 1 AccountVerifyEmailViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel\n*L\n132#1:155\n143#1:156\n*E\n"
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

.field public l:Landroidx/lifecycle/MutableLiveData;
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

.field public final m:J

.field public final n:Landroidx/lifecycle/LiveData;
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

.field public o:Z

.field public final p:Landroidx/lifecycle/MutableLiveData;
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

.field public final r:Landroidx/lifecycle/LiveData;
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

.field public final s:Landroidx/lifecycle/LiveData;
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

.field public final t:Landroidx/lifecycle/LiveData;
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
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getVerifyCodeTimeout()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->m:J

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$isNextEnabled$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$isNextEnabled$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->n:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$isVerifyCodeEditEnabled$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$isVerifyCodeEditEnabled$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-static {v0, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->r:Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$isVerifyCodeButtonEnabled$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$isVerifyCodeButtonEnabled$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-static {v0, v2}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->s:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$verifyCodeButtonTitle$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$verifyCodeButtonTitle$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-static {v1, v0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->t:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final getEmail()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->k:Landroidx/lifecycle/MutableLiveData;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getResendWaitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->m:J

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->t:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getVerifyCodeResend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->o:Z

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->p:Landroidx/lifecycle/MutableLiveData;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    return-object p0
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->n:Landroidx/lifecycle/LiveData;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->s:Landroidx/lifecycle/LiveData;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->r:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final onNextButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/account/event/CloseKeyBoardEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/event/CloseKeyBoardEvent;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->startVerify()V

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

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->sendVerifyCode(Landroid/app/Activity;)V

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

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getKEY_EMAIL_VERIFY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->q:Landroidx/lifecycle/MutableLiveData;

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

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->o:Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

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

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$a;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;

    invoke-direct {v2, p1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$b;-><init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$c;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$d;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$e;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$e;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnError(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$sendVerifyCode$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$sendVerifyCode$$inlined$handleTimeoutError$1;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->l:Landroidx/lifecycle/MutableLiveData;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    return-void
.end method

.method public final setVerifyCodeResend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->o:Z

    return-void
.end method

.method public final startVerify()V
    .locals 10

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v8, Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->k:Landroidx/lifecycle/MutableLiveData;

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
    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->l:Landroidx/lifecycle/MutableLiveData;

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

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

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

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$f;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$f;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v1, "doOnNext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$startVerify$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel$startVerify$$inlined$handleTimeoutError$1;

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
