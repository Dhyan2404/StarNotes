.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;
.super Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSelectObject;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfSelectObject"
.end annotation


# static fields
.field private static final IDX_MASKS:[I

.field private static final IDX_NAMES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const/high16 v0, -0x80000000

    const v1, -0x7fffffed

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;->IDX_MASKS:[I

    const-string v1, "WHITE_BRUSH"

    const-string v2, "LTGRAY_BRUSH"

    const-string v3, "GRAY_BRUSH"

    const-string v4, "DKGRAY_BRUSH"

    const-string v5, "BLACK_BRUSH"

    const-string v6, "NULL_BRUSH"

    const-string v7, "WHITE_PEN"

    const-string v8, "BLACK_PEN"

    const-string v9, "NULL_PEN"

    const-string v10, "INVALID"

    const-string v11, "OEM_FIXED_FONT"

    const-string v12, "ANSI_FIXED_FONT"

    const-string v13, "ANSI_VAR_FONT"

    const-string v14, "SYSTEM_FONT"

    const-string v15, "DEVICE_DEFAULT_FONT"

    const-string v16, "DEFAULT_PALETTE"

    const-string v17, "SYSTEM_FIXED_FONT"

    const-string v18, "DEFAULT_GUI_FONT"

    const-string v19, "DC_BRUSH"

    const-string v20, "DC_PEN"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;->IDX_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSelectObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->selectObject:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

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

    new-instance v0, Lcom/sunia/HTREnginev2/phh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/phh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;)V

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;->IDX_MASKS:[I

    sget-object v1, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;->IDX_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v0, "objectIndex"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSelectObject;->objectIndex:I

    const-wide/16 p0, 0x4

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
