.class public Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfClipPrecision"
.end annotation


# static fields
.field private static final CHARACTER_PRECIS:Lorg/apache/poi/util/BitField;

.field private static final DEFAULT_PRECIS:Lorg/apache/poi/util/BitField;

.field private static final DFA_DISABLE:Lorg/apache/poi/util/BitField;

.field private static final EMBEDDED:Lorg/apache/poi/util/BitField;

.field private static final FLAG_MASKS:[I

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field private static final LH_ANGLES:Lorg/apache/poi/util/BitField;

.field private static final STROKE_PRECIS:Lorg/apache/poi/util/BitField;

.field private static final TT_ALWAYS:Lorg/apache/poi/util/BitField;


# instance fields
.field private flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->DEFAULT_PRECIS:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->CHARACTER_PRECIS:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->STROKE_PRECIS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->LH_ANGLES:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->TT_ALWAYS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->DFA_DISABLE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->EMBEDDED:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->FLAG_MASKS:[I

    const-string v1, "CHARACTER_PRECIS"

    const-string v2, "STROKE_PRECIS"

    const-string v3, "LH_ANGLES"

    const-string v4, "TT_ALWAYS"

    const-string v5, "DFA_DISABLE"

    const-string v6, "EMBEDDED"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->FLAG_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/y4i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/y4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;)V

    new-instance v1, Lcom/sunia/HTREnginev2/z4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;)V

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->FLAG_MASKS:[I

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->FLAG_NAMES:[Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v1, "isDefaultPrecision"

    const-string v2, "flag"

    invoke-static {v1, v0, v2, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    const/4 p0, 0x1

    return p0
.end method

.method public isCharacterPrecision()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->CHARACTER_PRECIS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultPrecision()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->DEFAULT_PRECIS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFontAssociated()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->DFA_DISABLE:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLeftHandAngles()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->LH_ANGLES:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isStrokePrecision()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->STROKE_PRECIS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isTrueTypeAlways()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->TT_ALWAYS:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useEmbeddedFont()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->EMBEDDED:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->flag:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method
