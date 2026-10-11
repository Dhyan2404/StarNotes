.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;
.super Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusPathArrowCap"
.end annotation


# static fields
.field private static final FILL_PATH:Lorg/apache/poi/util/BitField;

.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field private static final LINE_PATH:Lorg/apache/poi/util/BitField;


# instance fields
.field private baseCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field private baseInset:D

.field private dataFlags:I

.field private fillPath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

.field private outlinePath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->FILL_PATH:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->LINE_PATH:Lorg/apache/poi/util/BitField;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->FLAGS_MASKS:[I

    const-string v0, "FILL_PATH"

    const-string v1, "LINE_PATH"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;-><init>()V

    return-void
.end method

.method public static synthetic h(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->lambda$init$1(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V

    return-void
.end method

.method private initPath(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/util/BitField;Ljava/util/function/Consumer;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianInputStream;",
            "Lorg/apache/poi/util/BitField;",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->dataFlags:I

    invoke-virtual {p2, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    int-to-long v2, p0

    sget-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->PATH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    const/4 v5, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J

    move-result-wide p0

    const-wide/16 p2, 0x4

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static synthetic j(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->lambda$init$0(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V

    return-void
.end method

.method public static synthetic k(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->lambda$getGenericProperties$2()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->dataFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->baseCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->baseInset:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->fillPath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->outlinePath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    return-object p0
.end method

.method private synthetic lambda$init$0(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->fillPath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    return-void
.end method

.method private synthetic lambda$init$1(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->outlinePath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    return-void
.end method

.method public static synthetic m(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->lambda$getGenericProperties$6()Ljava/lang/Object;

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

    const-string v0, "flags"

    new-instance v1, Lcom/sunia/HTREnginev2/gsh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->FLAGS_MASKS:[I

    sget-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "baseCap"

    new-instance v3, Lcom/sunia/HTREnginev2/hsh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/hsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V

    const-string v4, "baseInset"

    new-instance v5, Lcom/sunia/HTREnginev2/ish;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/ish;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V

    const-string v6, "base"

    new-instance v7, Lcom/sunia/HTREnginev2/jsh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/jsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V

    const-string v8, "fillPath"

    new-instance v9, Lcom/sunia/HTREnginev2/ksh;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/ksh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V

    const-string v10, "outlinePath"

    new-instance v11, Lcom/sunia/HTREnginev2/lsh;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/lsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->dataFlags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->baseCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->baseInset:D

    const-wide/16 v0, 0xc

    invoke-super {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide v2

    add-long/2addr v2, v0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->FILL_PATH:Lorg/apache/poi/util/BitField;

    new-instance v1, Lcom/sunia/HTREnginev2/msh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/msh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->initPath(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/util/BitField;Ljava/util/function/Consumer;)J

    move-result-wide v0

    add-long/2addr v2, v0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->LINE_PATH:Lorg/apache/poi/util/BitField;

    new-instance v1, Lcom/sunia/HTREnginev2/nsh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;->initPath(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/util/BitField;Ljava/util/function/Consumer;)J

    move-result-wide p0

    add-long/2addr v2, p0

    return-wide v2
.end method
