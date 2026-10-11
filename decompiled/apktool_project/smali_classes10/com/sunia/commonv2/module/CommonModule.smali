.class public Lcom/sunia/commonv2/module/CommonModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "CommonModule"

.field private static sCommonModule:Lcom/sunia/commonv2/module/ICommonModule;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachBaseContext(Landroid/content/Context;Lcom/sunia/commonv2/module/ICommonModule;)V
    .locals 5

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRCommonUtil;->getApplicationContent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isHWRDemo(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sIsHWRDemo:Z

    sput-object p1, Lcom/sunia/commonv2/module/CommonModule;->sCommonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDebugMode:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sReleaseMode:Z

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sMainHandler:Landroid/os/Handler;

    :try_start_0
    const-class v0, Lcom/sunia/hwrv2/sdk/BuildConfig;

    const-string v1, "versionName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gitBranch"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "5.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sunia/commonv2/enum2/EEngineVersion;->v521:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sput-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    const-string v2, "5.2.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sunia/commonv2/enum2/EEngineVersion;->v522:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sput-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    :cond_0
    const-string v2, "5.2.3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sunia/commonv2/enum2/EEngineVersion;->v523:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sput-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    :cond_1
    const-string v2, "5.2.4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sunia/commonv2/enum2/EEngineVersion;->v524:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sput-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    goto :goto_0

    :cond_2
    const-string v2, "5.3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sunia/commonv2/enum2/EEngineVersion;->v531:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sput-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    goto :goto_0

    :cond_3
    const-string v2, "5.4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sunia/commonv2/enum2/EEngineVersion;->v541:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sput-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    goto :goto_0

    :cond_4
    const-string v2, "5.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/sunia/commonv2/enum2/EEngineVersion;->v551:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sput-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    :cond_5
    :goto_0
    sget-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    invoke-virtual {v2, v1}, Lcom/sunia/commonv2/enum2/EEngineVersion;->setVersionName(Ljava/lang/String;)V

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    invoke-virtual {v1, v0}, Lcom/sunia/commonv2/enum2/EEngineVersion;->setGitBranch(Ljava/lang/String;)V

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "hwr_sdk_configure_app_id_tip"

    if-nez v3, :cond_9

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "hwr_sdk_configure_public_key_tip"

    if-nez v2, :cond_8

    const-string v2, "202211332095163494"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsku0DUXVEipJ3svGNCrUYT0WniyiHWCWkfosWngEruPw5tOfiZuOLF/ySxe7roWwWROZax5OD6O/X0TwDW+o8nHNNLcdDY3gJp5Z9ZSfAmIq4OuAKoNM7JvJhRTP5NyuX9P9M+BU7o/zfdecbr0wfmY69vrC9BOZ6xBPTih7E2yBNfAkMpcub4ZcxhJdIqQGFC5Qen1bRJiLf4Mo4TlkxP9oXcS53CvFJAGqJ7msgWwoSXAM1OJgtbgE2KhwrCpbwlAqC/F8k4gpFratvOgnqwuqjBur9A0o9eGlxupxL7GzaPJz234RgiaHRdjiG8AKKGAqUVXwQKr1tadyVrdQEwIDAQAB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0, v3}, Lcom/sunia/commonv2/module/CommonModule;->getResString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0, v4}, Lcom/sunia/commonv2/module/CommonModule;->getResString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0, v3}, Lcom/sunia/commonv2/module/CommonModule;->getResString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0, v4}, Lcom/sunia/commonv2/module/CommonModule;->getResString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_1
    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getAndroidLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->setDebugLevel(I)V

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getAppLogDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->setFilePath(Ljava/lang/String;)V

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sAndroidId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getOffline()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getUrlType()Lcom/sunia/commonv2/auth/HWRURLType;

    move-result-object v3

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getDeviceIdType()Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sunia/commonv2/module/CommonModule;->loadAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sunia/commonv2/auth/HWRURLType;Lcom/sunia/commonv2/auth/HWRDeviceIdType;)V

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->loadTestInfo()V

    sget-object v0, Lcom/sunia/commonv2/module/CommonModule;->sCommonModule:Lcom/sunia/commonv2/module/ICommonModule;

    invoke-static {v0}, Lcom/sunia/commonv2/module/CommonHelper;->deleteCachedFile(Lcom/sunia/commonv2/module/ICommonModule;)V

    invoke-static {p0, p1}, Lcom/sunia/commonv2/module/CommonModule;->printSDKInfo(Landroid/content/Context;Lcom/sunia/commonv2/module/ICommonModule;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "hwr_sdk_configure_engine_version_tip"

    invoke-static {p0, v0}, Lcom/sunia/commonv2/module/CommonModule;->getResString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;
    .locals 2

    sget-object v0, Lcom/sunia/commonv2/module/CommonModule;->sCommonModule:Lcom/sunia/commonv2/module/ICommonModule;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please call CommonModule.attachBaseContext first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getResString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Lcom/sunia/hwrv2/sdk/R$string;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sunia/commonv2/auth/HWRURLType;Lcom/sunia/commonv2/auth/HWRDeviceIdType;)V
    .locals 3

    sput-object p0, Lcom/sunia/commonv2/global/HWREngineVariable;->appId:Ljava/lang/String;

    sput-object p1, Lcom/sunia/commonv2/global/HWREngineVariable;->publicKey:Ljava/lang/String;

    sput-object p2, Lcom/sunia/commonv2/global/HWREngineVariable;->offlineStr:Ljava/lang/String;

    sput-object p3, Lcom/sunia/commonv2/global/HWREngineVariable;->urlType:Lcom/sunia/commonv2/auth/HWRURLType;

    sput-object p4, Lcom/sunia/commonv2/global/HWREngineVariable;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    sget-object v0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAuthInfo,appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",publicKey="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",offlineStr="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",urlType="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",deviceIdType="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static loadTestInfo()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    const-string v1, "loadTestInfo1"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getTestVerifyDataFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    const-string v1, "loadTestInfo2"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    const-string v1, "loadTestInfo3"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRCommonUtil;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/sunia/commonv2/auth/HWRVerifyData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/commonv2/auth/HWRVerifyData;

    sget-object v1, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    const-string v2, "loadTestInfo4"

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sunia/commonv2/auth/HWRVerifyData;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunia/commonv2/auth/HWRVerifyData;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sunia/commonv2/auth/HWRVerifyData;->getOfflineStr()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/sunia/commonv2/auth/HWRVerifyData;->urlType:I

    iget-object v0, v0, Lcom/sunia/commonv2/auth/HWRVerifyData;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    sget-object v5, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    const-string v6, "loadTestInfo5"

    invoke-static {v5, v6}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/sunia/commonv2/auth/HWRURLType;->fromValue(I)Lcom/sunia/commonv2/auth/HWRURLType;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sunia/commonv2/module/CommonModule;->loadAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sunia/commonv2/auth/HWRURLType;Lcom/sunia/commonv2/auth/HWRDeviceIdType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static printSDKInfo(Landroid/content/Context;Lcom/sunia/commonv2/module/ICommonModule;)V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    const-string v0, ">>>>>>>>>>>>"

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "androidid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->sAndroidId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commonModule.isDebug()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->isDebug()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HWREngineVariable.sEngineVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/HTREnginev2/sdk/Engine;->getEngineVersionV2()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engineVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "packageName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "hwr/sdk/BuildInfo.txt"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->readAssetsFileToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdkBuildInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "hwr/engine/BuildInfo.txt"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->readAssetsFileToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "engineBuildInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    const-string p1, "<<<<<<<<<<<<"

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printSDKInfo Exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static saveAuth2File()V
    .locals 3

    new-instance v0, Lcom/sunia/commonv2/auth/HWRVerifyData;

    invoke-direct {v0}, Lcom/sunia/commonv2/auth/HWRVerifyData;-><init>()V

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/sunia/commonv2/auth/HWRVerifyData;->appid:Ljava/lang/String;

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->publicKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/sunia/commonv2/auth/HWRVerifyData;->publicKey:Ljava/lang/String;

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->offlineStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/sunia/commonv2/auth/HWRVerifyData;->offlineStr:Ljava/lang/String;

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->urlType:Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-virtual {v1}, Lcom/sunia/commonv2/auth/HWRURLType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/sunia/commonv2/auth/HWRVerifyData;->urlType:I

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    iput-object v1, v0, Lcom/sunia/commonv2/auth/HWRVerifyData;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sunia/commonv2/module/ICommonModule;->getTestVerifyDataFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/sunia/commonv2/util/HWRCommonUtil;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sunia/commonv2/module/CommonModule;->TAG:Ljava/lang/String;

    const-string v1, "saveAuth2File failed"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
