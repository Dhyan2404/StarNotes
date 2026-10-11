.class public final Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;
.super Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserCenterActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserCenterActivity.kt\ncom/onyx/galaxy/note/usercenter/ui/UserCenterActivity\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,93:1\n32#2,5:94\n*S KotlinDebug\n*F\n+ 1 UserCenterActivity.kt\ncom/onyx/galaxy/note/usercenter/ui/UserCenterActivity\n*L\n60#1:94,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;",
        "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "recreate",
        "I",
        "",
        "purpose",
        "",
        "G",
        "J",
        "Landroidx/navigation/NavController;",
        "A0",
        "Landroidx/navigation/NavController;",
        "navController",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "B0",
        "Lkotlin/Lazy;",
        "H",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "accountViewModel",
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
        "SMAP\nUserCenterActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserCenterActivity.kt\ncom/onyx/galaxy/note/usercenter/ui/UserCenterActivity\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,93:1\n32#2,5:94\n*S KotlinDebug\n*F\n+ 1 UserCenterActivity.kt\ncom/onyx/galaxy/note/usercenter/ui/UserCenterActivity\n*L\n60#1:94,5\n*E\n"
    }
.end annotation


# instance fields
.field public A0:Landroidx/navigation/NavController;

.field public final B0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/usercenter/ui/Hilt_UserCenterActivity;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity$accountViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity$accountViewModel$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;->B0:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final G(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "bind_email_before_verify"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :sswitch_1
    const-string p0, "message_center"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$navigation;->nav_graph_message_center:I

    goto :goto_1

    :sswitch_2
    const-string p0, "password_recover"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$navigation;->nav_graph_recover_password:I

    goto :goto_1

    :sswitch_3
    const-string p0, "bind_email_after_login"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget p0, Lcom/onyx/galaxy/note/R$navigation;->nav_graph_bind_email:I

    goto :goto_1

    :sswitch_4
    const-string p0, "bind_phone_after_login"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget p0, Lcom/onyx/galaxy/note/R$navigation;->nav_graph_bind_phone:I

    goto :goto_1

    :goto_0
    sget p0, Lcom/onyx/galaxy/note/R$navigation;->nav_graph_user_center:I

    :goto_1
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7ea93d8d -> :sswitch_4
        -0x5bdc045f -> :sswitch_3
        -0x54a3c40 -> :sswitch_2
        0x2000038d -> :sswitch_1
        0x43b176d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final H()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;->B0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    return-object p0
.end method

.method public final I()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;->H()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "purpose"

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "none"

    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$id;->nav_host:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v1}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;->A0:Landroidx/navigation/NavController;

    if-nez v1, :cond_4

    const-string v1, "navController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;->G(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0, v2}, Landroidx/navigation/NavController;->setGraph(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final J()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;->H()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3e8

    const-string v3, "trigger_from"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->setTriggerFlag(I)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;->H()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getTriggerFlag()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isNewUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_tag"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getTopRoleFlag()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "user_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const-string v2, "view_galaxy_user_center_0001"

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff8b

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public recreate()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :goto_0
    return-void
.end method
