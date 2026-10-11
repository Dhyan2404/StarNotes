.class public Lcom/trans/android/poi/POIUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "POIUtils"

.field private static service:Lcom/trans/android/poi/POIService;


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

.method private static getService()Lcom/trans/android/poi/POIService;
    .locals 3

    sget-object v0, Lcom/trans/android/poi/POIUtils;->service:Lcom/trans/android/poi/POIService;

    if-nez v0, :cond_0

    const-class v0, Lcom/trans/android/poi/POIService;

    invoke-static {v0}, Lcom/trans/android/service/ServiceUtils;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/poi/POIService;

    sput-object v0, Lcom/trans/android/poi/POIUtils;->service:Lcom/trans/android/poi/POIService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/trans/android/poi/EmptyPOIService;

    invoke-direct {v0}, Lcom/trans/android/poi/EmptyPOIService;-><init>()V

    sput-object v0, Lcom/trans/android/poi/POIUtils;->service:Lcom/trans/android/poi/POIService;

    sget-object v0, Lcom/trans/android/poi/POIUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not found POIService"

    invoke-static {v0, v2, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/trans/android/poi/POIUtils;->service:Lcom/trans/android/poi/POIService;

    return-object v0
.end method

.method public static getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;
    .locals 1

    invoke-static {}, Lcom/trans/android/poi/POIUtils;->getService()Lcom/trans/android/poi/POIService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/trans/android/poi/POIService;->getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static isPOIPaint(Ljava/awt/Paint;)Z
    .locals 1

    invoke-static {}, Lcom/trans/android/poi/POIUtils;->getService()Lcom/trans/android/poi/POIService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/trans/android/poi/POIService;->isPOIPaint(Ljava/awt/Paint;)Z

    move-result p0

    return p0
.end method
