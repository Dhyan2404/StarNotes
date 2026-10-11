.class public Lcom/sunia/authlib/managers/AuthorizeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;,
        Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;,
        Lcom/sunia/authlib/managers/AuthorizeManager$Instance;
    }
.end annotation


# static fields
.field public static final APPID_ERROR:I = -0x4

.field public static final CONTEXT_ERROR:I = 0xfae

.field public static final GET_ANDROID_ID_ERROR:I = 0xfad

.field public static final GET_DEVICEID_ERROR:I = 0xfaa

.field public static final GET_MAC_ERROR:I = 0xfab

.field public static final INPUT_ERROR:I = -0x2

.field public static final KEY_ERROR:I = 0x16

.field private static final SYNC_END_CODE:I = 0x4e20

.field private static final SYNC_START_CODE:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "AuthorizeManager"

.field private static mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mCountDownLatchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sunia/authlib/managers/AuthorizeManager;->mCallbackMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sunia/authlib/managers/AuthorizeManager;->mCountDownLatchMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/authlib/managers/AuthorizeManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sunia/authlib/managers/AuthorizeManager;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/sunia/authlib/managers/AuthorizeManager;
    .locals 1

    sget-object v0, Lcom/sunia/authlib/managers/AuthorizeManager$Instance;->instance:Lcom/sunia/authlib/managers/AuthorizeManager;

    return-object v0
.end method

.method private isCheckPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "failed ! no permission \'Manifest.permission.READ_PHONE_STATE\'"

    invoke-static {p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;)V

    return p0
.end method

.method private isParamEmpty(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;)I
    .locals 2

    const-string p0, ""

    if-nez p2, :cond_1

    .line 15
    sget-object p1, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string p2, "authorize: verifyData == null"

    invoke-static {p1, p2}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    if-eqz p3, :cond_0

    const-string p2, "-2 Error: verifyData == null"

    .line 16
    invoke-interface {p3, p1, p2, p0}, Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1

    .line 17
    :cond_1
    iget-object p2, p2, Lcom/sunia/authlib/bean/VerifyData;->deviceIdType:Lcom/sunia/authlib/bean/DeviceIdType;

    sget-object v0, Lcom/sunia/authlib/bean/DeviceIdType;->ANDROID_ID:Lcom/sunia/authlib/bean/DeviceIdType;

    const/16 v1, 0xfae

    if-ne p2, v0, :cond_3

    if-nez p1, :cond_3

    .line 18
    sget-object p1, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string p2, "authorize failed,Error: DeviceIdType is androidId,the Context is not null"

    invoke-static {p1, p2}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string p1, "4014 Error:Context is null,msg: DeviceIdType is androidId, the Context is not null."

    .line 19
    invoke-interface {p3, v1, p1, p0}, Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    .line 20
    :cond_3
    sget-object v0, Lcom/sunia/authlib/bean/DeviceIdType;->SERIAL_NO:Lcom/sunia/authlib/bean/DeviceIdType;

    if-ne p2, v0, :cond_5

    if-nez p1, :cond_5

    .line 21
    sget-object p1, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string p2, "authorize failed,Error: DeviceIdType is ServiceNo,the Context is not null"

    invoke-static {p1, p2}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p1, "4014 Error:Context is null,msg: DeviceIdType is ServiceNo, the Context is not null."

    .line 22
    invoke-interface {p3, v1, p1, p0}, Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private isParamEmpty(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;)Lcom/sunia/authlib/bean/AuthResultInfo;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p0, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string p1, "authorize: verifyData == null"

    invoke-static {p0, p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/sunia/authlib/bean/AuthResultInfo;

    invoke-direct {p0}, Lcom/sunia/authlib/bean/AuthResultInfo;-><init>()V

    const/4 p1, -0x2

    .line 3
    iput p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    const-string p1, "-2 Error: verifyData == null"

    .line 4
    iput-object p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p2, Lcom/sunia/authlib/bean/VerifyData;->deviceIdType:Lcom/sunia/authlib/bean/DeviceIdType;

    sget-object p2, Lcom/sunia/authlib/bean/DeviceIdType;->ANDROID_ID:Lcom/sunia/authlib/bean/DeviceIdType;

    const/16 v0, 0xfae

    if-ne p0, p2, :cond_1

    if-nez p1, :cond_1

    .line 6
    sget-object p0, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string p1, "authorize failed,Error: DeviceIdType is androidId,the Context is not null"

    invoke-static {p0, p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/sunia/authlib/bean/AuthResultInfo;

    invoke-direct {p0}, Lcom/sunia/authlib/bean/AuthResultInfo;-><init>()V

    .line 8
    iput v0, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    const-string p1, "4014 Error:Context is null,msg: DeviceIdType is androidId, the Context is not null."

    .line 9
    iput-object p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    return-object p0

    .line 10
    :cond_1
    sget-object p2, Lcom/sunia/authlib/bean/DeviceIdType;->SERIAL_NO:Lcom/sunia/authlib/bean/DeviceIdType;

    if-ne p0, p2, :cond_2

    if-nez p1, :cond_2

    .line 11
    sget-object p0, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string p1, "authorize failed,Error: DeviceIdType is ServiceNo,the Context is not null"

    invoke-static {p0, p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p0, Lcom/sunia/authlib/bean/AuthResultInfo;

    invoke-direct {p0}, Lcom/sunia/authlib/bean/AuthResultInfo;-><init>()V

    .line 13
    iput v0, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    const-string p1, "4014 Error:Context is null,msg: DeviceIdType is ServiceNo, the Context is not null."

    .line 14
    iput-object p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onCallback(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    sget-object v0, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallback requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " saveFilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2711

    if-lt p3, v1, :cond_1

    const/16 v1, 0x4e20

    if-gt p3, v1, :cond_1

    sget-object p4, Lcom/sunia/authlib/managers/AuthorizeManager;->mCountDownLatchMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "onCallback CountDownLatch end."

    invoke-static {v0, p4}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lcom/sunia/authlib/managers/AuthorizeManager;->mCountDownLatchMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;

    if-eqz p3, :cond_4

    new-instance p4, Lcom/sunia/authlib/bean/AuthResultInfo;

    invoke-direct {p4}, Lcom/sunia/authlib/bean/AuthResultInfo;-><init>()V

    iput-object p4, p3, Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;->authResultInfo:Lcom/sunia/authlib/bean/AuthResultInfo;

    iput p0, p4, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    iput-object p1, p4, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    iput-object p2, p4, Lcom/sunia/authlib/bean/AuthResultInfo;->savePath:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCallback. CountDownLatchMap is not containsKey "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sunia/authlib/managers/AuthorizeManager;->mCallbackMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sunia/authlib/managers/AuthorizeManager;->mCallbackMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sunia/authlib/managers/AuthorizeManager;->mCallbackMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    if-eqz p4, :cond_4

    const/4 p2, -0x1

    if-eq p0, p2, :cond_2

    const-string p0, "0080"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "0090"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    sget-object p0, Lcom/sunia/authlib/managers/AuthorizeManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private setInputErrorCallback(Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p3, p0, p5}, Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public authorize(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;)I
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/sunia/authlib/managers/AuthorizeManager;->isParamEmpty(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;)Lcom/sunia/authlib/bean/AuthResultInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, v2, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {p3, v3, v0, v4}, Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, v2, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    return v0

    :cond_1
    sget-object v2, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string v3, "authorize start "

    invoke-static {v2, v3}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sunia/authlib/bean/VerifyData;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sunia/authlib/bean/VerifyData;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sunia/authlib/bean/VerifyData;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "Error:ArgumentException:appid argument is empty"

    const/4 v3, -0x4

    const-string v4, " Error: appid does not exist"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/sunia/authlib/managers/AuthorizeManager;->setInputErrorCallback(Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    return v0

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "Error:ArgumentException:publicKey argument is empty"

    const/16 v3, 0x16

    const-string v4, " Error: publicKey does not exist"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/sunia/authlib/managers/AuthorizeManager;->setInputErrorCallback(Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x16

    return v0

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authorize  savePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ArgumentException:The savePath argument is not a file\uff01"

    const/4 v3, -0x2

    const-string v4, " Error: The savePath argument is not a file"

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/sunia/authlib/managers/AuthorizeManager;->setInputErrorCallback(Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0

    :cond_4
    invoke-virtual {p2, v5}, Lcom/sunia/authlib/bean/VerifyData;->setSavePath(Ljava/lang/String;)V

    :cond_5
    const/16 v2, 0x2710

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/sunia/authlib/utils/RandomUtil;->getRandomNum(II)I

    move-result v2

    :cond_6
    :goto_0
    sget-object v4, Lcom/sunia/authlib/managers/AuthorizeManager;->mCallbackMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x3e8

    if-le v2, v4, :cond_6

    move v2, v3

    goto :goto_0

    :cond_7
    sget-object v4, Lcom/sunia/authlib/managers/AuthorizeManager;->mCallbackMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->setAppContext(Landroid/content/Context;)V

    :cond_8
    new-instance v1, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;

    invoke-direct {v1, v2}, Lcom/sunia/authlib/managers/AuthorizeManager$AuthAsyncTask;-><init>(I)V

    new-array v2, v3, [Lcom/sunia/authlib/bean/VerifyData;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v3
.end method

.method public authorizeSync(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;)Lcom/sunia/authlib/bean/AuthResultInfo;
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/sunia/authlib/managers/AuthorizeManager;->isParamEmpty(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;)Lcom/sunia/authlib/bean/AuthResultInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string v0, "authorizeSync start "

    invoke-static {p0, v0}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sunia/authlib/bean/VerifyData;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sunia/authlib/bean/VerifyData;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sunia/authlib/bean/VerifyData;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Error:ArgumentException:appid argument is empty"

    invoke-static {p0, p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/authlib/bean/AuthResultInfo;

    invoke-direct {p0}, Lcom/sunia/authlib/bean/AuthResultInfo;-><init>()V

    const/4 p1, -0x4

    iput p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    const-string p1, " Error: appid does not exist"

    iput-object p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Error:ArgumentException:publicKey argument is empty"

    invoke-static {p0, p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/authlib/bean/AuthResultInfo;

    invoke-direct {p0}, Lcom/sunia/authlib/bean/AuthResultInfo;-><init>()V

    const/16 p1, 0x16

    iput p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    const-string p1, " Error: publicKey does not exist"

    iput-object p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authorize  savePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ArgumentException:The savePath argument is not a file;"

    invoke-static {p0, p1}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/authlib/bean/AuthResultInfo;

    invoke-direct {p0}, Lcom/sunia/authlib/bean/AuthResultInfo;-><init>()V

    const/4 p1, -0x2

    iput p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    const-string p1, " Error: The savePath argument is not a file"

    iput-object p1, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/sunia/authlib/bean/AuthResultInfo;->savePath:Ljava/lang/String;

    return-object p0

    :cond_3
    invoke-virtual {p2, v2}, Lcom/sunia/authlib/bean/VerifyData;->setSavePath(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->setAppContext(Landroid/content/Context;)V

    :cond_5
    const/16 p0, 0x2711

    const/16 p1, 0x4e20

    invoke-static {p0, p1}, Lcom/sunia/authlib/utils/RandomUtil;->getRandomNum(II)I

    move-result v0

    :cond_6
    :goto_0
    sget-object v1, Lcom/sunia/authlib/managers/AuthorizeManager;->mCountDownLatchMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_6

    move v0, p0

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;-><init>(I)V

    sget-object p1, Lcom/sunia/authlib/managers/AuthorizeManager;->mCountDownLatchMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorizeSync start requestCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sunia/authlib/bean/VerifyData;->getDeviceIdType()Lcom/sunia/authlib/bean/DeviceIdType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/authlib/bean/DeviceIdType;->getValue()I

    move-result v1

    invoke-static {p2, v1, v0}, Lcom/sunia/authlib/nativelibs/AuthorizeLib;->Authorize(Lcom/sunia/authlib/bean/VerifyData;II)I

    move-result p2

    if-eqz p2, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authorizeSync.res: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xfab

    if-ne p2, p0, :cond_8

    const-string p0, "Error:Get Mac failed"

    goto :goto_1

    :cond_8
    const/16 p0, 0xfaa

    if-ne p2, p0, :cond_9

    const-string p0, "Error: Failed to get  deviceid"

    goto :goto_1

    :cond_9
    const-string p0, "Error:"

    :goto_1
    new-instance p1, Lcom/sunia/authlib/bean/AuthResultInfo;

    invoke-direct {p1}, Lcom/sunia/authlib/bean/AuthResultInfo;-><init>()V

    iput p2, p1, Lcom/sunia/authlib/bean/AuthResultInfo;->code:I

    iput-object p0, p1, Lcom/sunia/authlib/bean/AuthResultInfo;->msg:Ljava/lang/String;

    iput-object v2, p1, Lcom/sunia/authlib/bean/AuthResultInfo;->savePath:Ljava/lang/String;

    goto :goto_2

    :cond_a
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;->authResultInfo:Lcom/sunia/authlib/bean/AuthResultInfo;

    :goto_2
    sget-object p0, Lcom/sunia/authlib/managers/AuthorizeManager;->mCountDownLatchMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_c
    sget-object p0, Lcom/sunia/authlib/managers/AuthorizeManager;->TAG:Ljava/lang/String;

    const-string p2, "authorizeSync end "

    invoke-static {p0, p2}, Lcom/sunia/authlib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setEnableLog(Z)V
    .locals 0

    sput-boolean p1, Lcom/sunia/authlib/utils/LogUtils;->isLog:Z

    return-void
.end method
