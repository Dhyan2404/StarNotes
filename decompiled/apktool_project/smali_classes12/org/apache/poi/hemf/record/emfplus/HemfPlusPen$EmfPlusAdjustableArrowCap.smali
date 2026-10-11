.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;
.super Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusAdjustableArrowCap"
.end annotation


# instance fields
.field private height:D

.field private isFilled:Z

.field private middleInset:D

.field private width:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;-><init>()V

    return-void
.end method

.method public static synthetic h(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->width:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->height:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->middleInset:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->isFilled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

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

    const-string v0, "width"

    new-instance v1, Lcom/sunia/HTREnginev2/urh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/urh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)V

    const-string v2, "height"

    new-instance v3, Lcom/sunia/HTREnginev2/vrh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/vrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)V

    const-string v4, "middleInset"

    new-instance v5, Lcom/sunia/HTREnginev2/wrh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/wrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)V

    const-string v6, "isFilled"

    new-instance v7, Lcom/sunia/HTREnginev2/xrh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/xrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)V

    const-string v8, "base"

    new-instance v9, Lcom/sunia/HTREnginev2/yrh;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/yrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->width:D

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->height:D

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->middleInset:D

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;->isFilled:Z

    const-wide/16 v0, 0x10

    invoke-super {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method
