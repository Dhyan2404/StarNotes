.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCommentDataFormat"
.end annotation


# instance fields
.field private offData:I

.field private rawData:[B

.field private signature:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

.field private sizeData:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->offData:I

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->rawData:[B

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;[B)[B
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->rawData:[B

    return-object p1
.end method

.method public static synthetic access$200(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->sizeData:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->version:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->sizeData:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->offData:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    const-string v0, "signature"

    new-instance v1, Lcom/sunia/HTREnginev2/bgh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bgh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)V

    const-string v2, "version"

    new-instance v3, Lcom/sunia/HTREnginev2/cgh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/cgh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)V

    const-string v4, "sizeData"

    new-instance v5, Lcom/sunia/HTREnginev2/dgh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/dgh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)V

    const-string v6, "offData"

    new-instance v7, Lcom/sunia/HTREnginev2/egh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/egh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRawData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->rawData:[B

    return-object p0
.end method

.method public getSignature()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->signature:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

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

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->getById(I)Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->signature:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->version:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->sizeData:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->offData:I

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->sizeData:I

    if-ltz p0, :cond_1

    if-ltz p1, :cond_0

    const-wide/16 p0, 0x10

    return-wide p0

    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "offset for emrformat must be > 0"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "size for emrformat must be > 0"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
