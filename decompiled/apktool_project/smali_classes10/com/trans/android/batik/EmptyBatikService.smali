.class Lcom/trans/android/batik/EmptyBatikService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/batik/BatikService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignment(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Landroid/text/Layout$Alignment;
    .locals 0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBatikAlignmentAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBatikAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBatikPaint(Ljava/awt/Paint;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
