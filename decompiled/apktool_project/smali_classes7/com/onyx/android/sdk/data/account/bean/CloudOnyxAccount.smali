.class public final Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u00103\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0006\"\u0004\u0008A\u0010\u0008R\u001c\u0010B\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u0006\"\u0004\u0008D\u0010\u0008R\u001c\u0010E\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0006\"\u0004\u0008G\u0010\u0008R\u001c\u0010H\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u0006\"\u0004\u0008J\u0010\u0008R$\u0010K\u001a\u0008\u0012\u0004\u0012\u00020L0\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010\u000f\"\u0004\u0008N\u0010\u0011R\u001a\u0010O\u001a\u00020PX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001a\u0010U\u001a\u00020PX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010R\"\u0004\u0008W\u0010TR\u001c\u0010X\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u0006\"\u0004\u0008Z\u0010\u0008R\u001c\u0010[\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010\u0015\"\u0004\u0008]\u0010\u0017R\u001c\u0010^\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010\u0015\"\u0004\u0008`\u0010\u0017R\u001c\u0010a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u0006\"\u0004\u0008c\u0010\u0008R\u001c\u0010d\u001a\u0004\u0018\u00010eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010i\u00a8\u0006j"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
        "",
        "()V",
        "areaCode",
        "",
        "getAreaCode",
        "()Ljava/lang/String;",
        "setAreaCode",
        "(Ljava/lang/String;)V",
        "avatarUrl",
        "getAvatarUrl",
        "setAvatarUrl",
        "children",
        "",
        "getChildren",
        "()Ljava/util/List;",
        "setChildren",
        "(Ljava/util/List;)V",
        "created_at",
        "Ljava/util/Date;",
        "getCreated_at",
        "()Ljava/util/Date;",
        "setCreated_at",
        "(Ljava/util/Date;)V",
        "displayId",
        "getDisplayId",
        "setDisplayId",
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
        "hasPassword",
        "",
        "getHasPassword",
        "()Z",
        "setHasPassword",
        "(Z)V",
        "huawei",
        "Lcom/onyx/android/sdk/data/account/model/HuaweiModel;",
        "getHuawei",
        "()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;",
        "setHuawei",
        "(Lcom/onyx/android/sdk/data/account/model/HuaweiModel;)V",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
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
        "Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;",
        "getRoles",
        "setRoles",
        "storage_limit",
        "",
        "getStorage_limit",
        "()J",
        "setStorage_limit",
        "(J)V",
        "storage_used",
        "getStorage_used",
        "setStorage_used",
        "token",
        "getToken",
        "setToken",
        "tokenExpiredAt",
        "getTokenExpiredAt",
        "setTokenExpiredAt",
        "udpated_at",
        "getUdpated_at",
        "setUdpated_at",
        "uid",
        "getUid",
        "setUid",
        "wechat",
        "Lcom/onyx/android/sdk/data/account/model/WechatModel;",
        "getWechat",
        "()Lcom/onyx/android/sdk/data/account/model/WechatModel;",
        "setWechat",
        "(Lcom/onyx/android/sdk/data/account/model/WechatModel;)V",
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
.field private areaCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "area_code"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private created_at:Ljava/util/Date;
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

.field private hasPassword:Z

.field private huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:I

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
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "membershipList"
        }
    .end annotation

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

.field private storage_limit:J

.field private storage_used:J

.field private token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tokenExpiredAt:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private udpated_at:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->displayId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->areaCode:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->hasPassword:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->roles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAreaCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->areaCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->children:Ljava/util/List;

    return-object p0
.end method

.method public final getCreated_at()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->created_at:Ljava/util/Date;

    return-object p0
.end method

.method public final getDisplayId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->displayId:Ljava/lang/String;

    return-object p0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->email:Ljava/lang/String;

    return-object p0
.end method

.method public final getFirstLoginDate()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->firstLoginDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getGoogle()Lcom/onyx/android/sdk/data/account/model/GoogleModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->google:Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    return-object p0
.end method

.method public final getHasPassword()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->hasPassword:Z

    return p0
.end method

.method public final getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->id:I

    return p0
.end method

.method public final getMicrosoft()Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->microsoft:Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public final getParent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->parent:Ljava/lang/String;

    return-object p0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->phone:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->roles:Ljava/util/List;

    return-object p0
.end method

.method public final getStorage_limit()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->storage_limit:J

    return-wide v0
.end method

.method public final getStorage_used()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->storage_used:J

    return-wide v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->token:Ljava/lang/String;

    return-object p0
.end method

.method public final getTokenExpiredAt()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->tokenExpiredAt:Ljava/util/Date;

    return-object p0
.end method

.method public final getUdpated_at()Ljava/util/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->udpated_at:Ljava/util/Date;

    return-object p0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public final getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;

    return-object p0
.end method

.method public final setAreaCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public final setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public final setChildren(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->children:Ljava/util/List;

    return-void
.end method

.method public final setCreated_at(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->created_at:Ljava/util/Date;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->displayId:Ljava/lang/String;

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->email:Ljava/lang/String;

    return-void
.end method

.method public final setFirstLoginDate(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->firstLoginDate:Ljava/lang/String;

    return-void
.end method

.method public final setGoogle(Lcom/onyx/android/sdk/data/account/model/GoogleModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/GoogleModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->google:Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    return-void
.end method

.method public final setHasPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->hasPassword:Z

    return-void
.end method

.method public final setHuawei(Lcom/onyx/android/sdk/data/account/model/HuaweiModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/HuaweiModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->huawei:Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->id:I

    return-void
.end method

.method public final setMicrosoft(Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->microsoft:Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->nickname:Ljava/lang/String;

    return-void
.end method

.method public final setParent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->parent:Ljava/lang/String;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->phone:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->roles:Ljava/util/List;

    return-void
.end method

.method public final setStorage_limit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->storage_limit:J

    return-void
.end method

.method public final setStorage_used(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->storage_used:J

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->token:Ljava/lang/String;

    return-void
.end method

.method public final setTokenExpiredAt(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->tokenExpiredAt:Ljava/util/Date;

    return-void
.end method

.method public final setUdpated_at(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->udpated_at:Ljava/util/Date;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->uid:Ljava/lang/String;

    return-void
.end method

.method public final setWechat(Lcom/onyx/android/sdk/data/account/model/WechatModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/model/WechatModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;->wechat:Lcom/onyx/android/sdk/data/account/model/WechatModel;

    return-void
.end method
