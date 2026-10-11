.class public Lcom/trans/android/batik/BatikUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatikUtils"

.field private static service:Lcom/trans/android/batik/BatikService;


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

.method public static getAlignment(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Landroid/text/Layout$Alignment;
    .locals 1

    invoke-static {}, Lcom/trans/android/batik/BatikUtils;->getService()Lcom/trans/android/batik/BatikService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/trans/android/batik/BatikService;->getAlignment(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Landroid/text/Layout$Alignment;

    move-result-object p0

    return-object p0
.end method

.method private static getService()Lcom/trans/android/batik/BatikService;
    .locals 3

    sget-object v0, Lcom/trans/android/batik/BatikUtils;->service:Lcom/trans/android/batik/BatikService;

    if-nez v0, :cond_0

    const-class v0, Lcom/trans/android/batik/BatikService;

    invoke-static {v0}, Lcom/trans/android/service/ServiceUtils;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/batik/BatikService;

    sput-object v0, Lcom/trans/android/batik/BatikUtils;->service:Lcom/trans/android/batik/BatikService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/trans/android/batik/EmptyBatikService;

    invoke-direct {v0}, Lcom/trans/android/batik/EmptyBatikService;-><init>()V

    sput-object v0, Lcom/trans/android/batik/BatikUtils;->service:Lcom/trans/android/batik/BatikService;

    sget-object v0, Lcom/trans/android/batik/BatikUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not found BatikService"

    invoke-static {v0, v2, v1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/trans/android/batik/BatikUtils;->service:Lcom/trans/android/batik/BatikService;

    return-object v0
.end method

.method public static getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;
    .locals 1

    invoke-static {}, Lcom/trans/android/batik/BatikUtils;->getService()Lcom/trans/android/batik/BatikService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/trans/android/batik/BatikService;->getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method

.method public static isBatikAlignmentAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Z
    .locals 1

    invoke-static {}, Lcom/trans/android/batik/BatikUtils;->getService()Lcom/trans/android/batik/BatikService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/trans/android/batik/BatikService;->isBatikAlignmentAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Z

    move-result p0

    return p0
.end method

.method public static isBatikAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Z
    .locals 1

    invoke-static {}, Lcom/trans/android/batik/BatikUtils;->getService()Lcom/trans/android/batik/BatikService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/trans/android/batik/BatikService;->isBatikAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Z

    move-result p0

    return p0
.end method

.method public static isBatikPaint(Ljava/awt/Paint;)Z
    .locals 1

    invoke-static {}, Lcom/trans/android/batik/BatikUtils;->getService()Lcom/trans/android/batik/BatikService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/trans/android/batik/BatikService;->isBatikPaint(Ljava/awt/Paint;)Z

    move-result p0

    return p0
.end method
