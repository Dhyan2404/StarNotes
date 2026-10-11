.class public final Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginViewModel.kt\ncom/onyx/galaxy/note/account/viewmodel/LoginViewModel\n+ 2 CharSequence.kt\nandroidx/core/text/CharSequenceKt\n*L\n1#1,385:1\n36#2:386\n36#2:387\n*S KotlinDebug\n*F\n+ 1 LoginViewModel.kt\ncom/onyx/galaxy/note/account/viewmodel/LoginViewModel\n*L\n104#1:386\n108#1:387\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0008\n\u0018\u0000 x2\u00020\u0001:\u0001xB\u0007\u00a2\u0006\u0004\u0008v\u0010wJ\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J \u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010J\u0006\u0010\u0015\u001a\u00020\u0010J\u001a\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00180\u00042\u0006\u0010\u0017\u001a\u00020\u0016J\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\"\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bJ \u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001fJ\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\"\u001a\u00020\u0008J\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010$\u001a\u00020\u0008J\u001e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010&\u001a\u0004\u0018\u00010\u00082\u0006\u0010\'\u001a\u00020\u0008J*\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010)\u001a\u0004\u0018\u00010\u00082\u0008\u0010&\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008J\u000e\u0010-\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020+J\u0006\u0010.\u001a\u00020\u001cJ\u0006\u0010/\u001a\u00020\u001cJ\u0006\u00100\u001a\u00020\u001cJ!\u00102\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\u00082\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u00082\u00103J\u0019\u00104\u001a\u00020\u001c2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u00084\u00105J\u0019\u00106\u001a\u00020\u001c2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u00086\u00105J\u0010\u00109\u001a\u00020\u001c2\u0008\u00108\u001a\u0004\u0018\u000107J\u0006\u0010:\u001a\u00020\u0010J\u0006\u0010;\u001a\u00020\u0010J\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010?\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020=J\u000e\u0010@\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020=J\u000e\u0010A\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020=J\u0008\u0010B\u001a\u00020\u001cH\u0014R%\u0010I\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010+0+0C8\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR%\u0010K\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010\u00100\u00100C8\u0006\u00a2\u0006\u000c\n\u0004\u0008J\u0010F\u001a\u0004\u0008K\u0010HR%\u0010Q\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010\u00080\u00080L8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010PR%\u0010T\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010\u00080\u00080C8\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010F\u001a\u0004\u0008S\u0010HR%\u0010V\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010\u00080\u00080L8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010N\u001a\u0004\u0008U\u0010PR%\u0010W\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010\u00100\u00100L8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010N\u001a\u0004\u0008W\u0010PR%\u0010Z\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010+0+0C8\u0006\u00a2\u0006\u000c\n\u0004\u0008X\u0010F\u001a\u0004\u0008Y\u0010HR%\u0010\\\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010+0+0C8\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010F\u001a\u0004\u0008[\u0010HR\u001b\u0010a\u001a\u00020]8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008X\u0010`R$\u0010i\u001a\u0004\u0018\u00010b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010f\"\u0004\u0008g\u0010hR\u0016\u0010l\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR%\u0010n\u001a\u0010\u0012\u000c\u0012\n D*\u0004\u0018\u00010\u00100\u00100C8\u0006\u00a2\u0006\u000c\n\u0004\u0008m\u0010F\u001a\u0004\u0008n\u0010HR(\u0010u\u001a\u0008\u0012\u0004\u0012\u00020+0o8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010p\u001a\u0004\u0008q\u0010r\"\u0004\u0008s\u0010t\u00a8\u0006y"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "loginArgs",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
        "u",
        "m",
        "",
        "p",
        "accessToken",
        "unionid",
        "openid",
        "n",
        "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;",
        "user",
        "",
        "x",
        "isPhoneNumberValid",
        "isEmailValid",
        "isVerifyCodeValid",
        "isAreaCodeValid",
        "Landroid/content/Context;",
        "activityContext",
        "Lcom/onyx/android/sdk/data/account/bean/ResultData;",
        "sendVerifyCode",
        "loginByVerifyCode",
        "Lkotlin/Function0;",
        "",
        "showDialog",
        "loginByPwd",
        "",
        "data",
        "wechatAppLogin",
        "code",
        "wechatQrCodeLogin",
        "authCode",
        "huaweiAuthLogin",
        "idToken",
        "googleId",
        "googleAuthLogin",
        "microsoftId",
        "microsoftAuthLogin",
        "",
        "type",
        "changeLoginType",
        "clearPhoneOrEmail",
        "togglePwdVisible",
        "updatePhoneLengthLimit",
        "eventId",
        "reportViewOrClickEvent",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "reportLoginedEvent",
        "(Ljava/lang/Integer;)V",
        "reportOnyxLoginedEvent",
        "Landroid/os/Bundle;",
        "arguments",
        "initArgs",
        "checkConditionBeforeAuth",
        "checkAgreedPolicy",
        "checkNetwork",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "huaweiAuth",
        "googleAuth",
        "microsoftAuth",
        "onCleared",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "getLoginType",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loginType",
        "j",
        "isShowPwd",
        "Landroidx/databinding/ObservableField;",
        "k",
        "Landroidx/databinding/ObservableField;",
        "getPhoneOrEmail",
        "()Landroidx/databinding/ObservableField;",
        "phoneOrEmail",
        "l",
        "getAreaCode",
        "areaCode",
        "getPwdOrVerification",
        "pwdOrVerification",
        "isAgreed",
        "o",
        "getPhoneLengthLimit",
        "phoneLengthLimit",
        "getTriggerFrom",
        "triggerFrom",
        "Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;",
        "q",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;",
        "accountAuthCreator",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "r",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "getAccountAuth",
        "()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "setAccountAuth",
        "(Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;)V",
        "accountAuth",
        "s",
        "Z",
        "initedArgs",
        "t",
        "isLoginFinish",
        "",
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
        "SMAP\nLoginViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginViewModel.kt\ncom/onyx/galaxy/note/account/viewmodel/LoginViewModel\n+ 2 CharSequence.kt\nandroidx/core/text/CharSequenceKt\n*L\n1#1,385:1\n36#2:386\n36#2:387\n*S KotlinDebug\n*F\n+ 1 LoginViewModel.kt\ncom/onyx/galaxy/note/account/viewmodel/LoginViewModel\n*L\n104#1:386\n108#1:387\n*E\n"
    }
.end annotation


# static fields
.field public static final AREA_CODE_MIN_LENGTH:I = 0x1

.field public static final AREA_CODE_PREFIX:Ljava/lang/String; = "+"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VERIFY_CODE_MIN_LENGTH:I = 0x4


# instance fields
.field public final i:Landroidx/lifecycle/MutableLiveData;
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

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
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

.field public final m:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Landroidx/lifecycle/MutableLiveData;
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

.field public final q:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Z

.field public final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Ljava/util/List;
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

    new-instance v0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->Companion:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getDefaultLoginType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/databinding/ObservableField;

    const-string v2, ""

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->p()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->m:Landroidx/databinding/ObservableField;

    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->n:Landroidx/databinding/ObservableField;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_default:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$accountAuthCreator$2;->INSTANCE:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$accountAuthCreator$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->q:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    aput-object v2, v0, v1

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

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->u:Ljava/util/List;

    return-void
.end method

.method public static final A(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getLoginType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$loginObservable(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->u(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->z(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->s(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->r(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    return-void
.end method

.method public static synthetic g(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->y(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->t(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->A(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->w(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->v(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->q(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getLoginType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getLoginType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic reportLoginedEvent$default(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic reportOnyxLoginedEvent$default(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportOnyxLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic reportViewOrClickEvent$default(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getLoginType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportOnyxLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getLoginType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final y(Z)V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->network_socket_timeout:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final z(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loginArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getLoginType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportLoginedEvent(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final changeLoginType(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->m:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const-string v0, "click_galaxy_user_login_0001"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final checkAgreedPolicy()Z
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->n:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->login_read_policy_hint:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :cond_1
    return p0
.end method

.method public final checkConditionBeforeAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkAgreedPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkNetwork()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final checkNetwork()Z
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->network_error_hint:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :cond_0
    return p0
.end method

.method public final clearPhoneOrEmail()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->r:Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getLoginType()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPhoneLengthLimit()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPhoneOrEmail()Landroidx/databinding/ObservableField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final getPwdOrVerification()Landroidx/databinding/ObservableField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->m:Landroidx/databinding/ObservableField;

    return-object p0
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->u:Ljava/util/List;

    return-object p0
.end method

.method public final getTriggerFrom()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final googleAuth(Landroidx/fragment/app/Fragment;)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkConditionBeforeAuth()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->o()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;

    move-result-object v0

    const-string v1, "google"

    invoke-interface {v0, v1}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;->create(Ljava/lang/String;)Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->getAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->r:Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object p0

    const/16 v1, 0x3e9

    invoke-interface {v0, p1, p0, v1}, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;->createRequestAuth(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public final googleAuthLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "googleId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setLoginType(I)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setAuthCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p1

    new-instance v8, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v8}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->x(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$a;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$a;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/w4j;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/w4j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final huaweiAuth(Landroidx/fragment/app/Fragment;)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkConditionBeforeAuth()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->o()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;

    move-result-object v0

    const-string v1, "huawei"

    invoke-interface {v0, v1}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;->create(Ljava/lang/String;)Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->getAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->r:Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    const-string v0, "view_galaxy_user_login_0001"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "click_galaxy_user_login_0001"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->r:Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-interface {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;->createRequestAuth(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public final huaweiAuthLogin(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "authCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setLoginType(I)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setAuthCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->u(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/a5j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/a5j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initArgs(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v1

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    const-string v2, "key_login_type"

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->updatePhoneLengthLimit()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    const-string v2, "trigger_from"

    const/16 v3, 0x3e8

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    const-string v2, "key_login_account"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->s:Z

    return-void
.end method

.method public final isAgreed()Landroidx/databinding/ObservableField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->n:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method public final isAreaCodeValid()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmailValid()Z
    .locals 4

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "@"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLoginFinish()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isPhoneNumberValid()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isShowPwd()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isVerifyCodeValid()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->m:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loginByPwd(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showDialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->m()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    new-instance v9, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getAccount()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v9}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->x(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$b;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$c;

    invoke-direct {v1, p2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$d;

    invoke-direct {p2, v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$d;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$e;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$e;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/v4j;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/v4j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loginByVerifyCode()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->m()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    new-instance v9, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->getAccount()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v9}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->x(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$f;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$f;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/y4j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y4j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setLoginType(I)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setAccount(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setAreaCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->m:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setVerificationCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->m:Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setPassword(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p0

    return-object p0
.end method

.method public final microsoftAuth(Landroidx/fragment/app/Fragment;)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkConditionBeforeAuth()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->o()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;

    move-result-object v0

    const-string v1, "microsoft"

    invoke-interface {v0, v1}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;->create(Ljava/lang/String;)Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->getAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->r:Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object p0

    const/16 v1, 0x3ea

    invoke-interface {v0, p1, p0, v1}, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;->createRequestAuth(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public final microsoftAuthLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;-><init>()V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setLoginType(I)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setAuthCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setAccessToken(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p2

    new-instance p3, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->x(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p3, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$j;

    invoke-direct {p3, p0, p2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p3, Lcom/sunia/HTREnginev2/b5j;

    invoke-direct {p3, p0, p2}, Lcom/sunia/HTREnginev2/b5j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setLoginType(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setUnionid(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setOpenid(Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->q:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;

    return-object p0
.end method

.method public onCleared()V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    const-string v0, "LoginFragment"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->release(Ljava/lang/String;)V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final reportLoginedEvent(Ljava/lang/Integer;)V
    .locals 5
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isNewUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v1

    sget-object v2, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->getQuotaInfo()Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->getDocCountIncludeDustbin()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "user_tag"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "login_way"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerSystem()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_system"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v3, Lcom/onyx/android/sdk/event/StatisticLoginEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result p0

    invoke-direct {v3, v1, p1, p0, v2}, Lcom/onyx/android/sdk/event/StatisticLoginEvent;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    new-instance p0, Lcom/onyx/android/sdk/event/StatisticClickLoginEvent;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/event/StatisticClickLoginEvent;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportOnyxLoginedEvent(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isNewUser()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "user_tag"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "login_way"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerSystem()Ljava/lang/String;

    move-result-object p0

    const-string p1, "device_system"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance p1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const-string v1, "click_galaxy_user_login_0002"

    invoke-direct {p1, v1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "trigger_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "login_way"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerSystem()Ljava/lang/String;

    move-result-object p0

    const-string p2, "device_system"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance p2, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {p2, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final sendVerifyCode(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "+"

    aput-object v3, v1, v2

    invoke-static {v0, v3, v1}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v9}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->x(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$k;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$k;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "map(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;->getPrefixedAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {v5}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$l;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$l;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/data/account/action/EmailCheckAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->k:Landroidx/databinding/ObservableField;

    invoke-virtual {v3}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/data/account/action/EmailCheckAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$m;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$m;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setAccountAuth(Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->r:Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->u:Ljava/util/List;

    return-void
.end method

.method public final togglePwdVisible()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$g;->e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/z4j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/z4j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$h;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$i;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$i;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final updatePhoneLengthLimit()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/utils/AreaCodeUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/AreaCodeUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/utils/AreaCodeUtils;->getAreaPhoneMaxLength(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final wechatAppLogin(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "access_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "unionid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    const-string v3, "openid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->u(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/x4j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/x4j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final wechatQrCodeLogin(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "view_galaxy_user_login_0001"

    invoke-virtual {p0, v2, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;-><init>()V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setVerificationCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->setLoginType(I)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->u(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/c5j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/c5j;-><init>(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/common/data/AppConfig;->Companion:Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;->getAccountConfig()Lcom/onyx/galaxy/note/account/data/AccountConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/data/AccountConfig;->getEnableSwitchCluster()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;-><init>(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$n;->e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$n;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/sunia/HTREnginev2/u4j;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/u4j;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfFalse(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$o;->e:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel$o;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "filter(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
