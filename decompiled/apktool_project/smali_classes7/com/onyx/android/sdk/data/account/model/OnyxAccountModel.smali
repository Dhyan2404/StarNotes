.class public final Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u008d\u0001\u001a\u00020\u001cH\u0016J\u0012\u0010\u008e\u0001\u001a\u00030\u008f\u00012\u0008\u0010\u0090\u0001\u001a\u00030\u0091\u0001J\u0011\u0010\u008e\u0001\u001a\u00030\u008f\u00012\u0007\u0010\u0090\u0001\u001a\u00020\u0000R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\u001c\u0010$\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001e\"\u0004\u0008&\u0010 R\u001a\u0010\'\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001e\"\u0004\u0008)\u0010 R\u0013\u0010*\u001a\u0004\u0018\u00010\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u001eR\u001c\u0010,\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001e\"\u0004\u0008.\u0010 R\u001c\u0010/\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001e\"\u0004\u00081\u0010 R\u001c\u00102\u001a\u0004\u0018\u000103X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001a\u00108\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001a\u0010>\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010;\"\u0004\u0008@\u0010=R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001c\u0010G\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u0006\"\u0004\u0008I\u0010\u0008R\u001a\u0010J\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010;\"\u0004\u0008L\u0010=R\u001c\u0010M\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\u0006\"\u0004\u0008O\u0010\u0008R\u001c\u0010P\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\u001e\"\u0004\u0008R\u0010 R\u001c\u0010S\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010\u0006\"\u0004\u0008U\u0010\u0008R\u001a\u0010V\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\u000c\"\u0004\u0008X\u0010\u000eR\u001a\u0010Y\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010;\"\u0004\u0008[\u0010=R\u001a\u0010\\\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010\u000c\"\u0004\u0008^\u0010\u000eR\u001c\u0010_\u001a\u0004\u0018\u00010`X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\u001c\u0010e\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010\u001e\"\u0004\u0008g\u0010 R\u001c\u0010h\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010\u001e\"\u0004\u0008j\u0010 R\u001c\u0010k\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u0010\u001e\"\u0004\u0008m\u0010 R\u001c\u0010n\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010\u001e\"\u0004\u0008p\u0010 R \u0010q\u001a\u0008\u0012\u0004\u0012\u00020s0rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u001a\u0010x\u001a\u00020yX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R\u001b\u0010~\u001a\u00020yX\u0086\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u0010{\"\u0005\u0008\u0080\u0001\u0010}R\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010\u001e\"\u0005\u0008\u0083\u0001\u0010 R\u001f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0085\u0001\u0010\u0006\"\u0005\u0008\u0086\u0001\u0010\u0008R\"\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\"\u0006\u0008\u008b\u0001\u0010\u008c\u0001\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "accountCreateAt",
        "Ljava/util/Date;",
        "getAccountCreateAt",
        "()Ljava/util/Date;",
        "setAccountCreateAt",
        "(Ljava/util/Date;)V",
        "accountId",
        "",
        "getAccountId",
        "()I",
        "setAccountId",
        "(I)V",
        "accountPermission",
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermission;",
        "getAccountPermission",
        "()Lcom/onyx/android/sdk/data/account/bean/AccountPermission;",
        "setAccountPermission",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountPermission;)V",
        "accountQuota",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuota;",
        "getAccountQuota",
        "()Lcom/onyx/android/sdk/data/account/bean/AccountQuota;",
        "setAccountQuota",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;)V",
        "areaCode",
        "",
        "getAreaCode",
        "()Ljava/lang/String;",
        "setAreaCode",
        "(Ljava/lang/String;)V",
        "avatarUrl",
        "getAvatarUrl",
        "setAvatarUrl",
        "clusterId",
        "getClusterId",
        "setClusterId",
        "displayId",
        "getDisplayId",
        "setDisplayId",
        "displayName",
        "getDisplayName",
        "email",
        "getEmail",
        "setEmail",
        "firstLoginDate",
        "getFirstLoginDate",
        "setFirstLoginDate",
        "google",
        "Lcom/onyx/android/sdk/data/account/model/GoogleModel;",
        "getGoogle",
        "()Lcom/onyx/android/sdk/data/account/model/GoogleModel;",
        "setGoogle",
        "(Lcom/onyx/android/sdk/data/account/model/GoogleModel;)V",
        "hasLoggedIn",
        "",
        "getHasLoggedIn",
        "()Z",
        "setHasLoggedIn",
        "(Z)V",
        "hasPassword",
        "getHasPassword",
        "setHasPassword",
        "huawei",
        "Lcom/onyx/android/sdk/data/account/model/HuaweiModel;",
        "getHuawei",
        "()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;",
        "setHuawei",
        "(Lcom/onyx/android/sdk/data/account/model/HuaweiModel;)V",
        "localLoginAt",
        "getLocalLoginAt",
        "setLocalLoginAt",
        "localVisible",
        "getLocalVisible",
        "setLocalVisible",
        "logOutAt",
        "getLogOutAt",
        "setLogOutAt",
        "loginAccount",
        "getLoginAccount",
        "setLoginAccount",
        "loginAt",
        "getLoginAt",
        "setLoginAt",
        "loginType",
        "getLoginType",
        "setLoginType",
        "logoff",
        "getLogoff",
        "setLogoff",
        "logoutReason",
        "getLogoutReason",
        "setLogoutReason",
        "microsoft",
        "Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;",
        "getMicrosoft",
        "()Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;",
        "setMicrosoft",
        "(Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;)V",
        "name",
        "getName",
        "setName",
        "nickname",
        "getNickname",
        "setNickname",
        "parent",
        "getParent",
        "setParent",
        "phone",
        "getPhone",
        "setPhone",
        "roles",
        "",
        "Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;",
        "getRoles",
        "()Ljava/util/List;",
        "setRoles",
        "(Ljava/util/List;)V",
        "storageLimit",
        "",
        "getStorageLimit",
        "()J",
        "setStorageLimit",
        "(J)V",
        "storageUsed",
        "getStorageUsed",
        "setStorageUsed",
        "token",
        "getToken",
        "setToken",
        "tokenExpiredAt",
        "getTokenExpiredAt",
        "setTokenExpiredAt",
        "wechat",
        "Lcom/onyx/android/sdk/data/account/model/WechatModel;",
        "getWechat",
        "()Lcom/onyx/android/sdk/data/account/model/WechatModel;",
        "setWechat",
        "(Lcom/onyx/android/sdk/data/account/model/WechatModel;)V",
        "toString",
        "updateAttribute",
        "",
        "latest",
        "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private accountCreateAt:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private accountId:I

.field private accountPermission:Lcom/onyx/android/sdk/data/account/bean/AccountPermission;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private accountQuota:Lcom/onyx/android/sdk/data/account/bean/AccountQuota;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private areaCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clusterId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private displayId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private firstLoginDate:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private google:Lcom/onyx/android/sdk/data/account/model/GoogleModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasLoggedIn:Z

.field private hasPassword:Z

.field private huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private localLoginAt:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private localVisible:Z

.field private logOutAt:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loginAccount:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loginAt:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loginType:I

.field private logoff:Z

.field private logoutReason:I

.field private microsoft:Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private roles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private storageLimit:J

.field private storageUsed:J

.field private token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tokenExpiredAt:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->displayId:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->loginType:I

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->hasPassword:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->storageLimit:J

    iput-wide v1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->storageUsed:J

    new-instance v1, Lcom/onyx/android/sdk/data/account/bean/AccountPermission;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermission;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountPermission:Lcom/onyx/android/sdk/data/account/bean/AccountPermission;

    new-instance v1, Lcom/onyx/android/sdk/data/account/bean/AccountQuota;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountQuota;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountQuota:Lcom/onyx/android/sdk/data/account/bean/AccountQuota;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->roles:Ljava/util/List;

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->localVisible:Z

    return-void
.end method


# virtual methods
.method public final getAccountCreateAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountCreateAt:Ljava/util/Date;

    return-object p0
.end method

.method public final getAccountId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountId:I

    return p0
.end method

.method public final getAccountPermission()Lcom/onyx/android/sdk/data/account/bean/AccountPermission;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountPermission:Lcom/onyx/android/sdk/data/account/bean/AccountPermission;

    return-object p0
.end method

.method public final getAccountQuota()Lcom/onyx/android/sdk/data/account/bean/AccountQuota;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountQuota:Lcom/onyx/android/sdk/data/account/bean/AccountQuota;

    return-object p0
.end method

.method public final getAreaCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->areaCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getClusterId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->clusterId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->displayId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->phone:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->email:Ljava/lang/String;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->email:Ljava/lang/String;

    return-object p0
.end method

.method public final getFirstLoginDate()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->firstLoginDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getGoogle()Lcom/onyx/android/sdk/data/account/model/GoogleModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->google:Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    return-object p0
.end method

.method public final getHasLoggedIn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->hasLoggedIn:Z

    return p0
.end method

.method public final getHasPassword()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->hasPassword:Z

    return p0
.end method

.method public final getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    return-object p0
.end method

.method public final getLocalLoginAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->localLoginAt:Ljava/util/Date;

    return-object p0
.end method

.method public final getLocalVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->localVisible:Z

    return p0
.end method

.method public final getLogOutAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->logOutAt:Ljava/util/Date;

    return-object p0
.end method

.method public final getLoginAccount()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->loginAccount:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoginAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->loginAt:Ljava/util/Date;

    return-object p0
.end method

.method public final getLoginType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->loginType:I

    return p0
.end method

.method public final getLogoff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->logoff:Z

    return p0
.end method

.method public final getLogoutReason()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->logoutReason:I

    return p0
.end method

.method public final getMicrosoft()Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->microsoft:Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public final getParent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->parent:Ljava/lang/String;

    return-object p0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public final getRoles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->roles:Ljava/util/List;

    return-object p0
.end method

.method public final getStorageLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->storageLimit:J

    return-wide v0
.end method

.method public final getStorageUsed()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->storageUsed:J

    return-wide v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->token:Ljava/lang/String;

    return-object p0
.end method

.method public final getTokenExpiredAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->tokenExpiredAt:Ljava/util/Date;

    return-object p0
.end method

.method public final getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;

    return-object p0
.end method

.method public final setAccountCreateAt(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountCreateAt:Ljava/util/Date;

    return-void
.end method

.method public final setAccountId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountId:I

    return-void
.end method

.method public final setAccountPermission(Lcom/onyx/android/sdk/data/account/bean/AccountPermission;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountPermission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountPermission:Lcom/onyx/android/sdk/data/account/bean/AccountPermission;

    return-void
.end method

.method public final setAccountQuota(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountQuota;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountQuota:Lcom/onyx/android/sdk/data/account/bean/AccountQuota;

    return-void
.end method

.method public final setAreaCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public final setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public final setClusterId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->clusterId:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->displayId:Ljava/lang/String;

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->email:Ljava/lang/String;

    return-void
.end method

.method public final setFirstLoginDate(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->firstLoginDate:Ljava/lang/String;

    return-void
.end method

.method public final setGoogle(Lcom/onyx/android/sdk/data/account/model/GoogleModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/GoogleModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->google:Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    return-void
.end method

.method public final setHasLoggedIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->hasLoggedIn:Z

    return-void
.end method

.method public final setHasPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->hasPassword:Z

    return-void
.end method

.method public final setHuawei(Lcom/onyx/android/sdk/data/account/model/HuaweiModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/HuaweiModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    return-void
.end method

.method public final setLocalLoginAt(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->localLoginAt:Ljava/util/Date;

    return-void
.end method

.method public final setLocalVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->localVisible:Z

    return-void
.end method

.method public final setLogOutAt(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->logOutAt:Ljava/util/Date;

    return-void
.end method

.method public final setLoginAccount(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->loginAccount:Ljava/lang/String;

    return-void
.end method

.method public final setLoginAt(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->loginAt:Ljava/util/Date;

    return-void
.end method

.method public final setLoginType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->loginType:I

    return-void
.end method

.method public final setLogoff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->logoff:Z

    return-void
.end method

.method public final setLogoutReason(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->logoutReason:I

    return-void
.end method

.method public final setMicrosoft(Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->microsoft:Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->nickname:Ljava/lang/String;

    return-void
.end method

.method public final setParent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->parent:Ljava/lang/String;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setRoles(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->roles:Ljava/util/List;

    return-void
.end method

.method public final setStorageLimit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->storageLimit:J

    return-void
.end method

.method public final setStorageUsed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->storageUsed:J

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->token:Ljava/lang/String;

    return-void
.end method

.method public final setTokenExpiredAt(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->tokenExpiredAt:Ljava/util/Date;

    return-void
.end method

.method public final setWechat(Lcom/onyx/android/sdk/data/account/model/WechatModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/WechatModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nickname:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",clusterId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->clusterId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAttribute(Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "latest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getId()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->accountId:I

    .line 17
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getDisplayId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->displayId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->nickname:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->areaCode:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getHasPassword()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->hasPassword:Z

    .line 21
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->phone:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->email:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;

    .line 24
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    .line 25
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getGoogle()Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->google:Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    .line 26
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getMicrosoft()Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->microsoft:Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    .line 27
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->avatarUrl:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getRoles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->roles:Ljava/util/List;

    .line 29
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel$updateAttribute$3;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel$updateAttribute$3;-><init>(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->whenNotNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getTokenExpiredAt()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel$updateAttribute$4;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel$updateAttribute$4;-><init>(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->whenNotNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getStorage_limit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->storageLimit:J

    .line 32
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getStorage_used()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->storageUsed:J

    .line 33
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->getFirstLoginDate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->firstLoginDate:Ljava/lang/String;

    return-void
.end method

.method public final updateAttribute(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "latest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->nickname:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->nickname:Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->areaCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->areaCode:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->phone:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->email:Ljava/lang/String;

    .line 5
    iget-boolean v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->hasPassword:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->hasPassword:Z

    .line 6
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;

    .line 7
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    .line 8
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->google:Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->google:Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    .line 9
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->microsoft:Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->microsoft:Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    .line 10
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->avatarUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->avatarUrl:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->roles:Ljava/util/List;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->roles:Ljava/util/List;

    .line 12
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->token:Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel$updateAttribute$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel$updateAttribute$1;-><init>(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->whenNotNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 13
    iget-object v0, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->tokenExpiredAt:Ljava/util/Date;

    new-instance v1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel$updateAttribute$2;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel$updateAttribute$2;-><init>(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->whenNotNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 14
    iget-object p1, p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->clusterId:Ljava/lang/String;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->clusterId:Ljava/lang/String;

    return-void
.end method
