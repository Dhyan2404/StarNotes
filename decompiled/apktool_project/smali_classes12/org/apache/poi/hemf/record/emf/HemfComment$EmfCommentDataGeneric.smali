.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;
.implements Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCommentDataGeneric"
.end annotation


# instance fields
.field private charsetProvider:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private privateData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/hgh;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hgh;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->charsetProvider:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic a()Ljava/nio/charset/Charset;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->lambda$new$0()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$0()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public getCommentRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfGeneric:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/fgh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/fgh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ggh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ggh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;)V

    const-string p0, "privateData"

    const-string v2, "privateDataAsString"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->privateData:[B

    return-object p0
.end method

.method public getPrivateDataAsString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->privateData:[B

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->charsetProvider:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getMaxRecordLength()I

    move-result v0

    invoke-static {p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->privateData:[B

    invoke-virtual {p1, p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->privateData:[B

    array-length p0, p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setCharsetProvider(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->charsetProvider:Ljava/util/function/Supplier;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
