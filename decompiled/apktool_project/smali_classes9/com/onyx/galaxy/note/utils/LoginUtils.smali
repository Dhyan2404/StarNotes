.class public final Lcom/onyx/galaxy/note/utils/LoginUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginUtils.kt\ncom/onyx/galaxy/note/utils/LoginUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1940#2,14:110\n1747#2,3:124\n1747#2,3:127\n1747#2,3:130\n*S KotlinDebug\n*F\n+ 1 LoginUtils.kt\ncom/onyx/galaxy/note/utils/LoginUtils\n*L\n40#1:110,14\n95#1:124,3\n99#1:127,3\n103#1:130,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000c\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u0004J\u000c\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0004J\u000c\u0010\t\u001a\u0004\u0018\u00010\u0008*\u00020\u0004J\n\u0010\u000b\u001a\u00020\n*\u00020\u0004J\u000c\u0010\r\u001a\u00020\u000c*\u00020\u0004H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/LoginUtils;",
        "",
        "",
        "isLoginRequired",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "Landroid/graphics/drawable/Drawable;",
        "getLoginTypeIconDrawable",
        "getLoginAccountRoleIconDrawable",
        "",
        "getLoginAccount",
        "Ljava/util/Date;",
        "getLocalLoginAt",
        "",
        "a",
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
        "SMAP\nLoginUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginUtils.kt\ncom/onyx/galaxy/note/utils/LoginUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1940#2,14:110\n1747#2,3:124\n1747#2,3:127\n1747#2,3:130\n*S KotlinDebug\n*F\n+ 1 LoginUtils.kt\ncom/onyx/galaxy/note/utils/LoginUtils\n*L\n40#1:110,14\n95#1:124,3\n99#1:127,3\n103#1:130,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/LoginUtils;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/LoginUtils;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/LoginUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)I
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getRoles()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "galaxyStarNoteMember"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p0, v1

    :goto_0
    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getRoles()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move p0, v2

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v0

    const-string v3, "galaxyStarNotePermanentMember"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move p0, v1

    :goto_1
    if-eqz p0, :cond_7

    const/4 p0, 0x4

    return p0

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getRoles()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_8

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object p1

    const-string v0, "galaxyOnyxMember"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v2, v1

    :cond_a
    :goto_2
    if-eqz v2, :cond_b

    const/4 p0, 0x2

    return p0

    :cond_b
    return v1
.end method

.method public final getLocalLoginAt(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Ljava/util/Date;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLocalLoginAt()Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginAt()Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    :cond_0
    return-object p0
.end method

.method public final getLoginAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginType()I

    move-result p0

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getMicrosoft()Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;->getNickname()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getGoogle()Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/GoogleModel;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/WechatModel;->getNickname()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/HuaweiModel;->getNickname()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getNickname()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object p0

    :cond_4
    move-object v0, p0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/base/utils/SecurityUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/SecurityUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/SecurityUtils;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getLoginAccountRoleIconDrawable(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/LoginUtils;->a(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_pro_role:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_star_role:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLoginTypeIconDrawable(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_login_microsoft_2:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_login_google_2:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_login_account_2:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_login_wechat_2:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_login_huawei_2:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_login_email_2:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_login_phone_2:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final isLoginRequired()Z
    .locals 6

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHasLoggedIn()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getLocalAccountList()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    return v2

    :cond_2
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v0

    check-cast v2, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    sget-object v3, Lcom/onyx/galaxy/note/utils/LoginUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLocalLoginAt(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Ljava/util/Date;

    move-result-object v2

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    sget-object v5, Lcom/onyx/galaxy/note/utils/LoginUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;

    invoke-virtual {v5, v4}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLocalLoginAt(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    move-object v0, v3

    move-object v2, v4

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    check-cast v0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHasLoggedIn()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
