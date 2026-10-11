.class public final Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "SourceFile"


# static fields
.field public static final PLAIN_TOKEN_SIZE:I = 0x8

.field private static final RESERVED_FIELD_LEN:I = 0x7

.field public static final sid:B = 0x20t


# instance fields
.field private final _arrayValues:[Ljava/lang/Object;

.field private final _nColumns:I

.field private final _nRows:I

.field private final _reserved0Int:I

.field private final _reserved1Short:I

.field private final _reserved2Byte:I


# direct methods
.method public constructor <init>(IIIII[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    .line 3
    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    .line 4
    iput p3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    .line 5
    iput p4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    .line 6
    iput p5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 7
    invoke-virtual {p6}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    .line 9
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    .line 10
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    .line 11
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    .line 12
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    .line 13
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 14
    iget-object p1, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([[Ljava/lang/Object;)V
    .locals 9

    .line 15
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    const/4 v0, 0x0

    .line 16
    aget-object v1, p1, v0

    array-length v1, v1

    .line 17
    array-length v2, p1

    int-to-short v3, v1

    .line 18
    iput v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    int-to-short v4, v2

    .line 19
    iput v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    mul-int/2addr v3, v4

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 21
    aget-object v5, p1, v4

    move v6, v0

    :goto_1
    if-ge v6, v1, :cond_0

    .line 22
    invoke-virtual {p0, v6, v4}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v7

    aget-object v8, v5, v6

    aput-object v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23
    :cond_1
    iput-object v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    .line 24
    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    .line 25
    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    .line 26
    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getConstantText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "TRUE"

    goto :goto_0

    :cond_2
    const-string p0, "FALSE"

    :goto_0
    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected constant class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Array item cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string p0, "#values#uninitialised#"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->toFormulaString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    move-result-object p0

    return-object p0
.end method

.method public getColumnCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    return p0
.end method

.method public getDefaultOperandClass()B
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

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

    const-string v0, "reserved0"

    new-instance v1, Lcom/sunia/HTREnginev2/ff;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ff;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V

    const-string v2, "reserved1"

    new-instance v3, Lcom/sunia/HTREnginev2/gf;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/gf;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V

    const-string v4, "reserved2"

    new-instance v5, Lcom/sunia/HTREnginev2/hf;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/hf;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V

    const-string v6, "columnCount"

    new-instance v7, Lcom/sunia/HTREnginev2/if;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/if;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V

    const-string v8, "rowCount"

    new-instance v9, Lcom/sunia/HTREnginev2/jf;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/jf;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V

    const-string v10, "arrayValues"

    new-instance v11, Lcom/sunia/HTREnginev2/kf;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/kf;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRowCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0xb

    return p0
.end method

.method public getTokenArrayValues()[[Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    move v4, v1

    :goto_1
    iget v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "array values not read yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValueIndex(II)I
    .locals 4

    const-string v0, ")"

    const-string v1, ") is outside the allowed range (0.."

    if-ltz p1, :cond_1

    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge p1, v2, :cond_1

    if-ltz p2, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge p2, v3, :cond_0

    mul-int/2addr p2, v2

    add-int/2addr p2, p1

    return p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified rowIx ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified colIx ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isBaseToken()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v3, v1

    :goto_1
    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge v3, v4, :cond_2

    if-lez v3, :cond_1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getConstantText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method

.method public writeTokenValueBytes(Lorg/apache/poi/util/LittleEndianOutput;)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x3

    return p0
.end method
