.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountCenterViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountCenterViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0006R\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010\u001bR\"\u0010\'\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "getCurrentAccount",
        "Landroid/view/View;",
        "view",
        "",
        "modifyNickname",
        "changeAvatar",
        "bindOrUnbindPhone",
        "bindOrUnbindEmail",
        "bindOrUnbindWechat",
        "bindOrUnbindHuawei",
        "resetPassword",
        "logOut",
        "logOff",
        "cancelUserAgreement",
        "copyAccountId",
        "",
        "getCountOfBondSocialAccount",
        "Lcom/onyx/android/sdk/base/extension/StringList;",
        "getSupportedVerifyMethods",
        "reloadAccountInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "getAccount",
        "()Landroidx/lifecycle/MutableLiveData;",
        "account",
        "",
        "j",
        "getEvents",
        "events",
        "k",
        "I",
        "getTriggerFlag",
        "()I",
        "setTriggerFlag",
        "(I)V",
        "triggerFlag",
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
        "SMAP\nAccountCenterViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountCenterViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->Companion:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->k:I

    return-void
.end method

.method public static final loadIntoImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "url"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->Companion:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$Companion;->loadIntoImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bindOrUnbindEmail(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "BIND_EMAIL"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "REBIND_EMAIL"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final bindOrUnbindHuawei(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "BIND_HUAWEI"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "UNBIND_HUAWEI"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final bindOrUnbindPhone(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "BIND_PHONE"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "REBIND_PHONE"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final bindOrUnbindWechat(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "BIND_WECHAT"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "UNBIND_WECHAT"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final cancelUserAgreement(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "CANCEL_AGREEMENT"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final changeAvatar(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "CHANGE_AVATAR"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final copyAccountId(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getDisplayId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->copyToClipboard(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_account_id_copied:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final getAccount()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCountOfBondSocialAccount()I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object p0

    if-eqz p0, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public final getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getEvents()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSupportedVerifyMethods()Lcom/onyx/android/sdk/base/extension/StringList;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/extension/StringList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/extension/StringList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Phone"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p0, "Wechat"

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public final getTriggerFlag()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->k:I

    return p0
.end method

.method public final logOff(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "LOG_OFF"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final logOut(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "LOG_OUT"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final modifyNickname(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "MODIFY_NICKNAME"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final reloadAccountInfo()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance p0, Lcom/onyx/android/sdk/data/account/action/ReloadAccountAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/ReloadAccountAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$a;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel$a;

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "onErrorReturn(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final resetPassword(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "RESET_PASSWORD"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setTriggerFlag(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->k:I

    return-void
.end method
