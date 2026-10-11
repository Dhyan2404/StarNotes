.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusUnknownData"
.end annotation


# instance fields
.field private final graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

.field private objectDataBytes:[B

.field private objectType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->objectDataBytes:[B

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    return-void
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

    new-instance v0, Lcom/sunia/HTREnginev2/krh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/krh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;)V

    new-instance v1, Lcom/sunia/HTREnginev2/lrh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lrh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;)V

    const-string p0, "graphicsVersion"

    const-string v2, "objectDataBytes"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->objectType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object p0
.end method

.method public getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->objectType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    iget-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p4, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p4

    sub-long p4, p2, p4

    long-to-int p4, p4

    const p5, 0x2faf080

    invoke-static {p1, p4, p5}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusUnknownData;->objectDataBytes:[B

    return-wide p2
.end method
