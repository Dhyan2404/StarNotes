.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusBrush"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_OBJECT_SIZE:I = 0xf4240


# instance fields
.field private brushBytes:[B

.field private brushType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

.field private final graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->getBrushData(Ljava/util/List;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;

    move-result-object p0

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

    invoke-virtual {p0, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->getBrushData(Ljava/util/List;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V

    return-void
.end method

.method public applyPen(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
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

    invoke-virtual {p0, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->getBrushData(Ljava/util/List;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->applyPen(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V

    return-void
.end method

.method public getBrushBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->brushBytes:[B

    return-object p0
.end method

.method public getBrushData(Ljava/util/List;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->brushType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    iget-object v0, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->constructor:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->getRawData(Ljava/util/List;)[B

    move-result-object p0

    :try_start_0
    new-instance p1, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {p1, p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v1, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    array-length p0, p0

    int-to-long v2, p0

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
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

    new-instance v0, Lcom/sunia/HTREnginev2/ylh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ylh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;)V

    new-instance v1, Lcom/sunia/HTREnginev2/zlh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zlh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;)V

    const-string p0, "graphicsVersion"

    const-string v2, "brushData"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->brushType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-object p0
.end method

.method public getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public getRawData(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)[B"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->getBrushBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;

    invoke-virtual {p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->getBrushBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p4, 0x4

    invoke-virtual {p1, p4}, Lorg/apache/poi/util/LittleEndianInputStream;->mark(I)V

    iget-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p4, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p4

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;->isContinuedRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->reset()V

    const-wide/16 p4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->brushType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    const-wide/16 v0, 0x4

    add-long/2addr p4, v0

    :goto_0
    sub-long p4, p2, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->toIntExact(J)I

    move-result p4

    const p5, 0xf4240

    invoke-static {p1, p4, p5}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->brushBytes:[B

    return-wide p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
