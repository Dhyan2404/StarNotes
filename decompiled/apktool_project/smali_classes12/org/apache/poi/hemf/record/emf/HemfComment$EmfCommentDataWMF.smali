.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCommentDataWMF"
.end annotation


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;

.field private wmfData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getCommentRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfWMF:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/lgh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lgh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;)V

    new-instance v1, Lcom/sunia/HTREnginev2/mgh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mgh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;)V

    const-string p0, "bounds"

    const-string v2, "wmfData"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWMFData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;->wmfData:[B

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p2

    int-to-long p2, p2

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfWMF:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    invoke-static {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->validateCommentType(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;->wmfData:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;->wmfData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfComment;->access$300()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;->wmfData:[B

    array-length p0, p0

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Emf comment with WMF: expected {} bytes - received only {} bytes."

    invoke-interface {v1, v2, p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr p0, p2

    return-wide p0
.end method
