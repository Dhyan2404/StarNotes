.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;
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
    name = "EmfCommentDataMultiformats"
.end annotation


# instance fields
.field private final bounds:Ljava/awt/geom/Rectangle2D;

.field private final formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->bounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->formats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getCommentRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfMultiFormats:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    return-object p0
.end method

.method public getFormats()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->formats:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->getFormats()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/igh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/igh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;)V

    const-string p0, "bounds"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfMultiFormats:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    invoke-static {p1, v1}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->validateCommentType(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;)V

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v1}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v9, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;

    invoke-direct {v9}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;-><init>()V

    int-to-long v7, v0

    move-object v3, v9

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->formats:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->formats:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->access$000(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)I

    move-result p3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v1

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->access$200(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)I

    move-result p3

    int-to-long v1, p3

    invoke-static {}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getMaxRecordLength()I

    move-result p3

    invoke-static {v1, v2, p3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->access$102(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;[B)[B

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->access$100(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p3

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->access$200(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;)I

    move-result p2

    if-ge p3, p2, :cond_2

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p0

    int-to-long p0, p0

    int-to-long p2, v0

    sub-long/2addr p0, p2

    return-wide p0
.end method
