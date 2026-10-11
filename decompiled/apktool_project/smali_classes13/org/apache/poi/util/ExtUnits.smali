.class public Lorg/apache/poi/util/ExtUnits;
.super Lorg/apache/poi/util/Units;
.source "SourceFile"


# static fields
.field public static final CM_PER_INCH:F = 2.54f

.field public static final COLON:C = ';'

.field public static final EM_PER_PIXEL:I = 0x10

.field protected static final NUMBER_FORMAT:Ljava/text/DecimalFormat;

.field public static final SPACE:C = ' '

.field public static final TWIPS_PER_INCH:F = 1440.0f

.field public static final UNIT_EM:Ljava/lang/String; = "em"

.field public static final UNIT_PT:Ljava/lang/String; = "pt"

.field public static final UNIT_PX:Ljava/lang/String; = "px"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/util/ExtUnits;->NUMBER_FORMAT:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/util/Units;-><init>()V

    return-void
.end method

.method public static dxaToEM(D)D
    .locals 2

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static dxaToPixel(D)D
    .locals 2

    const-wide v0, 0x4083d80000000000L    # 635.0

    mul-double/2addr p0, v0

    const-wide v0, 0x40c29a8000000000L    # 9525.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static emToPX(D)D
    .locals 2

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static emuToPixel(J)D
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    const-wide v0, 0x40c29a8000000000L    # 9525.0

    div-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public static format(D)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/util/ExtUnits;->NUMBER_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(F)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/poi/util/ExtUnits;->NUMBER_FORMAT:Ljava/text/DecimalFormat;

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatValue(D)F
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static inToEM(D)D
    .locals 2

    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static inToPx(D)D
    .locals 2

    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method public static parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method public static pxToEM(D)D
    .locals 2

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static spacingToIn(D)D
    .locals 2

    const-wide/high16 v0, 0x4082000000000000L    # 576.0

    div-double/2addr p0, v0

    const-wide v0, 0x400451eb80000000L    # 2.5399999618530273

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static toDXA(Ljava/lang/String;)D
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;->newValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static twipsToEM(D)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->twipsToIn(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->inToEM(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static twipsToIn(D)D
    .locals 2

    const-wide v0, 0x4096800000000000L    # 1440.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static twipsToPx(D)D
    .locals 2

    const-wide v0, 0x4096800000000000L    # 1440.0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    mul-double/2addr p0, v0

    return-wide p0
.end method
