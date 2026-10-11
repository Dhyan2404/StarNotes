.class public final Lorg/apache/poi/ss/formula/ptg/AttrPtg;
.super Lorg/apache/poi/ss/formula/ptg/ControlPtg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/ptg/AttrPtg$SpaceType;
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x4

.field public static final SUM:Lorg/apache/poi/ss/formula/ptg/AttrPtg;

.field private static final baxcel:Lorg/apache/poi/util/BitField;

.field private static final optiChoose:Lorg/apache/poi/util/BitField;

.field private static final optiIf:Lorg/apache/poi/util/BitField;

.field private static final optiSkip:Lorg/apache/poi/util/BitField;

.field private static final optiSum:Lorg/apache/poi/util/BitField;

.field private static final semiVolatile:Lorg/apache/poi/util/BitField;

.field public static final sid:B = 0x19t

.field private static final space:Lorg/apache/poi/util/BitField;


# instance fields
.field private final _chooseFuncOffset:I

.field private final _data:S

.field private final _jumpTable:[I

.field private final _options:B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->semiVolatile:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiChoose:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->baxcel:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    sput-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    return-void
.end method

.method private constructor <init>(II[II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    int-to-byte p1, p1

    .line 12
    iput-byte p1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    int-to-short p1, p2

    .line 13
    iput-short p1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    .line 14
    iput-object p3, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    .line 15
    iput p4, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    .line 8
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    :goto_1
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->lambda$getGenericProperties$2()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static createIf(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    return-object v0
.end method

.method public static createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    return-object v0
.end method

.method public static createSpace(II)Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    new-instance p1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p1, v0, p0, v1, v2}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    return-object p1
.end method

.method public static getSumSingle()Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    return-object v0
.end method

.method private isBaxcel()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->baxcel:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Number;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->copy()Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->copy()Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object p0

    return-object p0
.end method

.method public getChooseFuncOffset()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not tAttrChoose"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getData()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "volatile"

    new-instance v2, Lcom/sunia/HTREnginev2/ug;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/ug;-><init>(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)V

    const-string v3, "options"

    new-instance v4, Lcom/sunia/HTREnginev2/vg;

    invoke-direct {v4, v0}, Lcom/sunia/HTREnginev2/vg;-><init>(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)V

    const/4 v5, 0x7

    new-array v6, v5, [Lorg/apache/poi/util/BitField;

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->semiVolatile:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiChoose:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    sget-object v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->baxcel:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    sget-object v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    aput-object v8, v6, v7

    const-string v9, "SEMI_VOLATILE"

    const-string v10, "OPTI_IF"

    const-string v11, "OPTI_CHOOSE"

    const-string v12, "OPTI_SKIP"

    const-string v13, "OPTI_SUM"

    const-string v14, "BAXCEL"

    const-string v15, "SPACE"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v4

    const-string v6, "space_count"

    new-instance v7, Lcom/sunia/HTREnginev2/wg;

    invoke-direct {v7, v0}, Lcom/sunia/HTREnginev2/wg;-><init>(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)V

    const-string v8, "space_type"

    new-instance v9, Lcom/sunia/HTREnginev2/xg;

    invoke-direct {v9, v0}, Lcom/sunia/HTREnginev2/xg;-><init>(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)V

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    const-string v10, "SPACE_BEFORE"

    const-string v11, "CR_BEFORE"

    const-string v12, "SPACE_BEFORE_OPEN_PAREN"

    const-string v13, "CR_BEFORE_OPEN_PAREN"

    const-string v14, "SPACE_BEFORE_CLOSE_PAREN"

    const-string v15, "CR_BEFORE_CLOSE_PAREN"

    const-string v16, "SPACE_AFTER_EQUALITY"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v0, v5}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v9

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public getJumpTable()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getNumberOfOperands()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method public getSize()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public getType()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isOptimizedChoose()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiChoose:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isOptimizedIf()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isSemiVolatile()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->semiVolatile:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isSkip()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isSpace()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isSum()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 3

    .line 8
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->semiVolatile:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ATTR(semiVolatile)"

    return-object p0

    .line 9
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "IF"

    return-object p0

    .line 10
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiChoose:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "CHOOSE"

    return-object p0

    .line 11
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    return-object v1

    .line 12
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "SUM"

    return-object p0

    .line 13
    :cond_4
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->baxcel:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "ATTR(baxcel)"

    return-object p0

    .line 14
    :cond_5
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v1

    :cond_6
    const-string p0, "UNKNOWN ATTRIBUTE"

    return-object p0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    aget-object p0, p1, v1

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const-string v2, ")"

    const-string v3, "("

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    iget-byte v4, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v4}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x19

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    :cond_1
    return-void
.end method
