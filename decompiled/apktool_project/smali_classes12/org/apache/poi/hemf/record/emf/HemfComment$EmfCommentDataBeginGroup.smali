.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;
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
    name = "EmfCommentDataBeginGroup"
.end annotation


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getCommentRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfBeginGroup:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;->description:Ljava/lang/String;

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

    new-instance v0, Lcom/sunia/HTREnginev2/zfh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zfh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;)V

    new-instance v1, Lcom/sunia/HTREnginev2/agh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/agh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;)V

    const-string p0, "bounds"

    const-string v2, "description"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p2

    int-to-long p2, p2

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfBeginGroup:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    invoke-static {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->validateCommentType(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;)V

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-static {}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;->description:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr p0, p2

    return-wide p0
.end method
