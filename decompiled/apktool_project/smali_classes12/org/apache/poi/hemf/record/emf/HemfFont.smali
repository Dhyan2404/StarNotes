.class public Lorg/apache/poi/hemf/record/emf/HemfFont;
.super Lorg/apache/poi/hwmf/record/HwmfFont;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;,
        Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontExDv;,
        Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontDetails;
    }
.end annotation


# static fields
.field private static final LOGFONTPANOSE_SIZE:I = 0x140

.field private static final LOGFONT_SIZE:I = 0x5c


# instance fields
.field protected details:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontDetails;

.field protected fullname:Ljava/lang/String;

.field protected script:Ljava/lang/String;

.field protected style:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFont;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emf/HemfFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emf/HemfFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emf/HemfFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfFont;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->fullname:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->style:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->script:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->details:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontDetails;

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lcom/sunia/HTREnginev2/bjh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bjh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFont;)V

    const-string v2, "fullname"

    new-instance v3, Lcom/sunia/HTREnginev2/cjh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/cjh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFont;)V

    const-string v4, "style"

    new-instance v5, Lcom/sunia/HTREnginev2/djh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/djh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFont;)V

    const-string v6, "script"

    new-instance v7, Lcom/sunia/HTREnginev2/ejh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/ejh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFont;)V

    const-string v8, "details"

    new-instance v9, Lcom/sunia/HTREnginev2/fjh;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/fjh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFont;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->height:D

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->width:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->escapement:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->orientation:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->weight:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->italic:Z

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->underline:Z

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->strikeOut:Z

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->charSet:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->outPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->clipPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->quality:Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->pitchAndFamily:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hemf/record/emf/HemfFont;->readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->facename:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1c

    const-wide/16 v5, 0x5c

    cmp-long v5, p2, v5

    if-gtz v5, :cond_3

    return v3

    :cond_3
    const/16 v5, 0x40

    invoke-virtual {p0, p1, v0, v5}, Lorg/apache/poi/hemf/record/emf/HemfFont;->readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;I)I

    move-result v5

    if-eq v5, v4, :cond_a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->fullname:Ljava/lang/String;

    add-int/2addr v3, v5

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hemf/record/emf/HemfFont;->readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;I)I

    move-result v5

    if-eq v5, v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->style:Ljava/lang/String;

    add-int/2addr v3, v5

    const-wide/16 v5, 0x140

    cmp-long p2, p2, v5

    if-nez p2, :cond_5

    new-instance p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;

    invoke-direct {p2}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->details:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontDetails;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int p0, v0

    iput p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->styleSize:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    iput p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->vendorId:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    iput p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->culture:I

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$FamilyType;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$FamilyType;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->familyType:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$FamilyType;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$SerifType;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$SerifType;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->serifStyle:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$SerifType;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$FontWeight;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$FontWeight;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->weight:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$FontWeight;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->proportion:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Proportion;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Contrast;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Contrast;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->contrast:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Contrast;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$StrokeVariation;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$StrokeVariation;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->strokeVariation:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$StrokeVariation;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$ArmStyle;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$ArmStyle;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->armStyle:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$ArmStyle;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Letterform;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Letterform;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->letterform:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$Letterform;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$MidLine;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$MidLine;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->midLine:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$MidLine;

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$XHeight;->values()[Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$XHeight;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p3

    aget-object p0, p0, p3

    iput-object p0, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose;->xHeight:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontPanose$XHeight;

    const-wide/16 p2, 0x2

    invoke-static {p1, p2, p3}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide p0

    cmp-long p2, p0, p2

    if-nez p2, :cond_4

    add-int/lit8 v3, v3, 0x24

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Didn\'t skip 2: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontExDv;

    invoke-direct {p2}, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontExDv;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->details:Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontDetails;

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hemf/record/emf/HemfFont;->readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;I)I

    move-result p3

    if-eq p3, v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFont;->script:Ljava/lang/String;

    add-int/2addr v3, p3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    add-int/lit8 v3, v3, 0x8

    if-ltz p0, :cond_7

    const/16 p3, 0x10

    if-gt p0, p3, :cond_7

    new-array p3, p0, [I

    iput-object p3, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontExDv;->designVector:[I

    :goto_3
    if-ge v2, p0, :cond_6

    iget-object p3, p2, Lorg/apache/poi/hemf/record/emf/HemfFont$LogFontExDv;->designVector:[I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    aput v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    mul-int/lit8 p0, p0, 0x4

    add-int/2addr v3, p0

    :cond_7
    :goto_4
    return v3

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Font script can\'t be determined."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Font style can\'t be determined."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Font fullname can\'t be determined."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Font facename can\'t be determined."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;I)I
    .locals 4

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    mul-int/lit8 p3, p3, 0x2

    new-array v0, p3, [B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    move p1, p0

    :goto_0
    const/4 v1, -0x1

    if-ne p1, p3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    aget-byte p1, v0, p1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eq p1, v1, :cond_3

    if-eq v2, v1, :cond_3

    if-le v3, p3, :cond_2

    goto :goto_1

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/String;

    add-int/lit8 v3, v3, -0x2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, p0, v3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return p3
.end method

.method public setHeight(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->height:D

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->italic:Z

    return-void
.end method

.method public setStrikeOut(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->strikeOut:Z

    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->facename:Ljava/lang/String;

    return-void
.end method

.method public setUnderline(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->underline:Z

    return-void
.end method

.method public setWeight(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->weight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
