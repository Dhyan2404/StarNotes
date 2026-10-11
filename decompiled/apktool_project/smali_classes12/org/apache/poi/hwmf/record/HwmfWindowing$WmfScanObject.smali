.class public Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfWindowing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfScanObject"
.end annotation


# instance fields
.field private bottom:I

.field private count:I

.field private count2:I

.field private left_scanline:[I

.field private right_scanline:[I

.field private top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->top:I

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->bottom:I

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->count:I

    return p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)[I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->left_scanline:[I

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)[I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->right_scanline:[I

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->count:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->top:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->left_scanline:[I

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->right_scanline:[I

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->count2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "count"

    new-instance v1, Lcom/sunia/HTREnginev2/dbi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dbi;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)V

    const-string v2, "top"

    new-instance v3, Lcom/sunia/HTREnginev2/ebi;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ebi;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)V

    const-string v4, "bottom"

    new-instance v5, Lcom/sunia/HTREnginev2/fbi;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/fbi;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)V

    const-string v6, "left_scanline"

    new-instance v7, Lcom/sunia/HTREnginev2/gbi;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/gbi;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)V

    const-string v8, "right_scanline"

    new-instance v9, Lcom/sunia/HTREnginev2/hbi;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/hbi;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)V

    const-string v10, "count2"

    new-instance v11, Lcom/sunia/HTREnginev2/ibi;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/ibi;-><init>(Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)I
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->count:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->top:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->bottom:I

    iget v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->count:I

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->left_scanline:[I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->right_scanline:[I

    const/4 v0, 0x6

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->count:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->left_scanline:[I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->right_scanline:[I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfWindowing$WmfScanObject;->count2:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
