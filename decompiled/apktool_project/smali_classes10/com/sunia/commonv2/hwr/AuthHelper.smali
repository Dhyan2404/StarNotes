.class Lcom/sunia/commonv2/hwr/AuthHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorize(Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V
    .locals 6

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    invoke-virtual {v0}, Lcom/sunia/commonv2/enum2/EEngineVersion;->isV52()Z

    move-result v0

    const-string v1, "manufacturer authentication"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-interface {p0, v2, v1, v0}, Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sunia/commonv2/hwr/AuthHelper;->noAuthAAR()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v3

    invoke-interface {v3}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v1, v0}, Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;->onCallback(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sunia/commonv2/hwr/AuthHelper;->getVerifyData()Lcom/sunia/authlib/bean/VerifyData;

    move-result-object v0

    sget-boolean v1, Lcom/sunia/commonv2/global/HWREngineVariable;->sDebugMode:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6388\u6743\u4fe1\u606fverifyData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sunia/authlib/bean/VerifyData;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthHelper"

    invoke-static {v2, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/sunia/commonv2/hwr/AuthHelper;->isWaitForAuth(Lcom/sunia/authlib/bean/VerifyData;)Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/sunia/authlib/managers/AuthManager;->getInstance()Lcom/sunia/authlib/managers/AuthManager;

    move-result-object v3

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v4

    invoke-interface {v4}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v4

    new-instance v5, Lcom/sunia/commonv2/hwr/AuthHelper$1;

    invoke-direct {v5, v2, v1, p0}, Lcom/sunia/commonv2/hwr/AuthHelper$1;-><init>(Ljava/util/List;ZLcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V

    invoke-virtual {v3, v4, v0, v5}, Lcom/sunia/authlib/managers/AuthManager;->authorize(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;)I

    return-void
.end method

.method public static authorizeV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V
    .locals 8

    const-string v0, "authorizeV2"

    const-string v1, "AuthHelper"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/authlib/bean/VerifyData;

    invoke-direct {v0}, Lcom/sunia/authlib/bean/VerifyData;-><init>()V

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sunia.hwr.demo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.onyx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/commonv2/util/SignaturesUtil;->getApkSignatureSHA256(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "c54552804534f876822a77290eecee02413ffc9a6d93c9b51b953549e667302f"

    const-string v5, ":"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SHA256 not in the whitelist,apkSignatureSHA256="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SHA256 not in the whitelist"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "packageName not in the whitelist"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    :try_start_0
    const-string v2, "com.onyx.android.sdk.auth.UserConfig"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "singleton"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "getUserId"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v3}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, p0}, Lcom/sunia/authlib/bean/VerifyData;->setAppid(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sunia/authlib/bean/VerifyData;->setPublicKey(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p2}, Lcom/sunia/authlib/bean/VerifyData;->setOfflineStr(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object p1

    invoke-interface {p1, p0, v3}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sunia/authlib/bean/VerifyData;->setSavePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/authlib/managers/AuthManager;->getInstance()Lcom/sunia/authlib/managers/AuthManager;

    move-result-object p1

    invoke-static {}, Lcom/sunia/commonv2/hwr/AuthHelper;->getAuthLogEnable()Z

    move-result p2

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeLogDir()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_authLog.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v2, v4}, Lcom/sunia/authlib/managers/AuthManager;->setEnableLog(ZLjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u52a8\u6001\u6388\u6743appId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",userId="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sunia/commonv2/hwr/AuthHelper;->isWaitForAuth(Lcom/sunia/authlib/bean/VerifyData;)Z

    move-result p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/sunia/authlib/managers/AuthManager;->getInstance()Lcom/sunia/authlib/managers/AuthManager;

    move-result-object p2

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/sunia/commonv2/hwr/AuthHelper$2;

    invoke-direct {v2, p1, p0, p3}, Lcom/sunia/commonv2/hwr/AuthHelper$2;-><init>(Ljava/util/List;ZLcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V

    invoke-virtual {p2, v1, v0, v2}, Lcom/sunia/authlib/managers/AuthManager;->authorize(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;)I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "userId is empty"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "publicKey is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "appId is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAuthLogEnable()Z
    .locals 2

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/sunia/commonv2/module/ICommonModule;->getAndroidLogLevel()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private static getDeviceIdType(Lcom/sunia/commonv2/auth/HWRDeviceIdType;)Lcom/sunia/authlib/bean/DeviceIdType;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->WLAN_MAC:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sunia/authlib/bean/DeviceIdType;->WLAN_MAC:Lcom/sunia/authlib/bean/DeviceIdType;

    return-object p0

    :cond_0
    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ETH_MAC:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/sunia/authlib/bean/DeviceIdType;->ETH_MAC:Lcom/sunia/authlib/bean/DeviceIdType;

    return-object p0

    :cond_1
    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ANDROID_ID:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/sunia/authlib/bean/DeviceIdType;->ANDROID_ID:Lcom/sunia/authlib/bean/DeviceIdType;

    return-object p0

    :cond_2
    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->SERIAL_NO:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/sunia/authlib/bean/DeviceIdType;->SERIAL_NO:Lcom/sunia/authlib/bean/DeviceIdType;

    return-object p0

    :cond_3
    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->BOOT_SERIAL_NO:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/sunia/authlib/bean/DeviceIdType;->BOOT_SERIAL_NO:Lcom/sunia/authlib/bean/DeviceIdType;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "\u8bf7\u5148\u540c\u6b65\u914d\u7f6eDeviceIdType"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getURLType(Lcom/sunia/commonv2/auth/HWRURLType;)Lcom/sunia/authlib/bean/URLType;
    .locals 6

    invoke-static {}, Lcom/sunia/authlib/bean/URLType;->values()[Lcom/sunia/authlib/bean/URLType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sunia/authlib/bean/URLType;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/sunia/commonv2/auth/HWRURLType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "\u6388\u6743\u6587\u4ef6URLType\u6709\u66f4\u65b0\uff0c\u8bf7\u5148\u540c\u6b65\u914d\u7f6e\u5230HWRURLType"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getVerifyData()Lcom/sunia/authlib/bean/VerifyData;
    .locals 5

    new-instance v0, Lcom/sunia/authlib/bean/VerifyData;

    invoke-direct {v0}, Lcom/sunia/authlib/bean/VerifyData;-><init>()V

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CommonModule.attachBaseContext\u65b9\u6cd5\u9700\u8981\u5148\u8c03\u7528"

    if-nez v1, :cond_1

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->publicKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sunia/authlib/bean/VerifyData;->setAppid(Ljava/lang/String;)V

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->publicKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sunia/authlib/bean/VerifyData;->setPublicKey(Ljava/lang/String;)V

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->offlineStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sunia/authlib/bean/VerifyData;->setOfflineStr(Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunia/authlib/bean/VerifyData;->setSavePath(Ljava/lang/String;)V

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    invoke-static {v1}, Lcom/sunia/commonv2/hwr/AuthHelper;->getDeviceIdType(Lcom/sunia/commonv2/auth/HWRDeviceIdType;)Lcom/sunia/authlib/bean/DeviceIdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunia/authlib/bean/VerifyData;->setDeviceIdType(Lcom/sunia/authlib/bean/DeviceIdType;)V

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->urlType:Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-static {v1}, Lcom/sunia/commonv2/hwr/AuthHelper;->getURLType(Lcom/sunia/commonv2/auth/HWRURLType;)Lcom/sunia/authlib/bean/URLType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunia/authlib/bean/VerifyData;->setUrlType(Lcom/sunia/authlib/bean/URLType;)V

    invoke-static {}, Lcom/sunia/authlib/managers/AuthManager;->getInstance()Lcom/sunia/authlib/managers/AuthManager;

    move-result-object v1

    invoke-static {}, Lcom/sunia/commonv2/hwr/AuthHelper;->getAuthLogEnable()Z

    move-result v2

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v3

    invoke-interface {v3}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeLogDir()Ljava/lang/String;

    move-result-object v3

    const-string v4, "authLog.txt"

    invoke-virtual {v1, v2, v3, v4}, Lcom/sunia/authlib/managers/AuthManager;->setEnableLog(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isWaitForAuth(Lcom/sunia/authlib/bean/VerifyData;)Z
    .locals 7

    iget-object v0, p0, Lcom/sunia/authlib/bean/VerifyData;->offlineStr:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sunia/authlib/bean/VerifyData;->getSavePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authorize file length="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AuthHelper"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    cmp-long p0, v3, v5

    if-gez p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method private static noAuthAAR()Z
    .locals 2

    :try_start_0
    const-string v0, "com.sunia.authlib.bean.URLType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    const-string v0, "AuthHelper"

    const-string v1, "\u5f53\u524d\u6ca1\u6709\u96c6\u6210\u6388\u6743aar"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
