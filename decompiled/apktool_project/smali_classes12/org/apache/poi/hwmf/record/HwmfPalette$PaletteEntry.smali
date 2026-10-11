.class public Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaletteEntry"
.end annotation


# static fields
.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field private static final PC_EXPLICIT:Lorg/apache/poi/util/BitField;

.field private static final PC_NOCOLLAPSE:Lorg/apache/poi/util/BitField;

.field private static final PC_RESERVED:Lorg/apache/poi/util/BitField;


# instance fields
.field private colorRef:Ljava/awt/Color;

.field private values:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->PC_RESERVED:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->PC_EXPLICIT:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->PC_NOCOLLAPSE:Lorg/apache/poi/util/BitField;

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->FLAGS_MASKS:[I

    const-string v0, "EXPLICIT"

    const-string v1, "NOCOLLAPSE"

    const-string v2, "RESERVED"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->PC_RESERVED:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->values:I

    .line 3
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->colorRef:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget v0, p1, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->values:I

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->values:I

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->colorRef:Ljava/awt/Color;

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->colorRef:Ljava/awt/Color;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->values:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getColorRef()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->colorRef:Ljava/awt/Color;

    return-object p0
.end method

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

    new-instance v0, Lcom/sunia/HTREnginev2/k6i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/k6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;)V

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->FLAGS_MASKS:[I

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/l6i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;)V

    const-string p0, "flags"

    const-string v2, "color"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->values:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p1

    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, p1, v1, v0}, Ljava/awt/Color;-><init>(III)V

    iput-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->colorRef:Ljava/awt/Color;

    const/4 p0, 0x4

    return p0
.end method

.method public isExplicit()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->PC_EXPLICIT:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->values:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isNoCollapse()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->PC_NOCOLLAPSE:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->values:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isReserved()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->PC_RESERVED:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;->values:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method
