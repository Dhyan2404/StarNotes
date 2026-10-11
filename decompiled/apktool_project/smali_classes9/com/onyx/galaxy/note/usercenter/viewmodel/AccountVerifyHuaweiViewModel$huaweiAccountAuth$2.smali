.class final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel$huaweiAccountAuth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel$huaweiAccountAuth$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel$huaweiAccountAuth$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel$huaweiAccountAuth$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel$huaweiAccountAuth$2;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel$huaweiAccountAuth$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/onyx/galaxy/note/account/hilt/IAccountAuthEntryPoint;

    .line 3
    invoke-static {p0, v0}, Ldagger/hilt/android/EntryPointAccessors;->fromApplication(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/hilt/IAccountAuthEntryPoint;

    .line 4
    invoke-interface {p0}, Lcom/onyx/galaxy/note/account/hilt/IAccountAuthEntryPoint;->getAccountAuthCreator()Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;

    move-result-object p0

    const-string v0, "huawei"

    .line 5
    invoke-interface {p0, v0}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;->create(Ljava/lang/String;)Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;->getAccountAuth()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel$huaweiAccountAuth$2;->invoke()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object p0

    return-object p0
.end method
