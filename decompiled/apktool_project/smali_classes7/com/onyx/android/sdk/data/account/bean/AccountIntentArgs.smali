.class public final Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u001e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u001eJ\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$J\u0010\u0010+\u001a\u00020\u00002\u0008\u0010)\u001a\u0004\u0018\u00010\u0004J\u0010\u00101\u001a\u00020\u00002\u0008\u0010/\u001a\u0004\u0018\u00010\u0004J\u0010\u00104\u001a\u00020\u00002\u0008\u00102\u001a\u0004\u0018\u00010\u0004J\u000e\u00107\u001a\u00020\u00002\u0006\u00105\u001a\u00020$J\u0010\u0010=\u001a\u00020\u00002\u0008\u0010;\u001a\u0004\u0018\u00010\u0004J\u0010\u0010@\u001a\u00020\u00002\u0008\u0010>\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u0011\u0010\u0018\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001aR\u0011\u0010\u001c\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001aR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0006\"\u0004\u0008+\u0010\u0008R\u001c\u0010,\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0006\"\u0004\u0008.\u0010\u0008R\u001c\u0010/\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0006\"\u0004\u00081\u0010\u0008R\u001c\u00102\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0006\"\u0004\u00084\u0010\u0008R\u001a\u00105\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010&\"\u0004\u00087\u0010(R\u001c\u00108\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u0006\"\u0004\u0008:\u0010\u0008R\u001c\u0010;\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0006\"\u0004\u0008=\u0010\u0008R\u001c\u0010>\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0006\"\u0004\u0008@\u0010\u0008\u00a8\u0006B"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;",
        "",
        "()V",
        "accessToken",
        "",
        "getAccessToken",
        "()Ljava/lang/String;",
        "setAccessToken",
        "(Ljava/lang/String;)V",
        "account",
        "getAccount",
        "setAccount",
        "areaCode",
        "getAreaCode",
        "setAreaCode",
        "authCode",
        "getAuthCode",
        "setAuthCode",
        "clientType",
        "getClientType",
        "setClientType",
        "imUserName",
        "getImUserName",
        "setImUserName",
        "isPhoneOrEmail",
        "",
        "()Z",
        "isWechatApp",
        "isWechatQr",
        "lastMasterClearTime",
        "",
        "getLastMasterClearTime",
        "()J",
        "setLastMasterClearTime",
        "(J)V",
        "loginType",
        "",
        "getLoginType",
        "()I",
        "setLoginType",
        "(I)V",
        "nickname",
        "getNickname",
        "setNickname",
        "openid",
        "getOpenid",
        "setOpenid",
        "password",
        "getPassword",
        "setPassword",
        "qrcodeId",
        "getQrcodeId",
        "setQrcodeId",
        "resultCode",
        "getResultCode",
        "setResultCode",
        "unionid",
        "getUnionid",
        "setUnionid",
        "verificationCode",
        "getVerificationCode",
        "setVerificationCode",
        "verify",
        "getVerify",
        "setVerify",
        "time",
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
.field private accessToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private account:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private areaCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private authCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clientType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imUserName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastMasterClearTime:J

.field private loginType:I

.field private nickname:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private openid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private qrcodeId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resultCode:I

.field private unionid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private verificationCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private verify:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public final getAccount()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->account:Ljava/lang/String;

    return-object p0
.end method

.method public final getAreaCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->areaCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getAuthCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getClientType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->clientType:Ljava/lang/String;

    return-object p0
.end method

.method public final getImUserName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->imUserName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastMasterClearTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->lastMasterClearTime:J

    return-wide v0
.end method

.method public final getLoginType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->loginType:I

    return p0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public final getOpenid()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->openid:Ljava/lang/String;

    return-object p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final getQrcodeId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->qrcodeId:Ljava/lang/String;

    return-object p0
.end method

.method public final getResultCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->resultCode:I

    return p0
.end method

.method public final getUnionid()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->unionid:Ljava/lang/String;

    return-object p0
.end method

.method public final getVerificationCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->verificationCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getVerify()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->verify:Ljava/lang/String;

    return-object p0
.end method

.method public final isPhoneOrEmail()Z
    .locals 2

    iget p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->loginType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final isWechatApp()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->loginType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWechatQr()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->loginType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setAccessToken(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setAccount(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->account:Ljava/lang/String;

    return-object p0
.end method

.method public final setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->account:Ljava/lang/String;

    return-void
.end method

.method public final setAreaCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->areaCode:Ljava/lang/String;

    return-object p0
.end method

.method public final setAreaCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public final setAuthCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public final setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->authCode:Ljava/lang/String;

    return-void
.end method

.method public final setClientType(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->clientType:Ljava/lang/String;

    return-object p0
.end method

.method public final setClientType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->clientType:Ljava/lang/String;

    return-void
.end method

.method public final setImUserName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->imUserName:Ljava/lang/String;

    return-void
.end method

.method public final setLastMasterClearTime(J)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->lastMasterClearTime:J

    return-object p0
.end method

.method public final setLastMasterClearTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->lastMasterClearTime:J

    return-void
.end method

.method public final setLoginType(I)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->loginType:I

    return-object p0
.end method

.method public final setLoginType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->loginType:I

    return-void
.end method

.method public final setNickname(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public final setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->nickname:Ljava/lang/String;

    return-void
.end method

.method public final setOpenid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->openid:Ljava/lang/String;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->password:Ljava/lang/String;

    return-void
.end method

.method public final setQrcodeId(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->qrcodeId:Ljava/lang/String;

    return-object p0
.end method

.method public final setQrcodeId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->qrcodeId:Ljava/lang/String;

    return-void
.end method

.method public final setResultCode(I)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->resultCode:I

    return-object p0
.end method

.method public final setResultCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->resultCode:I

    return-void
.end method

.method public final setUnionid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->unionid:Ljava/lang/String;

    return-void
.end method

.method public final setVerificationCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->verificationCode:Ljava/lang/String;

    return-object p0
.end method

.method public final setVerificationCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->verificationCode:Ljava/lang/String;

    return-void
.end method

.method public final setVerify(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->verify:Ljava/lang/String;

    return-object p0
.end method

.method public final setVerify(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;->verify:Ljava/lang/String;

    return-void
.end method
