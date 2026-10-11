.class public Lcom/sunia/commonv2/global/HWREngineVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static appId:Ljava/lang/String;

.field public static deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

.field public static offlineStr:Ljava/lang/String;

.field public static publicKey:Ljava/lang/String;

.field public static sAndroidId:Ljava/lang/String;

.field public static sDebugMode:Z

.field public static sDemoPackageNameList:Ljava/util/List;

.field public static sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

.field public static sHWRApplication:Landroid/app/Application;

.field public static sIsHWRDemo:Z

.field public static sMainHandler:Landroid/os/Handler;

.field public static sReleaseMode:Z

.field public static sWhileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static systemLanguage:Ljava/lang/String;

.field public static urlType:Lcom/sunia/commonv2/auth/HWRURLType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sWhileList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sWhileList:Ljava/util/List;

    const-string v1, "99a4505e29b4d197"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sWhileList:Ljava/util/List;

    const-string v1, "2619b6a734ed631f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.authdemo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "WpfApp1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.math.calculate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.HWREngine.Demo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.HTREngine.recognizeDemo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.hwr.demo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.hwr.getstarted"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.PenEngine"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.example.estimatedPathDemo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.HTCDemo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.eginedemo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.motorola.handwritingcalculator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDemoPackageNameList:Ljava/util/List;

    const-string v1, "com.sunia.ocr.example"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sDebugMode:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sReleaseMode:Z

    const-string v0, ""

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sAndroidId:Ljava/lang/String;

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->appId:Ljava/lang/String;

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->publicKey:Ljava/lang/String;

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->offlineStr:Ljava/lang/String;

    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ANDROID_ID:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    sget-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->PROD:Lcom/sunia/commonv2/auth/HWRURLType;

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->urlType:Lcom/sunia/commonv2/auth/HWRURLType;

    const-string v0, "en_US"

    sput-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->systemLanguage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
