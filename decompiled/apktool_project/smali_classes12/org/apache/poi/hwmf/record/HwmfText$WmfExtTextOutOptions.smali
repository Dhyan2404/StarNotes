.class public Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfExtTextOutOptions"
.end annotation


# static fields
.field private static final ETO_CLIPPED:Lorg/apache/poi/util/BitField;

.field private static final ETO_GLYPH_INDEX:Lorg/apache/poi/util/BitField;

.field private static final ETO_IGNORELANGUAGE:Lorg/apache/poi/util/BitField;

.field private static final ETO_NO_RECT:Lorg/apache/poi/util/BitField;

.field private static final ETO_NUMERICSLATIN:Lorg/apache/poi/util/BitField;

.field private static final ETO_NUMERICSLOCAL:Lorg/apache/poi/util/BitField;

.field private static final ETO_OPAQUE:Lorg/apache/poi/util/BitField;

.field private static final ETO_PDY:Lorg/apache/poi/util/BitField;

.field private static final ETO_REVERSE_INDEX_MAP:Lorg/apache/poi/util/BitField;

.field private static final ETO_RTLREADING:Lorg/apache/poi/util/BitField;

.field private static final ETO_SMALL_CHARS:Lorg/apache/poi/util/BitField;

.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;


# instance fields
.field protected flags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_OPAQUE:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_CLIPPED:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_GLYPH_INDEX:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_RTLREADING:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_NO_RECT:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_SMALL_CHARS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x400

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_NUMERICSLOCAL:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_NUMERICSLATIN:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_IGNORELANGUAGE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_PDY:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x10000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_REVERSE_INDEX_MAP:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->FLAGS_MASKS:[I

    const-string v1, "OPAQUE"

    const-string v2, "CLIPPED"

    const-string v3, "GLYPH_INDEX"

    const-string v4, "RTLREADING"

    const-string v5, "NO_RECT"

    const-string v6, "SMALL_CHARS"

    const-string v7, "NUMERICSLOCAL"

    const-string v8, "NUMERICSLATIN"

    const-string v9, "IGNORELANGUAGE"

    const-string v10, "PDY"

    const-string v11, "REVERSE_INDEX_MAP"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->FLAGS_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x10
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x10000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/cai;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;)V

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->FLAGS_MASKS:[I

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v0, "flags"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->flags:I

    const/4 p0, 0x2

    return p0
.end method

.method public initInt(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->flags:I

    const/4 p0, 0x4

    return p0
.end method

.method public isClipped()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_CLIPPED:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isOpaque()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_OPAQUE:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isYDisplaced()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->ETO_PDY:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;->flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method
