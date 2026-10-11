.class public Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfSetTextAlign"
.end annotation


# static fields
.field private static final ALIGN_CENTER:I = 0x3

.field private static final ALIGN_LEFT:I = 0x0

.field private static final ALIGN_MASK:Lorg/apache/poi/util/BitField;

.field private static final ALIGN_RIGHT:I = 0x1

.field private static final TA_RTLREADING:Lorg/apache/poi/util/BitField;

.field private static final TA_UPDATECP:Lorg/apache/poi/util/BitField;

.field private static final VALIGN_BASELINE:I = 0x3

.field private static final VALIGN_BOTTOM:I = 0x1

.field private static final VALIGN_MASK:Lorg/apache/poi/util/BitField;

.field private static final VALIGN_TOP:I


# instance fields
.field protected textAlignmentMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->TA_UPDATECP:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->TA_RTLREADING:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->ALIGN_MASK:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x18

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->VALIGN_MASK:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getVAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getVAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object p0

    return-object p0
.end method

.method private getAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextVerticalAlignment:[I

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getVAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->RIGHT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->LEFT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->CENTER:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-object p0
.end method

.method private getAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->ALIGN_MASK:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->textAlignmentMode:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->LEFT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->CENTER:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->RIGHT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-object p0
.end method

.method private getVAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment:[I

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->TOP:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BOTTOM:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BASELINE:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0
.end method

.method private getVAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->VALIGN_MASK:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->textAlignmentMode:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->TOP:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BASELINE:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BOTTOM:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTextAlignLatin(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;)V

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getVAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTextVAlignLatin(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;)V

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTextAlignAsian(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;)V

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->getVAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTextVAlignAsian(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;)V

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "align"

    new-instance v1, Lcom/sunia/HTREnginev2/dai;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)V

    const-string v2, "valign"

    new-instance v3, Lcom/sunia/HTREnginev2/eai;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/eai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)V

    const-string v4, "alignAsian"

    new-instance v5, Lcom/sunia/HTREnginev2/fai;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/fai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)V

    const-string v6, "valignAsian"

    new-instance v7, Lcom/sunia/HTREnginev2/gai;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/gai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->setTextAlign:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;->textAlignmentMode:I

    const/4 p0, 0x2

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
